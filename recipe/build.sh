#!/bin/bash
set -ex

cmake -B build -G Ninja ${CMAKE_ARGS} \
    -DHDR_HISTOGRAM_BUILD_PROGRAMS=OFF \
    -DHDR_HISTOGRAM_INSTALL_STATIC=OFF \
    -DHDR_HISTOGRAM_INSTALL_SHARED=ON \
    .

cmake --build build
cmake --install build
