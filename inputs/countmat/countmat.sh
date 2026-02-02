#!/bin/bash
#inputs are:
	#1. Directory containing BAM files
	#2. Indexed BED file
	#3. output file name

declare -a bams=("$1"/*.bam)
#echo ${bams[2]}
bedtools multicov -bams ${bams[*]} -bed $2 > $3
