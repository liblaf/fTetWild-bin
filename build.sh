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
make
cp -v FloatTetwild_bin "fTetwild-${RUNNER_ARCH}-${RUNNER_OS}"
