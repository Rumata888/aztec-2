#!/bin/bash
set -e
pushd ../barretenberg/build
make -j$(nproc) keygen
./src/aztec/rollup/keygen/keygen 1 4 ../../blockchain/contracts/verifier/keys
popd