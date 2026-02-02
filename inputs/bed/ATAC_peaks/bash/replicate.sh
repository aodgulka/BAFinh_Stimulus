#!/bin/bash
#Inputs:
#1. pooled peak calls
#2. rep1 peak calls
#3. rep2 " "
#4. rep3 " "
#5. prefix for out filename

bedtools intersect -a $1 -b $2 -u > temp.bed
bedtools intersect -a temp.bed -b $3 -u > temp1.bed
bedtools intersect -a temp1.bed -b $4 -u > "$5_replicated.bed"

rm temp*bed
