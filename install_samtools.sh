#!/bin/bash
cd /TOOLS
git clone https://github.com/samtools/samtools.git
cd samtools
autoheader
autoconf -Wno-syntax
./configure
    make
make install