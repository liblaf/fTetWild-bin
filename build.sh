#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

case $RUNNER_OS in
  Linux) ;;
  Windows) exit 1 ;;
  macOS) ;;
esac

mkdir -p -v "build"
pushd "build"
cmake ..
make -j
cp -v FloatTetwild_bin "fTetWild-${RUNNER_ARCH}-${RUNNER_OS}"
