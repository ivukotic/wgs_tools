#!/bin/bash
bwa mem -t 16 REFERENT/hs37d5.fa.gz CONSTANTIN/NG1TJP54IK_1.fastq.gz CONSTANTIN/NG1TJP54IK_2.fastq.gz |  bgzip -@ 16 > CONSTANTIN/constantin_v37d5_raw.bam