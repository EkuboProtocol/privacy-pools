use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0xc95c2410ef27bc34ee3bdc21,
            limb1: 0x43c40bad0d87f46337e9bbfa,
            limb2: 0x255f12e4b02b5633,
        },
        w1: u288 {
            limb0: 0xdbdce5dbf399440f9299358c,
            limb1: 0xae1bd1da65d19b3d26e9b752,
            limb2: 0xc9e9506f8794e6d,
        },
        w2: u288 {
            limb0: 0x20fb83431a6115be40cd1d55,
            limb1: 0xba68cd0cf5e6c0f809071eca,
            limb2: 0x7412a8becc50790,
        },
        w3: u288 {
            limb0: 0x334eac202923db95865ff30b,
            limb1: 0x25dfc099732233914aa4e720,
            limb2: 0x101db6bdf59af4f6,
        },
        w4: u288 {
            limb0: 0xf94ff45d77cfa9432a5772e3,
            limb1: 0xbdef63227f3bee8a3d7926b6,
            limb2: 0x4414f41b5dc5d1f,
        },
        w5: u288 {
            limb0: 0x4e99740c955cc09f141d30dc,
            limb1: 0xf2c66b7dffb5f1da1404bc50,
            limb2: 0xb8abcb1d923056b,
        },
        w6: u288 {
            limb0: 0x13f24dc6da97795ce3b8e9b5,
            limb1: 0x3fc21ace2bea151e37c338d6,
            limb2: 0xd79426a72e75c2a,
        },
        w7: u288 {
            limb0: 0x7197ab33176f09a34db51fe3,
            limb1: 0x64046a6d0f11e8fbd982289,
            limb2: 0x27067869325aff79,
        },
        w8: u288 {
            limb0: 0xf798b6ed6785da4610ab4d70,
            limb1: 0x15896e5d0e2429e2edf3b64c,
            limb2: 0x83d84830a136ec6,
        },
        w9: u288 {
            limb0: 0x6a046808980120209416986f,
            limb1: 0xac7ba4df94e60153c3ae57f0,
            limb2: 0x250b221262c7b73a,
        },
        w10: u288 {
            limb0: 0xec1c714603567db7b6ee1324,
            limb1: 0xb34e50f368289a56eef70652,
            limb2: 0x5efe10827c4c267,
        },
        w11: u288 {
            limb0: 0xbe21c7012bda7a2c056c66e6,
            limb1: 0x83157b40a68eec94e29aace4,
            limb2: 0x1da87807e1bf4944,
        },
    },
    gamma_g2: G2Point {
        x0: u384 {
            limb0: 0xf75edadd46debd5cd992f6ed,
            limb1: 0x426a00665e5c4479674322d4,
            limb2: 0x1800deef121f1e76,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x35a9e71297e485b7aef312c2,
            limb1: 0x7260bfb731fb5d25f1aa4933,
            limb2: 0x198e9393920d483a,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xc43d37b4ce6cc0166fa7daa,
            limb1: 0x4aab71808dcb408fe3d1e769,
            limb2: 0x12c85ea5db8c6deb,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x70b38ef355acdadcd122975b,
            limb1: 0xec9e99ad690c3395bc4b3133,
            limb2: 0x90689d0585ff075,
            limb3: 0x0,
        },
    },
    delta_g2: G2Point {
        x0: u384 {
            limb0: 0x2d21384ad71d3110455bdc3f,
            limb1: 0x7fff426269505ef216f26016,
            limb2: 0x21bd4319ccc3356f,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x23e5876e28d6719b19cd8e02,
            limb1: 0xab6280994d9e50499ebcb437,
            limb2: 0x3bf64d420d66a74,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x2601c5c0fa73a3362e6c56e6,
            limb1: 0xded4c8264883c8dcd10ce573,
            limb2: 0x166b76398230e24e,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x50ca974359f0a05b301cd934,
            limb1: 0x620be20b7c22d0fdc3ff6a94,
            limb2: 0x21c04345949e646c,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0xef81cb5bce5e9d04b4bb663b,
            limb1: 0xdcc880963e56b93a66cede6d,
            limb2: 0xc3b2fa0a7d8d086,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xff2104d5ebb7cefb643ceed9,
            limb1: 0x32ba95ae7b977fd416e55282,
            limb2: 0x1116573508efff76,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x503969d49cfe014dd23fc1c0,
            limb1: 0xda8a71842a9a165b5b3b8be9,
            limb2: 0x903151f79f0034f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1485f3e400d75092b6210902,
            limb1: 0xe967f24a9fa51a55dbbfc2a8,
            limb2: 0x1d58ba953812bc7b,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x56cb65c0ae0fc2927554349,
            limb1: 0x40110caa3a3540c9a1214c63,
            limb2: 0x27c99b66467604ab,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x7f3825d5f7319aec59f14c45,
            limb1: 0x2dfee37e48e78ee2f03dcdc3,
            limb2: 0x2bb49cade74ab2ff,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf863ecbe80bc76478e5ec268,
            limb1: 0x9c58109c87ae3767421e90b4,
            limb2: 0x25e1fb80bc0fce29,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x83481cd650cfb299009f3c00,
            limb1: 0x8f939e423e0f674d6f57230,
            limb2: 0x2f2728ba9b66091e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf6167502d75728ea975a4039,
            limb1: 0x2d1fe3226ff73b7b14c93266,
            limb2: 0x5a30af3826fbd1e,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xca54d1b80acb09f7e827336d,
            limb1: 0xb922ab366f0b58d636a435e3,
            limb2: 0x2b265e321def1a44,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x648ac17ae6b9caeda3843989,
            limb1: 0xf5fed47e5bfae40567779077,
            limb2: 0xe0bcb5b61ebed47,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x275702bf85d4ba3532dc5088,
            limb1: 0x8f5e597cbd9a24a7921df058,
            limb2: 0xd2a62aa88b947b7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x6dd50cb13406df1aafe42b8c,
            limb1: 0xb20e083203e526628067fbaa,
            limb2: 0x5890a871ebed892,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x14a20553ba528e191700f896,
            limb1: 0xbbac6bfab400566822044b70,
            limb2: 0x6f4b4e317ea218d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3ec5989b42f39a230109c3f8,
            limb1: 0xcd61f47c5c6039413e86a42f,
            limb2: 0x36f4738096d7ffb,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x42c2e43fd75a1cb635df2e85,
            limb1: 0x3a1b091fc06c5009618bdf0b,
            limb2: 0x193b186e3160c621,
            limb3: 0x0,
        },
    },
];


