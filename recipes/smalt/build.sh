#!/bin/bash

export C_INCLUDE_PATH=${PREFIX}/include
export LIBRARY_PATH=${PREFIX}/lib
export PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig

if [ `uname` == Darwin ]; then
    ./configure --prefix=${PREFIX} --build=x86_64-apple-darwin --with-bambamc
else
    ./configure --prefix=${PREFIX} --with-bambamc
fi

make 
make install
