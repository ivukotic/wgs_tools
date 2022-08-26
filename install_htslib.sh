#!/bin/bash

cd TOOLS

git clone https://github.com/samtools/htslib.git 
cd htslib

git submodule update --init --recursive  

autoreconf -I
./configure
make
make install