pub const precomputed_lines: [G2Line; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc,
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a,
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da,
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfe71cc7de97c9b245cc96163,
            limb1: 0xe0ea4220ceefb3ffbf14ebed,
            limb2: 0x2ac5428b8a757d2,
        },
        r0a1: u288 {
            limb0: 0xd81e8656840bb3dabbc7444b,
            limb1: 0x43cf6cdb948bb34379ac0825,
            limb2: 0x2365bd79d7ecdd15,
        },
        r1a0: u288 {
            limb0: 0xb04191779f566b8afb28302e,
            limb1: 0x1b4633e4d951b526ea5aca10,
            limb2: 0x8d4a50a6ab2ff2b,
        },
        r1a1: u288 {
            limb0: 0xa2fcfb1673aaf8cd4efc1df5,
            limb1: 0x434d272dc457faf87257fe90,
            limb2: 0x174138f65e02fe50,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d,
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf,
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f,
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb,
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582,
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36,
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x69fffe0f52a3f0f27bb39be4,
            limb1: 0xd7660395b291a45dd86c7ea3,
            limb2: 0x2db7fa4a288a4856,
        },
        r0a1: u288 {
            limb0: 0x90534436b814d83c1cb5b8fc,
            limb1: 0x7480d8daecf5a51a1dd5626b,
            limb2: 0xcfe90f90944c314,
        },
        r1a0: u288 {
            limb0: 0xb83039159cca208bdd54cd19,
            limb1: 0x9d0a11d1a82fa336ad26a080,
            limb2: 0x278fa968767ea0fe,
        },
        r1a1: u288 {
            limb0: 0xc574cf76c87593498980df52,
            limb1: 0x75031e88bd295d6525296c00,
            limb2: 0x1923157c832ea1d9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7ae8c897557c3be4c75708e7,
            limb1: 0x1b259beeb4f78bea81a9b871,
            limb2: 0x2e899ae34c4851a7,
        },
        r0a1: u288 {
            limb0: 0xe8a0fd9e00566f903cfefdf7,
            limb1: 0x2e14a95f9946f2acecb70c48,
            limb2: 0x661d089b1e2d178,
        },
        r1a0: u288 {
            limb0: 0xde7ce0095f7477725215c8f,
            limb1: 0x8f2536feeafce224575189c0,
            limb2: 0x1fa1a158d6902d99,
        },
        r1a1: u288 {
            limb0: 0xecbb4ceecc50cbb40a3f349e,
            limb1: 0x1707dfd5edc60b8eb85b08c4,
            limb2: 0xc911048a853a203,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447,
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62,
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb,
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8f72724159635f2fdc31aaa0,
            limb1: 0x71b2bec7baeeae7e3c2e42e5,
            limb2: 0x441e48fff9fd29f,
        },
        r0a1: u288 {
            limb0: 0xce1e3b780b49f913567f9ef2,
            limb1: 0xe6007685881f10bc27710645,
            limb2: 0x2021b70adbe22337,
        },
        r1a0: u288 {
            limb0: 0x213d35261aa98d373a74b7c8,
            limb1: 0x925d14451eac0c9877c10bdc,
            limb2: 0x28a8e42940a1fbd3,
        },
        r1a1: u288 {
            limb0: 0xc3f8a56f6a408ca989ac2301,
            limb1: 0xfbe2768c125f559ffaf1f812,
            limb2: 0x1cad353a6ec17ebd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad,
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192,
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf,
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463,
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0,
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31,
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe5fb73ad40ae82e1f183cc87,
            limb1: 0xea96ad19a64413f5f0163d31,
            limb2: 0xc1965506e8586e3,
        },
        r0a1: u288 {
            limb0: 0xccd97b40cce8f51c7d099f79,
            limb1: 0xeeb69e0fb0e0ec3e730b78be,
            limb2: 0x29645d6531d77215,
        },
        r1a0: u288 {
            limb0: 0xde93a839bd12406a21e0b1b7,
            limb1: 0x46a7b008f3b0a6696125ec94,
            limb2: 0x1be94e9625dd061b,
        },
        r1a1: u288 {
            limb0: 0x386a04e07ce7f4fde8d0cb87,
            limb1: 0xf711329ad3a9337a9b81ac88,
            limb2: 0x1f0d7d7e1ff20150,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65bab6515dfbcecdd2c22b6d,
            limb1: 0x2e0a39cd8324d42cad3c79cc,
            limb2: 0x2678960fa812b3e3,
        },
        r0a1: u288 {
            limb0: 0x2291c74b900e25f9328a2454,
            limb1: 0xc2c0e2892114b1380642bb89,
            limb2: 0x1bc42d925b13a625,
        },
        r1a0: u288 {
            limb0: 0x9b57035a76dbdf7cb2ebb046,
            limb1: 0x2ddcc55631ddd7d732363fd7,
            limb2: 0xc1867ed9f04a13b,
        },
        r1a1: u288 {
            limb0: 0x21a169822e232819bf0a599,
            limb1: 0x2a2f9c3e477abe2c7f218253,
            limb2: 0x16a0cf13f257dd2f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c,
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7,
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1,
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4425f338bed04c5a0b9b9223,
            limb1: 0x92f47555406fe15fa73ffd16,
            limb2: 0x2b0c329978405788,
        },
        r0a1: u288 {
            limb0: 0x6da54826d6de3404d4003b57,
            limb1: 0x94780994208e9f2a151c7a09,
            limb2: 0x197685cb32418023,
        },
        r1a0: u288 {
            limb0: 0xc14b1feb1bdc2b7d0ba95bd4,
            limb1: 0xa6a8f738b367ad84a133e9a0,
            limb2: 0x151de6fea59dd475,
        },
        r1a1: u288 {
            limb0: 0x7405c2510e0e97e98864e93d,
            limb1: 0xee9db262532263cc110270ed,
            limb2: 0x109042d3cb70b630,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9,
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f,
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb,
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfaf43f264b42f9dbfc3d5fd7,
            limb1: 0x5b2c889232de63dddce073df,
            limb2: 0x1a9c9cf820766671,
        },
        r0a1: u288 {
            limb0: 0x4bdea4003cc3ca266178b882,
            limb1: 0xc26af325e2291cd6f1b66f93,
            limb2: 0x135469e7e7706d6,
        },
        r1a0: u288 {
            limb0: 0x9810af821e571b197403dec7,
            limb1: 0x30a3a9c66eff1966ec9340d5,
            limb2: 0x2cbc0929bf66f3e,
        },
        r1a1: u288 {
            limb0: 0x6f5f7f3585549965873adfa2,
            limb1: 0x49b47b137c7485698eaa0f81,
            limb2: 0xd8ac88486a0c31a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d,
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244,
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d,
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x28f700bdbac220505a555924,
            limb1: 0x2fa2d5a849a061e1780ea152,
            limb2: 0x269440df79d636d5,
        },
        r0a1: u288 {
            limb0: 0xa95c2f812aeb9609c635aa8c,
            limb1: 0x812b84da17c07ca8aaf3fe38,
            limb2: 0x15d0d5ae2285c573,
        },
        r1a0: u288 {
            limb0: 0x3b0822a35d9ca85d5cc1ce9d,
            limb1: 0x2e694a7e92b7ba63cee76d78,
            limb2: 0x16c5ef22d1ccef36,
        },
        r1a1: u288 {
            limb0: 0x728b180087ee6c2f8c40f4ac,
            limb1: 0xd1d14748b10537ff12a8a662,
            limb2: 0x70ee5ea8f59902b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6,
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035,
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc,
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad,
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780,
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45,
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5f9005aebc876cd129d99a43,
            limb1: 0xc3bc242a8d0194f51e6f7670,
            limb2: 0x2a9ba98b68e818bc,
        },
        r0a1: u288 {
            limb0: 0x5b5c028a9444db1d313c9832,
            limb1: 0x1d2014dfa00d35f5335918e3,
            limb2: 0x2cf90f7a97b48d64,
        },
        r1a0: u288 {
            limb0: 0xb7928ff5e0a4d07e72d1b53,
            limb1: 0xe7293eade6924ab64c1adeb0,
            limb2: 0x29239f63f509aae0,
        },
        r1a1: u288 {
            limb0: 0x2f48dd59592892f09b3cd831,
            limb1: 0x966ae918d0309f8294359da6,
            limb2: 0x2cc7261db2324dc0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x898d7b109528ee3e67bc543c,
            limb1: 0x144ac379c572581d9b1d03e4,
            limb2: 0x247e11949c38c695,
        },
        r0a1: u288 {
            limb0: 0xe61d8f9ec292877b1506f88c,
            limb1: 0x855422a30114ec0ff9343bb5,
            limb2: 0x1cd695049a16041a,
        },
        r1a0: u288 {
            limb0: 0x7c66b1cc6c2d72467f6014fe,
            limb1: 0x7442d344ecd233710d61e015,
            limb2: 0xaed7d46f014ee89,
        },
        r1a1: u288 {
            limb0: 0x71ce9c9bc0f188dccd07d69f,
            limb1: 0x723dc09cc29736ef1909460b,
            limb2: 0x105d5614d2fd31b7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30,
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb,
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf,
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x711c8ab0eeff207a65854d65,
            limb1: 0x7b83044fe85cb7223bf56c27,
            limb2: 0x112481fe1f3143e5,
        },
        r0a1: u288 {
            limb0: 0xcd9b1c993b662ef8a51b8348,
            limb1: 0x82f9b4a440daf87abc072ceb,
            limb2: 0x18d47653bba02bf8,
        },
        r1a0: u288 {
            limb0: 0xa511d92d65756ef4bffbaa44,
            limb1: 0xcb78831ee72283affcaacba7,
            limb2: 0x217abc72aae2dfc1,
        },
        r1a1: u288 {
            limb0: 0xa8ccf4e1045b0cf05f3c6afa,
            limb1: 0x9344a80795d75f7039da1fe9,
            limb2: 0x1320597b05421e6b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82,
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6,
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857,
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46,
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b,
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542,
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeac6857659d71745e206e120,
            limb1: 0x9e43e2ba7f9fdb4bc9aae1e8,
            limb2: 0x65b04a199dbd2e7,
        },
        r0a1: u288 {
            limb0: 0xc43f9cc25db96b1c923abd89,
            limb1: 0xd52e42369c2b8cb99d20b44e,
            limb2: 0x7e1c6f7cc1bba6f,
        },
        r1a0: u288 {
            limb0: 0xa1570652faa72cba1fe230d1,
            limb1: 0x64b0296c34f04cdc16eeed37,
            limb2: 0xf960296ca027937,
        },
        r1a1: u288 {
            limb0: 0x516f9a3b228a5d4796814ad4,
            limb1: 0x42bc3319794759e2a25867d0,
            limb2: 0xfa9dabf70a90134,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6dd8ccd39530fb946d3f150,
            limb1: 0x8b6b8c10418217a11d6597f9,
            limb2: 0x18a042957a046695,
        },
        r0a1: u288 {
            limb0: 0xa99fee6c8e3eef945ab485bf,
            limb1: 0x4d25c7dbea3ca379f4d981ff,
            limb2: 0xfdc5937466789a5,
        },
        r1a0: u288 {
            limb0: 0xef645acd4631f837f8a03c19,
            limb1: 0x7b4809106a57e0769139780b,
            limb2: 0x115fa22eef6c0ff,
        },
        r1a1: u288 {
            limb0: 0x47e2daff5e5513e0fdc7c821,
            limb1: 0x48ccc634cbf4defbe9ca437b,
            limb2: 0x5777328d29a0efd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb,
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2,
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd,
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa8fff26b59d0d48d889ddb56,
            limb1: 0x6365ea1451a9bd696d6051a0,
            limb2: 0x1f0dd1c620569938,
        },
        r0a1: u288 {
            limb0: 0x3787e9ee0f9c75dbe8796e3a,
            limb1: 0x9dae987b9d2f001d656a20fa,
            limb2: 0x7813bc163d7e904,
        },
        r1a0: u288 {
            limb0: 0xaa101de8eb9a0cd6706d6156,
            limb1: 0x98c8d8dc220a726bc24efdaf,
            limb2: 0x2e30a857f071bb29,
        },
        r1a1: u288 {
            limb0: 0xd2700afccbf7bab793f91081,
            limb1: 0x7e9bc932ff0548c5bcc15eb5,
            limb2: 0x449a5309fcc7ceb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28,
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6,
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c,
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6668348cac09626cd2be4e5,
            limb1: 0xdc5d2e4c779fd57ca4d7170,
            limb2: 0x126dd5e554330026,
        },
        r0a1: u288 {
            limb0: 0xb2dee2912d3bbe3c8ff071dd,
            limb1: 0xc65cc1e4590634860f2c58ad,
            limb2: 0xcdde3b2624b3574,
        },
        r1a0: u288 {
            limb0: 0xbd4f627d80f4a6d74b4797bf,
            limb1: 0x3608e7b543f9411e69e67e6c,
            limb2: 0x2c86adf5b3e8c4c2,
        },
        r1a1: u288 {
            limb0: 0x387e6a26bab1a0d450930cac,
            limb1: 0xf4d425c3b802fed1c8a8e772,
            limb2: 0x226799e98e943595,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df,
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b,
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144,
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6a54f1de02242f2d25abbeda,
            limb1: 0xcd4191afd41fbf72ce19349a,
            limb2: 0x930d7c2e7d917f,
        },
        r0a1: u288 {
            limb0: 0x51aef5682593a20fde473f88,
            limb1: 0xa007aa1ac8562365ab7b9f3a,
            limb2: 0x818282ef3a7894e,
        },
        r1a0: u288 {
            limb0: 0xe61a86f777cf72ffc2028db3,
            limb1: 0x368b2454daab8e0cf7aec190,
            limb2: 0x1ce441b1ac0ee9b1,
        },
        r1a1: u288 {
            limb0: 0xa532000ab689413e217a74b3,
            limb1: 0x926e9798c42ce90c053252a3,
            limb2: 0x25eba1986b02e6a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e,
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7,
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09,
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7,
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53,
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13,
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf21060dbbfbeef72e79ac68b,
            limb1: 0x151e467e20a2a1f2238322b2,
            limb2: 0x2d7b812bd0bebe31,
        },
        r0a1: u288 {
            limb0: 0xf2db0dd69e9856d70a0eda07,
            limb1: 0xbbaf0d555dfb7b94abfe9408,
            limb2: 0xa15e979dce04740,
        },
        r1a0: u288 {
            limb0: 0x6c807152a7832173dab394aa,
            limb1: 0xa231ee2456271b72b75b1e09,
            limb2: 0x19aef5feb62b66a1,
        },
        r1a1: u288 {
            limb0: 0x90014293efd916891ebda665,
            limb1: 0xf942958c4da16f0279b37b1b,
            limb2: 0x2ea7faaaa464e187,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xec5731560560b07f9338253f,
            limb1: 0x2d735486868202130bbbdcc0,
            limb2: 0x17eb5ebf1eb86044,
        },
        r0a1: u288 {
            limb0: 0x804214333069dfdebef7823f,
            limb1: 0x70c85df9c71a747115d31e6b,
            limb2: 0x65a29cb59167644,
        },
        r1a0: u288 {
            limb0: 0xd5d7e4ce05539f9b505538fd,
            limb1: 0x9f42a2ebe873315ee2024f53,
            limb2: 0x1678a07797427845,
        },
        r1a1: u288 {
            limb0: 0x9d3125eff43f1bc365a41ec9,
            limb1: 0x46fa193b55509e886f81591b,
            limb2: 0x21c0c4ed112da92e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0,
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8,
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28,
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5414e505554f5b5b4d7ea654,
            limb1: 0x126e8f8b5827040aaf8ad0a0,
            limb2: 0x1ad791c8f1eaaeae,
        },
        r0a1: u288 {
            limb0: 0x626db6dacb8006e211e87605,
            limb1: 0x390981951c216c4552069ef9,
            limb2: 0xf5898d571e2df5e,
        },
        r1a0: u288 {
            limb0: 0x2ae626e7be13bf586951c453,
            limb1: 0x118d02d26515e58335309f90,
            limb2: 0x22084243ae08b62b,
        },
        r1a1: u288 {
            limb0: 0x7169ccda71bc1bd81c1fc12b,
            limb1: 0x4b9790d0dde558955d030f84,
            limb2: 0x2cc9e50fc7f5562f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff,
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6,
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2,
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8ffae2b59e1f82f7c250206f,
            limb1: 0xf7163f658fe4fe72163f97c4,
            limb2: 0x1d84a06571c6a45e,
        },
        r0a1: u288 {
            limb0: 0xb6f6c3ebd82f63d3cd1934e7,
            limb1: 0xf2b2e90a3f6c611eed36996c,
            limb2: 0x1d7e28df42c4d638,
        },
        r1a0: u288 {
            limb0: 0x45c2f8f19f1eb783d8857bbd,
            limb1: 0xb2f532b9e5f2ac42f4a0b329,
            limb2: 0x2c7a8e0ca61f80ec,
        },
        r1a1: u288 {
            limb0: 0x4572e2c23af71ee99ae59ef5,
            limb1: 0xc9af1cdaa6558ebe69050c5c,
            limb2: 0x1b1949e394a97fd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d,
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce,
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1,
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95,
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118,
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5,
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x34a511fb21b262ce17f83136,
            limb1: 0x96d2af0e40634dc2a7566ae7,
            limb2: 0x17b3bd983a902339,
        },
        r0a1: u288 {
            limb0: 0xd2f1c7ead3cff2adef3b6cf8,
            limb1: 0xed6211a630736599af576b84,
            limb2: 0xd27216418eb5176,
        },
        r1a0: u288 {
            limb0: 0x9df69976a7d7861a45b89644,
            limb1: 0x31ea1dd500799ad6c6c18b5e,
            limb2: 0x223fb01ce98d697e,
        },
        r1a1: u288 {
            limb0: 0x537baf3c8331b81944c8d110,
            limb1: 0x6963668a5bb389c0db750a38,
            limb2: 0x7259b2aaf5eee8c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa760ecb860bdb5a0e0cba59d,
            limb1: 0x55b48c1120515bc3421457c,
            limb2: 0x1ef4962012da440a,
        },
        r0a1: u288 {
            limb0: 0x89b80c082ed5df7e1aa3d88e,
            limb1: 0xd2700abca78d0aa8a0ad2da6,
            limb2: 0xff603f2c9fe86b7,
        },
        r1a0: u288 {
            limb0: 0x362449a6e2b544397b79799d,
            limb1: 0x127ec7b61b2418f2ad6c8149,
            limb2: 0xe582d1b0f88257f,
        },
        r1a1: u288 {
            limb0: 0x4a64739152bdc91e37dc6132,
            limb1: 0x225417ff8b4df051bdc93566,
            limb2: 0x3e4d185bb471de0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531,
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421,
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261,
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa,
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af,
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2,
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb41c1e4803cd763de7605e81,
            limb1: 0xd651ac7b5824d31c60d55c7,
            limb2: 0x21dd26eb57c35561,
        },
        r0a1: u288 {
            limb0: 0x3d861fe28aaa25c408fb0cfc,
            limb1: 0x29eda352b8cd5994007b8f7d,
            limb2: 0x15e76f2aebf62519,
        },
        r1a0: u288 {
            limb0: 0xb40b0e67f98bf08859e8609e,
            limb1: 0x1558d1e5c737abee959e24aa,
            limb2: 0x29e4d9fdbfb82334,
        },
        r1a1: u288 {
            limb0: 0x47a5bcb6380afbfbb1412969,
            limb1: 0xa1f5545a951345aae9641749,
            limb2: 0xb845d7463cb5eff,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7d3596ff00fe964b1a87af48,
            limb1: 0x72269b482ccc31dcb1d0cc28,
            limb2: 0xdc41c66f1e8ccdf,
        },
        r0a1: u288 {
            limb0: 0x11ab9fffdb7d55940ce6b1fe,
            limb1: 0xf77a87837efc216d4530f0ae,
            limb2: 0x20902d35ea0cdc22,
        },
        r1a0: u288 {
            limb0: 0xd5aa19c400ffb2417984e3cb,
            limb1: 0xdd611b3650190912a7e9a6e5,
            limb2: 0x136ba2639afe7243,
        },
        r1a1: u288 {
            limb0: 0x9b1a406ed66fe4b394210b2c,
            limb1: 0xc19ad44f319f88694ba44678,
            limb2: 0x20c9cf1088412733,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3,
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567,
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f,
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb68edb999a2e7d5a96dfd42b,
            limb1: 0x23f5af4d5f0945dc19bb5f80,
            limb2: 0x11792145c251d8ef,
        },
        r0a1: u288 {
            limb0: 0xb2ba793a3de9ac11c13e6548,
            limb1: 0x1787757baee16e3c21dc9869,
            limb2: 0xd98b08a8599d602,
        },
        r1a0: u288 {
            limb0: 0xa69de1d5ab898f3c6a7281ca,
            limb1: 0xd17e64e5de04a1211715b502,
            limb2: 0x559c2e917fc769f,
        },
        r1a1: u288 {
            limb0: 0x307d0a45a9d621ed114a76dc,
            limb1: 0xa033631bfa5216cc8cfaeffa,
            limb2: 0xaf00a9991efc08d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff,
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242,
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639,
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb61293891d25c09857e9f581,
            limb1: 0xe02fc77ab2930edca5555ec5,
            limb2: 0x18bd4ed1102ec1cb,
        },
        r0a1: u288 {
            limb0: 0x7f2df0ae31d818bee3a4f7a8,
            limb1: 0x10552ada74cb1261560fe6e4,
            limb2: 0x28031647a539fd39,
        },
        r1a0: u288 {
            limb0: 0xc0091b9f9de11b2cc487aefb,
            limb1: 0xfafe8be1994b68c5241502f6,
            limb2: 0x19eb0b7db24ce63d,
        },
        r1a1: u288 {
            limb0: 0xcfaaf9126ef21db6cee56e10,
            limb1: 0xf64d1ffb8b181031cce199a0,
            limb2: 0x1d9396968a8eb1d3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3,
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5,
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0,
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1,
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67,
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72,
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf74a64fe24c2e89d94b3c3b7,
            limb1: 0x4580140e5bfee54ba02a68e,
            limb2: 0xf17d58a938f340f,
        },
        r0a1: u288 {
            limb0: 0x3db8ca117fbe1d7ef6fbeb50,
            limb1: 0xfb9f90a922bdf554eae06d04,
            limb2: 0xded015f39f0280c,
        },
        r1a0: u288 {
            limb0: 0x7a34f708702273b659a2003c,
            limb1: 0x850aae132593ee3ce683a13e,
            limb2: 0x1f452223316915c7,
        },
        r1a1: u288 {
            limb0: 0x4e77e34f11db2ee9283e895c,
            limb1: 0x1439cb82cd17e0bed8a9777d,
            limb2: 0x25f89b7aa1dce2f9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x42f95fd6a7a5f959dc622c73,
            limb1: 0x655e8229387673656d5c8187,
            limb2: 0x1170a33347f92df5,
        },
        r0a1: u288 {
            limb0: 0xa31d21be3ca9d9f2ade39945,
            limb1: 0x95d0f44129c0fd4ba5613f73,
            limb2: 0x2ee74a38c554e136,
        },
        r1a0: u288 {
            limb0: 0xa901837fad9aa99596bc2e01,
            limb1: 0x879f5b56b76f1406c96ad3a0,
            limb2: 0x5dd52a2ba3ea307,
        },
        r1a1: u288 {
            limb0: 0x61f3f755b8ffe6924062b448,
            limb1: 0xc5d5af6433eb2ec0a199495a,
            limb2: 0x19148d1ecd13be5a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1,
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585,
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f,
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ac0571edc4751f3ca57884f,
            limb1: 0x770da71ad1812dab0b510f3,
            limb2: 0x218cba60e0a09ded,
        },
        r0a1: u288 {
            limb0: 0x46d70259daba00fe951856bd,
            limb1: 0xa8ad32f909ae68c265bcb9c4,
            limb2: 0x189ebfb862eef507,
        },
        r1a0: u288 {
            limb0: 0x12b1466adfca8edbe600a2a3,
            limb1: 0x34652166c0621ce12eac96e7,
            limb2: 0x2122283bfd80fced,
        },
        r1a1: u288 {
            limb0: 0x3535e3b4247807915a21ba6f,
            limb1: 0x91d22e2f51c7191dcd225263,
            limb2: 0xe3bab8ecad64131,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43,
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c,
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d,
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcb84179f3c0ff3d0dae68910,
            limb1: 0x8fea6f2ec5f1941f09477b6c,
            limb2: 0x11f486c7a767dd9d,
        },
        r0a1: u288 {
            limb0: 0x1fd7039d2f75940651c1664b,
            limb1: 0xa1a1ba5478b4a08f39a8aeaa,
            limb2: 0x1ce9d9812b5274e,
        },
        r1a0: u288 {
            limb0: 0xe161d2daf10124677cc5a0e4,
            limb1: 0xaacb9ce51f60b86d61e14db7,
            limb2: 0x2f6d1c4142c48ca6,
        },
        r1a1: u288 {
            limb0: 0xada63681093093c9ca107ddd,
            limb1: 0xfa6c81f582009bf633f7147c,
            limb2: 0x2eb378bfb2561530,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113,
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba,
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87,
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x23937b7803721e39cd18648e,
            limb1: 0x5aa49a20452b9de8f24192cf,
            limb2: 0x2cbafa6702104eb1,
        },
        r0a1: u288 {
            limb0: 0x425f2fd2486704d542cbe8b9,
            limb1: 0x3149dc87e68ebe66f35081ae,
            limb2: 0x8d77fb933f34815,
        },
        r1a0: u288 {
            limb0: 0x90e5b60d3436df484c41b0e4,
            limb1: 0x9cdd67b68b9a586cb5929879,
            limb2: 0x30204062c065e525,
        },
        r1a1: u288 {
            limb0: 0x652e91709f5cdc81c76874fa,
            limb1: 0x2e46cc8010122244b1b35fe7,
            limb2: 0x162ae9f260d510d8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a,
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995,
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb,
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6c5886c6e3b2796f59f9bb29,
            limb1: 0x5705879760bac2fcd6886eb4,
            limb2: 0x8e9eb9493f5d2f6,
        },
        r0a1: u288 {
            limb0: 0x11d2442fbcbaa75aed7148b3,
            limb1: 0xcbb64702ad5b0b36ac16bf54,
            limb2: 0x142208231c30e5e9,
        },
        r1a0: u288 {
            limb0: 0x804e3982610dd88437aca835,
            limb1: 0x63d2f6b87a60a939563c88b2,
            limb2: 0x154973ecd871da4b,
        },
        r1a1: u288 {
            limb0: 0x8e02cb1a48516a7bbcc83a76,
            limb1: 0x6497c09630158625e3dc5aec,
            limb2: 0x20551bd6ddda758d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885,
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4,
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72,
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfb01a721c654cf064442bce3,
            limb1: 0x7e5b2d9bba8b608865d012bd,
            limb2: 0x256ba96ecc1a0c7b,
        },
        r0a1: u288 {
            limb0: 0x84555da34b9b18ea4af810e4,
            limb1: 0x66648580861238b77d50a0c8,
            limb2: 0xfeaca566c06fd73,
        },
        r1a0: u288 {
            limb0: 0xf543225d820384628eb1e676,
            limb1: 0xe3d648a074fb64cda67cb204,
            limb2: 0xbcef5c307f42541,
        },
        r1a1: u288 {
            limb0: 0xa99ac036cb26ff2e20513097,
            limb1: 0x6bf963b8a581375e7e54de4b,
            limb2: 0x1b3727afdaef6b77,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c,
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4,
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b,
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2,
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f,
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532,
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9a9c14a6beba69cd928e4a0a,
            limb1: 0xe4ce19b5f7688b9e875f57ec,
            limb2: 0x1ef27431b08ca09d,
        },
        r0a1: u288 {
            limb0: 0x81e401c2ca123385e4185918,
            limb1: 0xb7f08ae2490646ddfe733974,
            limb2: 0x6d64087db0b2420,
        },
        r1a0: u288 {
            limb0: 0xd3df0c2358683c23db1774f8,
            limb1: 0x38aed2f5ff71d93e714b004d,
            limb2: 0x142465974dabc56e,
        },
        r1a1: u288 {
            limb0: 0x71e6c7e82a70b895a1eec5be,
            limb1: 0x5d91d6e03d976d9eea8121e8,
            limb2: 0x11c87a2462f869f8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc88e45458f282738e601b01e,
            limb1: 0x574c4a36fb2e9e595cfcc711,
            limb2: 0xd2a6701115b326,
        },
        r0a1: u288 {
            limb0: 0x8d94cf31af1ec9a9726d724b,
            limb1: 0x9a0e53b5b0f550a93ca24d4f,
            limb2: 0x109b1c8de64d61c8,
        },
        r1a0: u288 {
            limb0: 0x5365398967a52d5cf0cac706,
            limb1: 0xb33836c6fa429bed5a57727b,
            limb2: 0x2eedd413664ff3ea,
        },
        r1a1: u288 {
            limb0: 0x973929149fc89149b721eb34,
            limb1: 0x655b4b7420ca70da7b28e157,
            limb2: 0x1ccea59938e1de10,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb,
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9,
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652,
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5d983f0e43f5b848adc90dff,
            limb1: 0x32762d8406d182fd52269760,
            limb2: 0x649ae4010524b34,
        },
        r0a1: u288 {
            limb0: 0x4b44e41529c1988b1f3db77f,
            limb1: 0x8175888da83ad62f25962685,
            limb2: 0x2cc9454c858c9060,
        },
        r1a0: u288 {
            limb0: 0x178471c17465e351efc38c2f,
            limb1: 0xb8a08f0ffe4d5b62eaef6dbb,
            limb2: 0x9e5acbe53c8d1f8,
        },
        r1a1: u288 {
            limb0: 0x9969955adf1fd97d3e706ab,
            limb1: 0xfcbd910673cee15d0687ccda,
            limb2: 0xa2660f3d974d48c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053,
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6,
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879,
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9513e35b5f724ec5e59d3ac0,
            limb1: 0x20d70e99e9b596d6bc79825e,
            limb2: 0x280922dbf7a50,
        },
        r0a1: u288 {
            limb0: 0x4bd635f1fd49bc002203eb4a,
            limb1: 0x98ba82244e192205dfcc146a,
            limb2: 0x2417666f3a1af001,
        },
        r1a0: u288 {
            limb0: 0x579fd65c04d3ba17cd22872c,
            limb1: 0x3f72d5d8c0549d02b0796d50,
            limb2: 0x2d7c2101abbb3709,
        },
        r1a1: u288 {
            limb0: 0xded0b41036d5bd68fb298a14,
            limb1: 0xbdf1b87e245a39e1524843db,
            limb2: 0x19c7ec1bca6d29db,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1,
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b,
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae,
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b,
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00,
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57,
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x78d8bfcb5d77c44116624baa,
            limb1: 0x7734ab7b8bc3cd4ab29553e6,
            limb2: 0x249bc3fd50b3b8c8,
        },
        r0a1: u288 {
            limb0: 0x263d601262790746a54e33e4,
            limb1: 0xf9eecfe58542eec20f23309c,
            limb2: 0x14b2e29f2308b5c0,
        },
        r1a0: u288 {
            limb0: 0x5ad52268267a3bbba12d106d,
            limb1: 0x88d3576fb3674161f587f0d4,
            limb2: 0x222049592e097e2b,
        },
        r1a1: u288 {
            limb0: 0xdef0dcaeeab8043926a36f22,
            limb1: 0x427ea3f6f2293cec2970f86b,
            limb2: 0xb5956a0881d4955,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb083a0bbfddeaa87b98e10e,
            limb1: 0x417e2b528c4dfc782af1d7c2,
            limb2: 0x17c0ecc3a80ac697,
        },
        r0a1: u288 {
            limb0: 0xeca8b8f9311642d3fc9bf7d,
            limb1: 0x8cfb077f047783d0a2f0dbf4,
            limb2: 0xc09c1dd841c163b,
        },
        r1a0: u288 {
            limb0: 0xd5fe503631232fce90bed1cb,
            limb1: 0x764a564737097fdc7b361fa9,
            limb2: 0x94f8fb8df9c1a36,
        },
        r1a1: u288 {
            limb0: 0x9435c8d35692409c4700d3aa,
            limb1: 0x156164f2ac9adc1981be0bbe,
            limb2: 0x27fc3d4849010821,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263,
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca,
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf,
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8629a2e3de924b8781d41986,
            limb1: 0xee4930134b525abb0e8b1be,
            limb2: 0xbb2ab9b34f13e2f,
        },
        r0a1: u288 {
            limb0: 0x9f8c69b2e384bfbfb5090e2b,
            limb1: 0xc9c43dc1216408ab27b3fd81,
            limb2: 0xe583da16fe2b0a,
        },
        r1a0: u288 {
            limb0: 0x763ed4b077dd279ad82986ea,
            limb1: 0x79e5292bcfdcbf9dc23bf97c,
            limb2: 0xe4f420b5d51b352,
        },
        r1a1: u288 {
            limb0: 0x430b97fea1564b7065fcfb7,
            limb1: 0x94f6c78ce2b7f159d16c7dbd,
            limb2: 0x18c34126c1e44d85,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38,
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6,
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78,
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10,
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966,
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a,
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6b16f04ec032c683c0886cfb,
            limb1: 0xc044b5a15b4778d99f16ec79,
            limb2: 0x1199b1587da1d3e3,
        },
        r0a1: u288 {
            limb0: 0x924615db40ce1fbad22004d6,
            limb1: 0x9ebd81637c82b73b74a30c30,
            limb2: 0xa0b887a1b47dc02,
        },
        r1a0: u288 {
            limb0: 0x274d428517b56b79a263ef37,
            limb1: 0x4b7e95c6cfd09cbf77a089a9,
            limb2: 0x24e008659107e327,
        },
        r1a1: u288 {
            limb0: 0xcbf0c9d79cf1dce273895837,
            limb1: 0x2fd9b48ffc6b64a32bb69570,
            limb2: 0x141d5b01e57536d3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa164b733c2cae3f0dd8f792a,
            limb1: 0x8b8d668454d42f56f3bf9456,
            limb2: 0x9a0d2e2e412a898,
        },
        r0a1: u288 {
            limb0: 0xe1680b5a74732a03d99b9853,
            limb1: 0x35b581e8a6462629538a33c6,
            limb2: 0x1f3ab83eaae32127,
        },
        r1a0: u288 {
            limb0: 0xf91d366dee64722be58624bb,
            limb1: 0xddba542b5ebab027dd9b3472,
            limb2: 0xd78fa7c3f663b6c,
        },
        r1a1: u288 {
            limb0: 0x905de160a2b2c7761df27309,
            limb1: 0x6761d36d9dcb0077184b2a5d,
            limb2: 0x217acdc89610809b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7,
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5,
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9,
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x20086a621a1d273adb366a95,
            limb1: 0x9ba059f54a4b70de79b6acea,
            limb2: 0x20d7097ad842f39c,
        },
        r0a1: u288 {
            limb0: 0x16d56bb40895bb1f2d66172b,
            limb1: 0x463495d63af46fbbd0116dad,
            limb2: 0x3356a77b14453e8,
        },
        r1a0: u288 {
            limb0: 0xcc9329f2ba96385297f00da,
            limb1: 0xb38d6123a1d0edd6cf280236,
            limb2: 0x20b9b6873275420,
        },
        r1a1: u288 {
            limb0: 0x22ac10a1950393747a6af330,
            limb1: 0x5eeed19e617b4235ff1df362,
            limb2: 0x21b0b8f1122525a4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e,
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e,
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77,
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb7ec5bfdb8f64acf6fa815d,
            limb1: 0xca25290bb718de0a228858ae,
            limb2: 0x1fdedbc48440cb01,
        },
        r0a1: u288 {
            limb0: 0x51dd9f89748c564b9e9f4a9b,
            limb1: 0xa93ad73e3c592ef9a3ce2d75,
            limb2: 0x28f442985be84e5d,
        },
        r1a0: u288 {
            limb0: 0xcd560282f36122c4e00fa37c,
            limb1: 0x422be4d00e82aa7d0a11c043,
            limb2: 0xd458fa7499c3304,
        },
        r1a1: u288 {
            limb0: 0xa704013d8962d251fb7178fb,
            limb1: 0x784e423a4d921ff2f5e42b4,
            limb2: 0x3030588c9ce415b4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8,
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441,
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4,
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c,
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162,
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc,
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6b293b039eef8225162d9ad1,
            limb1: 0x59ac78e43535322cd039854,
            limb2: 0x1ae274dc7a599009,
        },
        r0a1: u288 {
            limb0: 0xfcd7ae9e2d8bd9c23e577bad,
            limb1: 0x8cd5bcc470419e00e4aae6c1,
            limb2: 0x6dc94aa9d96456d,
        },
        r1a0: u288 {
            limb0: 0x80294c533e605e38f8b1ed30,
            limb1: 0xdfac02ee16bb3ef22ad91d09,
            limb2: 0x483c591594af15b,
        },
        r1a1: u288 {
            limb0: 0x5785c89260bc1960ff4116d9,
            limb1: 0x63c2336051802253d8b96ec9,
            limb2: 0x168d49c9381a02c6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfdd8bc36486cd5670730b086,
            limb1: 0xa06427341c1dc1a56b27e65e,
            limb2: 0x294dd15632479508,
        },
        r0a1: u288 {
            limb0: 0xb021afeae9b55d61d4278fe1,
            limb1: 0xbcf72a01a00fe296873cd41c,
            limb2: 0x2e9ca4b7dfc97a07,
        },
        r1a0: u288 {
            limb0: 0x8a0a9dd41bfc56a8b2645b76,
            limb1: 0x130e911a8a75dc8e0c7e6f1a,
            limb2: 0x1bb17b6042676a51,
        },
        r1a1: u288 {
            limb0: 0x3e123acc3003becbf1b003fb,
            limb1: 0xf92a31c8d76ed6a114b94c4c,
            limb2: 0x2f351e864c050e56,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e,
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50,
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8,
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc8c2db3c0f83dd413ce9cfe5,
            limb1: 0x67abb855eca0e8004b2aa44e,
            limb2: 0xd95800227ace0be,
        },
        r0a1: u288 {
            limb0: 0x36e14766870ed8d14d3b1af4,
            limb1: 0x2905915e9f8cb7c96d4c7952,
            limb2: 0x1896e37c74ad328e,
        },
        r1a0: u288 {
            limb0: 0x47d60247b7d1f52788f0a19,
            limb1: 0x50453ee87a1520a91497ef81,
            limb2: 0x2ff7422428ce3a62,
        },
        r1a1: u288 {
            limb0: 0x13fc8b6ee4a0ec9150cff411,
            limb1: 0x573e0d51094282fc16ff31a8,
            limb2: 0x160bf6e3e453a6d4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200,
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7,
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26,
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95fa372602377220f4261ff2,
            limb1: 0x23e2ce72b036398d2c082712,
            limb2: 0x29ec5182275b85f1,
        },
        r0a1: u288 {
            limb0: 0x44ee7ed13b9b0efa9b3491c2,
            limb1: 0x8bd5100e43cd25fab7832bd7,
            limb2: 0x137b6147a1d00968,
        },
        r1a0: u288 {
            limb0: 0xa0ce4b35917923073a1662a3,
            limb1: 0x869c990d63abbf2d2389b285,
            limb2: 0xe33835c16f74b0f,
        },
        r1a1: u288 {
            limb0: 0x786d98198d890461b0229b29,
            limb1: 0xc72a60093fb82180a314e0ad,
            limb2: 0x1f66cffd36fdef3f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da,
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941,
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3,
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbefa2e2b0f3ea283442e1404,
            limb1: 0x6ca1c6f63999d8120150446f,
            limb2: 0x1d1e33899acdc176,
        },
        r0a1: u288 {
            limb0: 0xfd5f54952e817a570bca804a,
            limb1: 0xdf535f8d9061b51daeb4a2df,
            limb2: 0x28214c2c4066c8a,
        },
        r1a0: u288 {
            limb0: 0xc0f29640cc7ea24461f6f4e0,
            limb1: 0x563a8ac43ae54ff97de68276,
            limb2: 0x135d7a82966d2f2,
        },
        r1a1: u288 {
            limb0: 0x852d06438d0adc199f36dba1,
            limb1: 0x23e9e0249488fd3370cf9f38,
            limb2: 0x2c0778428d4ec981,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed,
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631,
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03,
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc234076159db9f6456fcee96,
            limb1: 0xcc7f1e69ede3a6928fb6f32d,
            limb2: 0x22c4d8479597cd2a,
        },
        r0a1: u288 {
            limb0: 0xbba11a3dcf1fcc68a643ba3a,
            limb1: 0xa90e1db78af6e4a2bf7e07a3,
            limb2: 0x18c70cee7811ee72,
        },
        r1a0: u288 {
            limb0: 0x2294b62211b8cbbe0535019f,
            limb1: 0x4d9ee197a0e135e6094b3b33,
            limb2: 0x11240d077d2c894b,
        },
        r1a1: u288 {
            limb0: 0x1161976c2ef536943213c2f4,
            limb1: 0x33069d10c137d89eee2aca6b,
            limb2: 0x26c50f44e59eb9b0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba,
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c,
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f,
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0,
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a,
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442,
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd648216cbf000c44fbf11073,
            limb1: 0xa5705521c4868a979da8d48e,
            limb2: 0x221fba5d279410a8,
        },
        r0a1: u288 {
            limb0: 0xe376657ef1474c56a66a60f4,
            limb1: 0x45e56d1728ffd7be4f0ac118,
            limb2: 0x8627ce9541d573c,
        },
        r1a0: u288 {
            limb0: 0x292055e892b83e6b19ac3925,
            limb1: 0x9d420f24850553533e31da4b,
            limb2: 0x2e72f20b451a4470,
        },
        r1a1: u288 {
            limb0: 0x869bc01ff0f8edb83b92bcab,
            limb1: 0xb898a71456c99b5d1ff078ad,
            limb2: 0x1da19405a853cf69,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd28206237f1cdfffa9c417f,
            limb1: 0xe0002b88cd064bb9f1210e05,
            limb2: 0x98b1d3dfd0ab18b,
        },
        r0a1: u288 {
            limb0: 0xaf9c376072245fa418719808,
            limb1: 0x6267700940e14dc6d54b31,
            limb2: 0x9a261d268d74c9a,
        },
        r1a0: u288 {
            limb0: 0x5be0a499b0a6b09245f039e3,
            limb1: 0xcb0260a9268ec5f0d652e9c0,
            limb2: 0xd36e2a0005f3299,
        },
        r1a1: u288 {
            limb0: 0xdc061dc639b9a5f195a69d3b,
            limb1: 0x11b6d5562946e05fe49c2dd3,
            limb2: 0x24141b53aae0e0f4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6,
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8,
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22,
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f9cb4e70a06759790c238dd,
            limb1: 0x5870841138580d542579853,
            limb2: 0x145aa1b0a25481b,
        },
        r0a1: u288 {
            limb0: 0x942346bd02e405c4370d06a2,
            limb1: 0xe8115bcfe940139665834c81,
            limb2: 0x271cd09754d3bdc3,
        },
        r1a0: u288 {
            limb0: 0x76915095dd1460079c0f3913,
            limb1: 0x15ceb3cc493e346aaf82f11,
            limb2: 0x26189d56b45a83c5,
        },
        r1a1: u288 {
            limb0: 0x75909600693bb699ec8fa810,
            limb1: 0x31acc60e3c074e71ec1af61a,
            limb2: 0x19f4e389a99fc7e5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729,
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb,
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9,
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d,
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6,
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb,
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9f97a727d39fc2b24d6bf93c,
            limb1: 0xc6b4dd2554953985ecb5e42,
            limb2: 0x194233c3117f2dbe,
        },
        r0a1: u288 {
            limb0: 0x2662e195ff7a40609c16600f,
            limb1: 0x23559b791e8e13f5b6a8a070,
            limb2: 0x1f350857ef8c3977,
        },
        r1a0: u288 {
            limb0: 0xf253ee71bbbaba0b35846b74,
            limb1: 0xc4c7ced988755e0c3670374c,
            limb2: 0x1f862799991f22fd,
        },
        r1a1: u288 {
            limb0: 0xf90a0ceae641d8a7e9b7dab3,
            limb1: 0x5571cdd6b91cd455db86d6e7,
            limb2: 0x239e1b7d85e53056,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x52d719d6ce3abf108c7a915c,
            limb1: 0xbc54c76bb22ae268a4bc6018,
            limb2: 0x29f76dca56a6bc69,
        },
        r0a1: u288 {
            limb0: 0x994c4ce7fecbcf9d720ee7c8,
            limb1: 0x2559ac611daa14efae4689,
            limb2: 0x221e756ac58c65b4,
        },
        r1a0: u288 {
            limb0: 0x30c13a177c2948c762b25f3,
            limb1: 0xad946415140e9d3635200404,
            limb2: 0x2a2c8615c684fc7,
        },
        r1a1: u288 {
            limb0: 0x9204b95dd9947ac14fa23933,
            limb1: 0x8fa802abc455a086b33c4625,
            limb2: 0xe787bc61acab3a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3,
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6,
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4,
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6b92de9c91f1c933dc82c0c8,
            limb1: 0x522c9ebbf35e6fb8ab24e03d,
            limb2: 0x4952e9b0c1c47ee,
        },
        r0a1: u288 {
            limb0: 0x3481646cc7f5b3f09ff23697,
            limb1: 0x69996387cfef5b22adb0760,
            limb2: 0x8fe60dba77da4ba,
        },
        r1a0: u288 {
            limb0: 0x73b92c04b6be400d17a0161d,
            limb1: 0x2665f7e6956de07da2c8b41e,
            limb2: 0x386e188547c0004,
        },
        r1a1: u288 {
            limb0: 0x263ae2d475836ca2d3001bb,
            limb1: 0x6e57465c35097c85d65318b4,
            limb2: 0x214302a66a6be1f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c,
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a,
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374,
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e1218b47c109ff784f8350d,
            limb1: 0xccc3cd30e5960d71b6d26375,
            limb2: 0x12d961538ddd0836,
        },
        r0a1: u288 {
            limb0: 0x84b5dd4140169c7736d79d1c,
            limb1: 0x2035e344091a6d1f4a9296f6,
            limb2: 0x1d2e2ec9a9d5c330,
        },
        r1a0: u288 {
            limb0: 0xae48055c5d8657d03a4002ab,
            limb1: 0x5562f5ed760a5ce621936100,
            limb2: 0x1c4dc3bb07f8166f,
        },
        r1a1: u288 {
            limb0: 0xdc213d7e4a30c0460ad08b41,
            limb1: 0xfec7bb0bf98a9069e593fa95,
            limb2: 0xf5f92b8a09b1bb7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272,
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63,
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4,
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2a421ce0c085c0dadc879316,
            limb1: 0xe82f02f438503ef6d9decfcd,
            limb2: 0x2f745eb2f2a629e0,
        },
        r0a1: u288 {
            limb0: 0x708b5233b3f4def85caab951,
            limb1: 0xb7d2232c354f5f34a708600f,
            limb2: 0x2980d79e352098a2,
        },
        r1a0: u288 {
            limb0: 0x146e269216173bf5f2980249,
            limb1: 0x88ff04bf4a326e3693c0f42e,
            limb2: 0x1aef6b38ff184691,
        },
        r1a1: u288 {
            limb0: 0xa69f8986c0fe085e5fbed80f,
            limb1: 0x8b0f93ea291df8d8aaa834f,
            limb2: 0x1b00e6ad89a03614,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4,
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44,
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab,
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665,
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2,
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822,
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xae57ee719281f47e14555161,
            limb1: 0xb0e6e017377e4d8ebfbd0792,
            limb2: 0x15af698424a5926d,
        },
        r0a1: u288 {
            limb0: 0xdafa438276dcd0725e036b84,
            limb1: 0xc9409395dc049f0e32a394e4,
            limb2: 0xe7af6458b9da56c,
        },
        r1a0: u288 {
            limb0: 0x578e0a02cd78192d9c8a7956,
            limb1: 0x541f57622d66790711617387,
            limb2: 0x15c2b4f326a9c408,
        },
        r1a1: u288 {
            limb0: 0x3e5e7adfb36654931c64d9cd,
            limb1: 0x9a887fd863224c8290b54245,
            limb2: 0x23f1301cfafdcc37,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x187db9038f37786ce2772fc3,
            limb1: 0x9fb52c90670bf2d7b79fd7d9,
            limb2: 0xce93db5945530c7,
        },
        r0a1: u288 {
            limb0: 0x80c648231cf098a5f89931db,
            limb1: 0x26b9abfb086a2bd6c9520ff3,
            limb2: 0x1a4ea391e524ba5,
        },
        r1a0: u288 {
            limb0: 0xaee8af012da8bf6bd6467196,
            limb1: 0xca317fd2b5f9c51baf6f7362,
            limb2: 0xb34c4e23d0ccb27,
        },
        r1a1: u288 {
            limb0: 0xffda264b2e02c87cc9d46128,
            limb1: 0xcc734a34ee4eff0c48f941c8,
            limb2: 0xdfb8d3e2bd2711f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e,
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857,
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf,
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x303c658183fcfd8721a662af,
            limb1: 0xcc904ecc363aee419224e001,
            limb2: 0x28b2cd60eb32c9f1,
        },
        r0a1: u288 {
            limb0: 0x91ba9a3500c15b79bdd3e820,
            limb1: 0x22b17c4599b295fbae864d90,
            limb2: 0xb758ef593f63b31,
        },
        r1a0: u288 {
            limb0: 0x28300bc5523219507eab7daf,
            limb1: 0xf08ee93605965b866791eb25,
            limb2: 0xcaf54541a3d405c,
        },
        r1a1: u288 {
            limb0: 0xd6c639065af0ca3a0fb8da88,
            limb1: 0x696d8f890efe5ac9d8cde219,
            limb2: 0x285a5a02f8d5f3e9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d,
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff,
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae,
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd,
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377,
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e,
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x974e98426be5d28e745e4c31,
            limb1: 0xc101a72dd0def29e8188d50b,
            limb2: 0x711c49e3c528260,
        },
        r0a1: u288 {
            limb0: 0x4f8af2387a6bbe646b508a3f,
            limb1: 0x421dbf0a93da120e3c5463b3,
            limb2: 0x1357d7ec61bb18bd,
        },
        r1a0: u288 {
            limb0: 0xc7964701034e8e75a4eff5f5,
            limb1: 0x6c4ab19b662bc91ee95d99d8,
            limb2: 0x16ce198a2b3040aa,
        },
        r1a1: u288 {
            limb0: 0xa2ba49a3e9c766380656a015,
            limb1: 0x5b81259b10fd01de21c93c16,
            limb2: 0x2fa30f9c57fdba03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0418b63f33dd8128391dfff,
            limb1: 0xb0059a2d771ffec4b9d9c720,
            limb2: 0x155290dca196d38c,
        },
        r0a1: u288 {
            limb0: 0x8395b526616927221fef8b2e,
            limb1: 0xa3688c79db814e341b425f0b,
            limb2: 0x15b88cca327ce966,
        },
        r1a0: u288 {
            limb0: 0x62c22fb2da3d52153988b4f,
            limb1: 0x44f165249ffea589701b7a07,
            limb2: 0x1cb4f33ca42cf0ea,
        },
        r1a1: u288 {
            limb0: 0x3b31579e8e81cae37e2d9d66,
            limb1: 0xb15ff28b7812f981d550a90e,
            limb2: 0xd9e59754e8e9612,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f,
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695,
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df,
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6aa80ce2de630ba9331620,
            limb1: 0x9fa534e387b4bc2083a944d1,
            limb2: 0x1d30e746b43b39bf,
        },
        r0a1: u288 {
            limb0: 0xf8d8b00f79b433f01dcafddd,
            limb1: 0x136ff817d3ad653e68cf38e7,
            limb2: 0x2b95af9f9115e64a,
        },
        r1a0: u288 {
            limb0: 0x4c2a7011e2a2deff9f6f624d,
            limb1: 0x5d65c9394ea1aeffbb599a4,
            limb2: 0x21f99690d707b088,
        },
        r1a1: u288 {
            limb0: 0xfed5393c5cf335c7c23d57f7,
            limb1: 0xb7c9b2fffe623e20649e9312,
            limb2: 0x129347c46b512dd7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8,
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3,
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb,
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88c69ded447638f53bb515f4,
            limb1: 0xb0b7460b91d07fa0e16e874a,
            limb2: 0x5a7e2f473f0b537,
        },
        r0a1: u288 {
            limb0: 0xd9430b2e73f1ca7db04a8dbd,
            limb1: 0xfcc81a6720801f8c3ec9c4dc,
            limb2: 0x2fa576af5169f796,
        },
        r1a0: u288 {
            limb0: 0xdbe832b384a29d48b981364b,
            limb1: 0x8812ff4f2f82beea209c8ec9,
            limb2: 0x2a9f327c9dae4c7a,
        },
        r1a1: u288 {
            limb0: 0xf34cfcee9a265b792e8a5ca9,
            limb1: 0xedeb242d16a5fdfbe6bc51d7,
            limb2: 0x2c6181d1dde92349,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d,
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914,
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7,
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3,
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940,
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d,
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1fe73568b9ed5bfc66ac10a9,
            limb1: 0xb56e43a9dc4f3cd99b3ffec6,
            limb2: 0x1cc765b0b25e3d98,
        },
        r0a1: u288 {
            limb0: 0x4999834f6d0199e20417bed3,
            limb1: 0xadef5fd299d0d91d34d34380,
            limb2: 0x1608aa559b435958,
        },
        r1a0: u288 {
            limb0: 0xa12d29e7a3e44fe5a310cf7a,
            limb1: 0x13d0380205991b21cd28ef2c,
            limb2: 0x175f6a5424d0385d,
        },
        r1a1: u288 {
            limb0: 0xa4531f64642653de27b477e1,
            limb1: 0x560ac80d15b0cd9601ffc05b,
            limb2: 0xdce447a548c2be8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa1c3cfdf898e012472b729c6,
            limb1: 0xc0af37f4b6a2da040a43b365,
            limb2: 0x63c6a18193ab93f,
        },
        r0a1: u288 {
            limb0: 0x4dd7a4fdd4705a0c050a7bef,
            limb1: 0xe09c70c0c0f11f115d03cddf,
            limb2: 0x9f42c8ce3bbd633,
        },
        r1a0: u288 {
            limb0: 0x2999f62e323fc1a47420564f,
            limb1: 0x4db64dee7cd41b6151ec7bbc,
            limb2: 0x1e04894f56ed209e,
        },
        r1a1: u288 {
            limb0: 0xc5239e4d94487829575d1022,
            limb1: 0x5b09ccbda8dd4040ce329c8,
            limb2: 0x1e9fb139d4394b89,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42,
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29,
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419,
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bc48677b155479a3ced37d2,
            limb1: 0x75d2c1a17baf6e6e9e8ce15,
            limb2: 0x5266c79bfd91974,
        },
        r0a1: u288 {
            limb0: 0x3aefd5b5a835feeb195b56ab,
            limb1: 0x2e47925112f70ed1916395e5,
            limb2: 0x191f6240e5a03812,
        },
        r1a0: u288 {
            limb0: 0x8b2000e003c75e44e658130e,
            limb1: 0xb82ee280360c1016b66cf26b,
            limb2: 0x2b189161037a6eab,
        },
        r1a1: u288 {
            limb0: 0x2093d3855c028bccbd16e184,
            limb1: 0x7089bf81ef07b8101e53fde4,
            limb2: 0x2bcebb122aaf17e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028,
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8,
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6,
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf082465d4ae566be89d8996,
            limb1: 0x7e7f2fe1c7e62c6f1c63214d,
            limb2: 0x2ca84a153e30960f,
        },
        r0a1: u288 {
            limb0: 0x95609fbc53f2ad9696aeeefa,
            limb1: 0xd315a682f37f01921a5eb300,
            limb2: 0xd1081fcb940395d,
        },
        r1a0: u288 {
            limb0: 0x897fa5a5a4be64c7c95f8b,
            limb1: 0x6fadcc890b443f594dd32935,
            limb2: 0x20b16f86f9fd834d,
        },
        r1a1: u288 {
            limb0: 0x39c35ae5c42163e859bed873,
            limb1: 0xd002a2fa34861679cd007189,
            limb2: 0x2eed6363f3d02585,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6,
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1,
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd,
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9990457fb5dcca3af0bb98f,
            limb1: 0xeb717ba1a74675835fdee242,
            limb2: 0xa01607a5b158020,
        },
        r0a1: u288 {
            limb0: 0xde790a5b5c535013d1c81ed7,
            limb1: 0xb677dc5850664236d245b080,
            limb2: 0x122a8d026d907c7c,
        },
        r1a0: u288 {
            limb0: 0x91517dbed69098b2700d48b2,
            limb1: 0x3be9485d214edfa52180ecde,
            limb2: 0x1e583f36d3608f35,
        },
        r1a1: u288 {
            limb0: 0x96cff245088eb8833796a131,
            limb1: 0x69667607c9ebe8a831bff768,
            limb2: 0x26032d198953afbd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed,
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7,
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944,
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7,
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec,
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924,
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e321ab7d46404428d6df75a,
            limb1: 0xbd10eb8b334b79f0bb36a9f9,
            limb2: 0x25e44f1f3e4ff5a1,
        },
        r0a1: u288 {
            limb0: 0x3a0073fdb9db430fcad0ce74,
            limb1: 0xd06877a01582c2afca4dd81c,
            limb2: 0x1a70319b29d7ed83,
        },
        r1a0: u288 {
            limb0: 0x618804840e82ddba3113177c,
            limb1: 0x3e0a16d6134b3166e6e4e944,
            limb2: 0x1a457ab4ad4862e,
        },
        r1a1: u288 {
            limb0: 0xb0dad447da3c9fb1765b1a4,
            limb1: 0xdecf314d4ed97103038eb826,
            limb2: 0x175992c35d00260c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e83688492c0b1edf7001922,
            limb1: 0xb4b78990dc6df19e8bca5a65,
            limb2: 0x2418a834a1cb5a77,
        },
        r0a1: u288 {
            limb0: 0x6e0807f6656f0c36068ee37e,
            limb1: 0xfd5870a57c162876e9c775f1,
            limb2: 0x1c3412f39313f548,
        },
        r1a0: u288 {
            limb0: 0x26c64355e08aa37e6a4cbfbf,
            limb1: 0x492e9013449db80f8467c406,
            limb2: 0x12010b75e01a01cf,
        },
        r1a1: u288 {
            limb0: 0x8543b50c11a6f84e5d9cdca5,
            limb1: 0xcb15bf24cf873988a7c51021,
            limb2: 0x2355964d03d9357f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663,
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847,
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47,
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x112d880bfa3029f5c221bb97,
            limb1: 0x740b5a725c241724eadb847b,
            limb2: 0x1fd8ae4febdc3e4f,
        },
        r0a1: u288 {
            limb0: 0xee39655230d5b3baaf4b71f6,
            limb1: 0xf83723a2d0740a0c63f8ca4d,
            limb2: 0x606e260d6ab1449,
        },
        r1a0: u288 {
            limb0: 0xba5ed58703bbbce9c878d23b,
            limb1: 0x13063a64c317d4ca7c14374f,
            limb2: 0x79b7c93333ec5ee,
        },
        r1a1: u288 {
            limb0: 0xc4a44a22e7b171850f9252,
            limb1: 0xc5e2ac434f388d6616c12717,
            limb2: 0x1bd8d5f28157620f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31,
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82,
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53,
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf32fb5a945ab04140e14e772,
            limb1: 0xb6cd47b83b592927f5ef0a13,
            limb2: 0x16a5062eba4e8f46,
        },
        r0a1: u288 {
            limb0: 0x8fbaa844b6089a9c672fc0f3,
            limb1: 0xe5f5b36bbef6da2db138a219,
            limb2: 0x2093dbedcd966317,
        },
        r1a0: u288 {
            limb0: 0x780be2a525bc6548a626d85e,
            limb1: 0x685a2047f39e8b2839bc5486,
            limb2: 0x12817667b03b72a7,
        },
        r1a1: u288 {
            limb0: 0x123d1107976ee06cbc7d41c6,
            limb1: 0x57d93188e49db3decc17c518,
            limb2: 0x10640845b8586b55,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0,
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b,
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8,
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x77f8d88a2592e111305079ed,
            limb1: 0x321fad7f24d5718a0b0377ec,
            limb2: 0x1043c6ba7ef09bbe,
        },
        r0a1: u288 {
            limb0: 0x74877161ded4928eea7ee75f,
            limb1: 0x36dddcc9e99b766763fa0b15,
            limb2: 0x1039041433635ebd,
        },
        r1a0: u288 {
            limb0: 0xf1ca13c4867d55bd17da8269,
            limb1: 0xda50623d953e704f4ae23c05,
            limb2: 0x1239be5434d5d737,
        },
        r1a1: u288 {
            limb0: 0x64785f32f712c2e9b5d98b4b,
            limb1: 0x3d4d5fd5ac8c236bf4f204e6,
            limb2: 0x1964846b5fcb41b6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b,
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f,
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27,
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510,
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395,
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc,
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x42af59f48f3ac8e8a9bdf8a,
            limb1: 0xa43e0151242dea8569ca4fe,
            limb2: 0x1b1c8f808c64f938,
        },
        r0a1: u288 {
            limb0: 0xbcbc52839b6712bf4b0c6012,
            limb1: 0xad1cbf25b15cff5ff54a635f,
            limb2: 0x2093425df6b2ff0,
        },
        r1a0: u288 {
            limb0: 0x4c5834607e6c4fd24bf23c78,
            limb1: 0x2253ce6e1b61c350ed3456ee,
            limb2: 0x223d9f7ea574c9ad,
        },
        r1a1: u288 {
            limb0: 0x660d45bec3b9c1225c53c0a2,
            limb1: 0xf5c38e1956df8ed20b2ba216,
            limb2: 0xbb038959aea5605,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3338f27e6cc2024af45de06c,
            limb1: 0xb3750150a570e8fbe31b4c7d,
            limb2: 0x248926857b15ccc,
        },
        r0a1: u288 {
            limb0: 0x79261cabfed6d0b8852c9087,
            limb1: 0xad37cbb11cd6cfd6e3faa807,
            limb2: 0x16d93fe7a3011898,
        },
        r1a0: u288 {
            limb0: 0x9d4933e3d544d5674d591c58,
            limb1: 0xce8ac6057eb69dc7c702b48b,
            limb2: 0xde3a27cca394e0b,
        },
        r1a1: u288 {
            limb0: 0xaff63ba56e4121273217d54b,
            limb1: 0x9692daaa5a65b8b4a6d02745,
            limb2: 0x1e2f878ff814191a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f,
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234,
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724,
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x434b5945b6ab2dc1b9531ffb,
            limb1: 0x31382eff26717294c43aef8d,
            limb2: 0x7bf6d1641fc04b0,
        },
        r0a1: u288 {
            limb0: 0xe37eee01f251415c74ea3c32,
            limb1: 0xea2c1b0788309eccd6f5d8f6,
            limb2: 0x1939eb31098f72b1,
        },
        r1a0: u288 {
            limb0: 0x70e7def0516359d1dc6d145e,
            limb1: 0xe7c8547b8d4ec26b6b18f64a,
            limb2: 0x556da3f3f3a9830,
        },
        r1a1: u288 {
            limb0: 0x9ee4677efbe0388547339afe,
            limb1: 0x7b6689d625d177a861315313,
            limb2: 0x294ba22371953747,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce,
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad,
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065,
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0,
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2,
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3,
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x91edc23350809b524e1737d6,
            limb1: 0x2aac9c765a5527afb1488678,
            limb2: 0x78ca317c13b24a3,
        },
        r0a1: u288 {
            limb0: 0x83d8ea69f129c316ba094dae,
            limb1: 0x9636b6b7cc48da6452ed531e,
            limb2: 0x6769a621011c2b0,
        },
        r1a0: u288 {
            limb0: 0xba37f2a66d317ba14cb87cf0,
            limb1: 0x17e2905235a001ef2ab357bf,
            limb2: 0x1a42bfe899343b3e,
        },
        r1a1: u288 {
            limb0: 0x651ca49ba0e11f921c79d143,
            limb1: 0xbed43fffc5d9cf7e524101eb,
            limb2: 0x14fa0cfa688478be,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x56a0178ccca11725ee5af40b,
            limb1: 0x1d48f437ee6e28af82d8d544,
            limb2: 0x196ce6aa42025d10,
        },
        r0a1: u288 {
            limb0: 0xb53e07eb6f8525fde0aadcba,
            limb1: 0xedc4fddb666fc9eb51b812fa,
            limb2: 0x2160f8f39a955840,
        },
        r1a0: u288 {
            limb0: 0x864961e01b359d85ad5a2206,
            limb1: 0xdd0ae2cf1319f314395f06d3,
            limb2: 0x2b3767549b036559,
        },
        r1a1: u288 {
            limb0: 0x5a5c3aa4cf5a9fa734297620,
            limb1: 0xa1e553af2f31b97e27a3dc2c,
            limb2: 0x1a6dca2db313db17,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543,
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4,
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947,
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf,
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763,
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba,
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x50b7b76df9a0523f6d1d1e8d,
            limb1: 0x8387384e366c92f11b3b79c2,
            limb2: 0x2cb94c565e73456f,
        },
        r0a1: u288 {
            limb0: 0xfaa6efce5b93aa5056381864,
            limb1: 0x907342a2b16b8868a8f4150f,
            limb2: 0xca51365dd74e9f9,
        },
        r1a0: u288 {
            limb0: 0x4aa790f15f270366c2b8983f,
            limb1: 0xde71d05b95255304a298ee32,
            limb2: 0x99722cc7752c230,
        },
        r1a1: u288 {
            limb0: 0xb9b2be6464490af7b03e6812,
            limb1: 0xa4a106ebfd68073ee6eaf07f,
            limb2: 0x29db9b46a9b66b6e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf50b042e608db0dda824c92e,
            limb1: 0xe60444527f16b1c38cea103c,
            limb2: 0x2a0dea33883c4806,
        },
        r0a1: u288 {
            limb0: 0x2cb9fb5a6f22ddf85bbb67b2,
            limb1: 0x83052e786c7d1726a0d266ef,
            limb2: 0x182fd6a7f96cf60a,
        },
        r1a0: u288 {
            limb0: 0x8d0242556acfd03765fa3734,
            limb1: 0x687197f3f6db76f77b3c430f,
            limb2: 0x1e3a3b2204400712,
        },
        r1a1: u288 {
            limb0: 0x665ac822565d4e03e0a81fa,
            limb1: 0xa5cf2b80051a7501c90d8159,
            limb2: 0x1d3e34c079a15dbe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42,
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783,
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377,
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4751a13b4c151b3bdc0f14f,
            limb1: 0x3dd540403dd01d554bca17d6,
            limb2: 0x3034fa7bb574961,
        },
        r0a1: u288 {
            limb0: 0xaf158f192e6f0413810831f4,
            limb1: 0xf46861af7dfd5219d82eada0,
            limb2: 0x1058a44c77204a8,
        },
        r1a0: u288 {
            limb0: 0x90f9e86d12c14b602c92f8,
            limb1: 0xca5900a12b28e311c5820b01,
            limb2: 0x197964887727c75d,
        },
        r1a1: u288 {
            limb0: 0xe85df29e7ec5befff2b94376,
            limb1: 0x1f04c68ba7de1567ff56c821,
            limb2: 0x20a59e9d3ca1448f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c,
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064,
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132,
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x74445a8864a9df5f9eae068,
            limb1: 0xcd7d56a89824f4020d481c90,
            limb2: 0xf6ec8e7ae0937f7,
        },
        r0a1: u288 {
            limb0: 0x11653f6f774757770482d716,
            limb1: 0xebb591253d4499192c6b8346,
            limb2: 0x1538922bdfbcf1b7,
        },
        r1a0: u288 {
            limb0: 0xf9e4a892bc045172e8a361c2,
            limb1: 0x24fb0145675e6e54f07b7dc0,
            limb2: 0x2c4cef3bf856abde,
        },
        r1a1: u288 {
            limb0: 0x8d4246f7051ae6e407bcda2,
            limb1: 0xd80873ce4b857c181e2822c9,
            limb2: 0x459406990186b45,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed,
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99,
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368,
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf8dedc6be3340e676c4aaecb,
            limb1: 0x49d7b6a328425edd288bb339,
            limb2: 0x1aa424cd9573b637,
        },
        r0a1: u288 {
            limb0: 0xc19f72fd3513c1da056cc3b3,
            limb1: 0xad2f99e73dc041fed9666ea3,
            limb2: 0x15a5e82e41ece8d7,
        },
        r1a0: u288 {
            limb0: 0x1f34197a62f0d2d6e1b4d4ee,
            limb1: 0xaeafbf7b18ca425f2a62c4eb,
            limb2: 0x14415e0a48f22543,
        },
        r1a1: u288 {
            limb0: 0xc712ad3e80881334a0b6511d,
            limb1: 0x89288bc318f1dac6f613fd94,
            limb2: 0x17a9274ce2d84c22,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345,
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492,
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593,
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297,
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230,
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f,
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1653ce444e111c5e7241d5c,
            limb1: 0x6f701359ede1f275d762021a,
            limb2: 0x251c7762772e71dc,
        },
        r0a1: u288 {
            limb0: 0x2df9f0182a01be8c9b031ce8,
            limb1: 0x21511e8d3161979bbd1e1791,
            limb2: 0x109b725101abd58d,
        },
        r1a0: u288 {
            limb0: 0xc5faafcbfa167c0ca5d92ae8,
            limb1: 0xc01eddd199da738c4087572,
            limb2: 0x2a4e8a782256b22,
        },
        r1a1: u288 {
            limb0: 0xc34b0f46efd61ff82f19e025,
            limb1: 0xfa611f1dc9f0be3d7ee44eb,
            limb2: 0x11897ee48d91d01e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaec466f752b2227381a7ca33,
            limb1: 0xba9d1561d26680c0baae311b,
            limb2: 0x2aec9a645b417b2e,
        },
        r0a1: u288 {
            limb0: 0xad5bbbd315aa2bc9cbe504,
            limb1: 0x48be2e27a36355e901952853,
            limb2: 0x2eeb582faf28ef83,
        },
        r1a0: u288 {
            limb0: 0x71233da41f4300918b855ae4,
            limb1: 0x3eb683a11f139b7fe18cefa0,
            limb2: 0x1bc63157562ded14,
        },
        r1a1: u288 {
            limb0: 0x4672d0a2240158ad723a51b5,
            limb1: 0x6dbf71b2e63fc2890731bbcd,
            limb2: 0x29b5d1bf2c7b0374,
        },
    },
];

