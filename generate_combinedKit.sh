#!/bin/bash
"bcftools" mpileup -B -I -C 50 -T "WGSExtractv3/program/microarray/All_SNPs_GRCh37_ref.tab.gz" -f "WGSExtractv3/reference/genomes/hs37d5.fa.gz" -Ou "constantin_hs37d5.bam" |   "bcftools" call --ploidy-file "WGSExtractv3/program/microarray/ploidy.txt" -V indels -m -P 0 --threads 16 -Oz -o "WGSExtractv3/temp/CombKit_called.vcf.gz"
	
"tabix" -p vcf "WGSExtractv3/temp/CombKit_called.vcf.gz"
	
"bcftools" annotate -Oz -a "WGSExtractv3/program/microarray/All_SNPs_GRCh37_ref.tab.gz" -c CHROM,POS,ID "WGSExtractv3/temp/CombKit_called.vcf.gz" > "WGSExtractv3/temp/CombKit_annotated.vcf.gz"
	
"tabix" -p vcf "WGSExtractv3/temp/CombKit_annotated.vcf.gz"
	
"bcftools" query -f '%ID        %CHROM  %POS[   %TGT]
	' "WGSExtractv3/temp/CombKit_annotated.vcf.gz" -o "WGSExtractv3/temp/CombKit_result.tab"
	
"sed" 's/chr//; s/      M       /       MT      /g; s/\///; s/\.\.$/--/; s/TA$/AT/; s/TC$/CT/; s/TG$/GT/; s/GA$/AG/;     s/GC$/CG/; s/CA$/AC/' "WGSExtractv3/temp/CombKit_result.tab" | "sort" -t $'       ' -k2,3 -V > "WGSExtractv3/temp/CombKit_result_sorted.tab"
	
"cat" "WGSExtractv3/program/microarray/raw_file_templates/head/23andMe_V3.txt" "WGSExtractv3/temp/CombKit_result_sorted.tab" > "constantin_hs37d5_CombinedKit.txt"
	
"zip" -j "constantin_hs37d5_CombinedKit.zip" "constantin_hs37d5_CombinedKit.txt"
