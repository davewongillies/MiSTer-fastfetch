#!/bin/bash
set -euo pipefail

STARTDIR=$PWD

get() {
  wget -q "https://github.com/fastfetch-cli/fastfetch/archive/refs/tags/${FASTFETCH_VERSION}.tar.gz"
  tar xf "${FASTFETCH_VERSION}.tar.gz"
  rm -f "${FASTFETCH_VERSION}.tar.gz"
}

build() {
  cd "fastfetch-${FASTFETCH_VERSION}"
  mkdir build ; cd build
  cmake \
    -DCMAKE_C_COMPILER=arm-linux-gnueabihf-gcc \
    -DCMAKE_SYSTEM_NAME=Linux \
    -DCMAKE_SYSTEM_PROCESSOR=armv7l \
    -DCMAKE_EXE_LINKER_FLAGS="-static" \
    -DBUILD_SHARED_LIBS=OFF \
    ..
  cmake --build . --target fastfetch
  cp -v "$(find . -type f -name fastfetch)"  "${STARTDIR}/Scripts/.config/fastfetch"
  "${STARTDIR}/Scripts/.config/fastfetch/fastfetch"
}

cleanup() {
  cd "${STARTDIR}"
  rm -rf "fastfetch-${FASTFETCH_VERSION}"
}

get
build
cleanup
