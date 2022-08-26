#!/bin/bash
cd TOOLS
git clone https://github.com/lh3/bwa.git
cd bwa
make

# TOOLS/bwa/bwa index hs37d5.fa.gz
