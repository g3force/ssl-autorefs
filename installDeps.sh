#!/bin/bash

# stop on errors
set -e

if [ "`id -nu`" != "root" ]; then
  echo "Must be called as root"
  exit 1
fi

if which dnf>/dev/null; then
  echo "Detected dnf package manager"
  echo
  echo erforce
  dnf install cmake protobuf-compiler qt5-devel luajit-devel gcc-c++ lua-devel
  echo
  echo tigers
  dnf install java-1.8.0-openjdk-devel maven
  echo
  echo cmdragons
  dnf install cmake protobuf-compiler wxBase3 wxGTK3-devel
fi

if which apt-get>/dev/null; then
  echo "Detected apt-get package manager"
  echo erforce
  apt-get install cmake protobuf-compiler qtbase5-dev libluajit-5.1-dev g++

  echo tigers
  apt-get install openjdk-8-jdk maven

  echo cmdragons
  apt-get install libwxbase3.0-dev libwxgtk3.0-dev cmake protobuf-compiler
fi

