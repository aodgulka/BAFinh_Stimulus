#!/bin/bash
#concatenates, sorts, and merges all .bed files in directory (should be replicated peak sets)

cat *bed > temp.bed
bedtools sort -i temp.bed > temp1.bed
bedtools merge -i temp1.bed > $1.bed

#add column with row numbers
awk '{print $0 "\t" NR}' $1.bed > $1_indexed.bed

rm temp*bed
