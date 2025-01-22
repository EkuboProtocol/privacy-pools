#!/usr/bin/env bash

set -euxo pipefail

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    deploy \
    --min-fee 0

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    approve \
    --token-address 0x1db4082b40df66ec7454cc3951cb88a73fc400006f8f7946f7c44f2b8fa6ac8 \
    --spender 0x3f39be74ae84252687e6f7d0e20cde2671a1ff225e6b926f114e617566406aa \
    --amount 2000

cargo run -p asp -- \
    --contract-address 0x3f39be74ae84252687e6f7d0e20cde2671a1ff225e6b926f114e617566406aa

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    deposit \
    --pool-address 0x3f39be74ae84252687e6f7d0e20cde2671a1ff225e6b926f114e617566406aa \
    --secret 123 \
    --nullifier 321 \
    --amount 100

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    deposit \
    --pool-address 0x3f39be74ae84252687e6f7d0e20cde2671a1ff225e6b926f114e617566406aa \
    --secret 456 \
    --nullifier 654 \
    --amount 100

sncast call \
    --url http://localhost:5050 \
    --contract-address 0x1db4082b40df66ec7454cc3951cb88a73fc400006f8f7946f7c44f2b8fa6ac8 \
    --function balance_of \
    --calldata 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1

cargo run -p cli -- \
    --address 0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691 \
    --private-key 0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9 \
    withdraw \
    --pool-address 0x3f39be74ae84252687e6f7d0e20cde2671a1ff225e6b926f114e617566406aa \
    --secret 456 \
    --nullifier 654 \
    --amount 100 \
    --recipient 0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1 \
    --merkle-tree-root 0xbb3d60c6bc329112da6fead3d3099e5dbf5a5c13714b8cbd10dd8a575efadc3 \
    --fee 0 \
    --refund-amount 75
