#!/usr/bin/env bash

set -euxo pipefail

starknet-devnet --seed 0

sncast declare --contract-name ERC20Upgradeable
sncast declare --contract-name UniversalECIP
sncast declare --contract-name Groth16VerifierBN254
sncast declare --contract-name Pool

sncast deploy \
    --class-hash 0x06da199f800c938bbb9a7427dbb052e898d2608651fa69dfd20eaa94f9286f6b \
    --constructor-calldata \
    0 0x74657374 4\
    0 0x74657374 4\
    1000000 0 \
    0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691

sncast deploy \
    --class-hash 0x0260c274f472d42fbda9beef7752d1dfa278a197be04a1e1103b4223bdd51264

sncast deploy \
    --class-hash 0x054ef1247393c0ce7d4d564bd8c80e6c9b313730fa2f5f5f2d93dc9aa82f93bc

sncast deploy \
    --class-hash 0x0628c42c80bcad59bab07dceae4d4f6b049f66c6145bada258d3ce57fdc69ae6 \
    --constructor-calldata \
    0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    0x0694adafd22805dab1c2904da2bc9d0e64e93cb15829132f5fcc60f5d586e068 \
    0x0578c57faca98e0025783d998d6dd56d1fd13b90ba06b328d9d49a8ea128219a \
    100 0

sncast invoke \
    --contract-address 0x0694adafd22805dab1c2904da2bc9d0e64e93cb15829132f5fcc60f5d586e068 \
    --function approve \
    --calldata \
    0x066f95ca188ad5c1d7cffcc8918891c4d774681881ffac180111f26680d23b70 \
    1000000 0

cargo run -p asp -- \
    --contract-address 0x066f95ca188ad5c1d7cffcc8918891c4d774681881ffac180111f26680d23b70

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    deposit \
    --pool-address 0x066f95ca188ad5c1d7cffcc8918891c4d774681881ffac180111f26680d23b70 \
    --secret 123 \
    --nullifier 321 \
    --amount 100000

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    deposit \
    --pool-address 0x066f95ca188ad5c1d7cffcc8918891c4d774681881ffac180111f26680d23b70 \
    --secret 456 \
    --nullifier 654 \
    --amount 100000

sncast call \
    --contract-address 0x0694adafd22805dab1c2904da2bc9d0e64e93cb15829132f5fcc60f5d586e068 \
    --function balance_of \
    --calldata 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    withdraw \
    --pool-address 0x066f95ca188ad5c1d7cffcc8918891c4d774681881ffac180111f26680d23b70 \
    --secret 456 \
    --nullifier 654 \
    --amount 100000 \
    --refund-secret 789 \
    --refund-nullifier 987 \
    --refund-amount 75000 \
    --recipient 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1 \
    --merkle-tree-root 0x2e86c947108ecc9f7d571e30ae2f7c92a73475918b2c69287c8ee48621153d3c \
    --fee 100

sncast call \
    --contract-address 0x0694adafd22805dab1c2904da2bc9d0e64e93cb15829132f5fcc60f5d586e068 \
    --function balance_of \
    --calldata 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1

sncast invoke \
    --contract-address 0x066f95ca188ad5c1d7cffcc8918891c4d774681881ffac180111f26680d23b70 \
    --function withdraw_fee \
    --calldata 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1 100 0

sncast call \
    --contract-address 0x0694adafd22805dab1c2904da2bc9d0e64e93cb15829132f5fcc60f5d586e068 \
    --function balance_of \
    --calldata 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1
