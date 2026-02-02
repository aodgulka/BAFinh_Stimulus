#!/bin/bash

bedtools sort -i $1 > temp1.bed

name=$(basename -s .bed $1)
echo $name

#add column with row numbers
awk '{print $0 "\t" NR}' temp1.bed > $name"_indexed.bed"

rm temp*bed
