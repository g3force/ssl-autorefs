#!/bin/bash

# stop on errors
set -e

if [ "`id -nu`" != "root" ]; then
  echo "Must be called as root"
  exit 1
fi

PKG_MGR_FOUND=0
if which dnf 2>/dev/null >/dev/null; then
  PKG_MGR_FOUND=1
  FLAGS="-y"
  echo "Detected dnf package manager"

  dnf $FLAGS install cmake gcc-c++ zlib-devel protobuf-compiler boost-program-options qt-devel boost-devel
fi

if [ $PKG_MGR_FOUND == 0 ]; then
  echo "Your distribution is not yet supported"
  exit 1
fi

