#!/bin/bash
#first two inputs are control and treatment replicated peak sets
#3rd input is name of consensus peak file

cat $1 $2 > temp.bed
bedtools sort -i temp.bed > temp1.bed
bedtools merge -i temp1.bed > $3.bed

#add column with row numbers
awk '{print $0 "\t" NR}' $3.bed > $3_indexed.bed

rm temp*bed
