#!/bin/bash

git clone https://github.com/samtools/htslib.git
mv htslib htslib-source 
cd htslib-source

git submodule update --init --recursive  

autoreconf -I
./configure -prefix=/TOOLS/htslib
make
make install

rm -rf htslib-source
