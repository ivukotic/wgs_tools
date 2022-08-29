	#!/bin/bash -x
	echo "Generating microarray file for format 23andMe_V3"
	python3 "WGSExtractv3/program/aconv.py" 23andMe_V3 "constantin_hs37d5_CombinedKit.txt" "constantin_hs37d5"
	"zip" -mj "constantin_hs37d5_23andMe_V3.zip" "constantin_hs37d5_23andMe_V3.txt"

	echo "Generating microarray file for format 23andMe_V5"
	python3 "WGSExtractv3/program/aconv.py" 23andMe_V5 "constantin_hs37d5_CombinedKit.txt" "constantin_hs37d5"
	"zip" -mj "constantin_hs37d5_23andMe_V5.zip" "constantin_hs37d5_23andMe_V5.txt"

	echo "Generating microarray file for format Ancestry_V2"
	python3 "WGSExtractv3/program/aconv.py" Ancestry_V2 "constantin_hs37d5_CombinedKit.txt" "constantin_hs37d5"
	"zip" -mj "constantin_hs37d5_Ancestry_V2.zip" "constantin_hs37d5_Ancestry_V2.txt"

	echo "Generating microarray file for format FTDNA_V3"
	python3 "WGSExtractv3/program/aconv.py" FTDNA_V3 "constantin_hs37d5_CombinedKit.txt" "constantin_hs37d5"
	"zip" -mj "constantin_hs37d5_FTDNA_V3.zip" "constantin_hs37d5_FTDNA_V3.csv"
    
	echo "Generating microarray file for format MyHeritage_V2"
	python3 "WGSExtractv3/program/aconv.py" MyHeritage_V2 "constantin_hs37d5_CombinedKit.txt" "constantin_hs37d5"
	"zip" -mj "constantin_hs37d5_MyHeritage_V2.zip" "constantin_hs37d5_MyHeritage_V2.csv"
