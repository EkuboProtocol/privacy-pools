#!/usr/bin/env bash

set -euxo pipefail

sncast declare \
    --contract-name PoolAccount

sncast deploy \
    --class-hash 0x0794de18380135ccb1a4fe82909ac8c01a63b9776620d435144944094fce06e6 \
    --constructor-calldata 0x0374f7fcb50bc2d6b8b7a267f919232e3ac68354ce3eafe88d3df323fc1deb23
