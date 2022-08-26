#!/bin/bash
samtools view -uh --no-PG CONSTANTIN/constantin_v37d5_raw.bam |   samtools fixmate -m -O bam -@ 16 - CONSTANTIN/constantin_v37d5_fixmate.bam

samtools sort -T CONSTANTIN/ -m 1800M -@ 16 /CONSTANTIN/constantin_v37d5_fixmate.bam |   samtools markdup -s -d 2500 -@ 16 - CONSTANTIN/constantin_v37d5.bam 2> CONSTANTIN/constantin_v37d5_markdup.txt

samtools index CONSTANTIN/constantin_v37d5.bam