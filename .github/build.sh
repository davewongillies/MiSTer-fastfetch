#!/bin/bash
set -euo pipefail

STARTDIR=$PWD

get() {
  wget "https://github.com/fastfetch-cli/fastfetch/archive/refs/tags/${FASTFETCH_VERSION}.tar.gz"
  tar xf "${FASTFETCH_VERSION}.tar.gz"
  rm -f "${FASTFETCH_VERSION}.tar.gz"
}

build() {
  cd "fastfetch-${FASTFETCH_VERSION}"
  mkdir build ; cd build
  cmake \
    -DCMAKE_C_COMPILER=arm-linux-gnueabihf-gcc \
    -DCMAKE_CXX_COMPILER=arm-linux-gnueabihf-g++ \
    -DCMAKE_SYSTEM_NAME=Linux \
    -DCMAKE_SYSTEM_PROCESSOR=armv7l \
    -DCMAKE_EXE_LINKER_FLAGS="-static" \
    -DBUILD_SHARED_LIBS=OFF \
    ..
  cmake --build . --target fastfetch
  cp "$(find . -type f -name fastfetch)"  "${STARTDIR}/Scripts/.config/fastfetch"
}

cleanup() {
  cd "${STARTDIR}"
  rm -rf "fastfetch-${FASTFETCH_VERSION}"
}

get
build
cleanup
