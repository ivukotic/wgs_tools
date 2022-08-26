#!/bin/bash
cd TOOLS
git clone https://github.com/samtools/samtools.git
autoheader
autoconf -Wno-syntax
./configure
    make
make install