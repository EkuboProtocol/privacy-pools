// Positive and negative regression tests for the withdrawal relation in
// association.circom. Requires `circom` (>= 2.2.0) on PATH.
//
//   cd circuits/test && npm install && npm test
//
// Every case builds a witness with the compiled witness generator and then
// re-checks it against the R1CS with snarkjs, so a case only counts as
// ACCEPTED when the full constraint system is satisfied.
import { buildPoseidon } from "circomlibjs";
import * as snarkjs from "snarkjs";
import fs from "node:fs";
import os from "node:os";
import path from "node:path";
import { spawnSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const here = path.dirname(fileURLToPath(import.meta.url));
const out = fs.mkdtempSync(path.join(os.tmpdir(), "association-test-"));
const circuit = "association_test";
const r1cs = path.join(out, `${circuit}.r1cs`);
const wasmDir = path.join(out, `${circuit}_js`);
const wasm = path.join(wasmDir, `${circuit}.wasm`);

const compile = spawnSync("circom", [path.join(here, `${circuit}.circom`), "--r1cs", "--wasm", "-o", out], { encoding: "utf8" });
if (compile.status !== 0) {
  console.error(compile.stdout, compile.stderr);
  process.exit(1);
}

// BN254 scalar field order.
const p = 21888242871839275222246405745257275088548364400416034343698204186575808495617n;
const mod = (x) => ((x % p) + p) % p;

const poseidon = await buildPoseidon();
const F = poseidon.F;
const H = (a, b) => F.toObject(poseidon([a, b]));
const commitmentHash = (secret, nullifier, amount) => H(H(secret, nullifier), amount);

const base = {
  secret: 123n,
  nullifier: 321n,
  recipient: 0x1234n,
  pathElement: 99n,
  pathIndex: 0n,
  refundSecret: 456n,
  refundNullifier: 654n,
};

// Builds a witness input where every value other than the overrides is honest.
// `refund` and `fee` may be negative to express the wrapped field elements
// p - k that an attacker can supply.
function input(overrides) {
  const v = { ...base, ...overrides };
  const commitment = commitmentHash(v.secret, v.nullifier, v.commitmentAmount);
  const [l, r] = v.pathIndex === 0n ? [commitment, v.pathElement] : [v.pathElement, commitment];
  const refund = mod(v.refund);
  return {
    root: H(l, r),
    nullifierHash: H(v.nullifier, v.nullifier),
    recipient: v.recipient,
    fee: mod(v.fee),
    refund,
    refundCommitmentHash: v.refundCommitmentHash ?? commitmentHash(v.refundSecret, v.refundNullifier, refund),
    refundSecret: v.refundSecret,
    refundNullifier: v.refundNullifier,
    commitmentAmount: v.commitmentAmount,
    nullifier: v.nullifier,
    secret: v.secret,
    pathElements: [v.pathElement],
    pathIndices: [v.pathIndex],
    amount: v.amount ?? mod(v.commitmentAmount - v.refund),
  };
}

async function accepted(name, signals) {
  const json = Object.fromEntries(Object.entries(signals).map(([k, v]) => [k, Array.isArray(v) ? v.map(String) : String(v)]));
  const inPath = path.join(out, `${name}.json`);
  const wtns = path.join(out, `${name}.wtns`);
  fs.writeFileSync(inPath, JSON.stringify(json));
  const gen = spawnSync("node", [path.join(wasmDir, "generate_witness.js"), wasm, inPath, wtns], { encoding: "utf8" });
  if (gen.status !== 0) return false;
  const quiet = { debug() {}, info() {}, warn() {}, error() {} };
  return snarkjs.wtns.check(r1cs, wtns, quiet);
}

const cases = [
  // Honest witnesses.
  ["honest withdrawal with refund", true, input({ commitmentAmount: 100n, refund: 30n, fee: 1n })],
  ["honest withdrawal without refund", true, input({ commitmentAmount: 100n, refund: 0n, fee: 1n })],
  ["honest withdrawal with zero fee", true, input({ commitmentAmount: 100n, refund: 0n, fee: 0n })],
  ["honest large in-range amounts", true, input({ commitmentAmount: (1n << 128n) - 1n, refund: 1n << 127n, fee: 1n << 100n })],
  ["honest amounts just below the 252-bit bound", true, input({ commitmentAmount: (1n << 252n) - 1n, refund: (1n << 252n) - 2n, fee: (1n << 252n) - 2n })],
  ["honest right-hand merkle path", true, input({ commitmentAmount: 100n, refund: 30n, fee: 1n, pathIndex: 1n })],

  // Plain relation violations.
  ["refund equal to commitment amount", false, input({ commitmentAmount: 100n, refund: 100n, fee: 1n })],
  ["refund above commitment amount", false, input({ commitmentAmount: 100n, refund: 101n, fee: 1n })],
  ["fee equal to commitment amount", false, input({ commitmentAmount: 100n, refund: 0n, fee: 100n })],
  ["amount not equal to commitment minus refund", false, input({ commitmentAmount: 100n, refund: 30n, fee: 1n, amount: 71n })],

  // Wrapped field elements must not pass the comparisons (issue #7).
  ["wrapped refund and fee (reported shape)", false, input({ commitmentAmount: 8n, refund: -14n, fee: -30n })],
  ["wrapped refund with honest fee", false, input({ commitmentAmount: 8n, refund: -(1n << 128n), fee: 1n })],
  ["wrapped fee with honest refund", false, input({ commitmentAmount: 8n, refund: 1n, fee: -1n })],
  ["refund of exactly 2^252", false, input({ commitmentAmount: 8n, refund: 1n << 252n, fee: 1n })],
  ["fee of exactly 2^252", false, input({ commitmentAmount: 8n, refund: 1n, fee: 1n << 252n })],
  ["commitment amount of exactly 2^252", false, input({ commitmentAmount: 1n << 252n, refund: 1n, fee: 1n })],
  ["commitment amount wrapped to p - 1", false, input({ commitmentAmount: p - 1n, refund: 1n, fee: 1n })],

  // The refund leaf must commit to exactly the refund amount.
  ["refund commitment to a different amount", false, input({ commitmentAmount: 100n, refund: 30n, fee: 1n, refundCommitmentHash: commitmentHash(456n, 654n, 31n) })],
  ["refund commitment with different secret", false, input({ commitmentAmount: 100n, refund: 30n, fee: 1n, refundCommitmentHash: commitmentHash(457n, 654n, 30n) })],
  ["zero refund commitment hash", false, input({ commitmentAmount: 100n, refund: 0n, fee: 1n, refundCommitmentHash: 0n })],

  // Unrelated commitment data.
  ["wrong nullifier hash", false, { ...input({ commitmentAmount: 100n, refund: 30n, fee: 1n }), nullifierHash: 1n }],
  ["wrong root", false, { ...input({ commitmentAmount: 100n, refund: 30n, fee: 1n }), root: 1n }],
];

let failures = 0;
for (const [name, expected, signals] of cases) {
  const got = await accepted(name.replace(/[^a-z0-9]+/gi, "_"), signals);
  const ok = got === expected;
  if (!ok) failures++;
  console.log(`${ok ? "ok  " : "FAIL"}  ${got ? "accepted" : "rejected"}  ${name}`);
}
fs.rmSync(out, { recursive: true, force: true });
console.log(failures === 0 ? `all ${cases.length} cases passed` : `${failures} of ${cases.length} cases failed`);
process.exit(failures === 0 ? 0 : 1);
