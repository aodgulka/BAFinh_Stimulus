#!/bin/bash

GENCODE=/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/GENCODE/gencode.v47.annotation.gtf.gz

#filter GTF to only include 'gene' features
zcat $GENCODE | awk '{if($3=="gene"){print $0}}' | gzip -c > gencode.v47.annotation_genes.gtf.gz

#create file with coordinates for 1kb windows centered around each TSS (i.e., TSS +/- 500bp)
zcat gencode.v47.annotation_genes.gtf.gz | awk '{if($7=="+"){tss=$4}else{tss=$5}; print($1"\t"tss-500"\t"tss+500)}' > coords.1kb
#similarly for TSS +/- 1kb
zcat gencode.v47.annotation_genes.gtf.gz | awk '{if($7=="+"){tss=$4}else{tss=$5}; print($1"\t"tss-1000"\t"tss+1000)}' > coords.2kb

#temp files containing gene and score(=0)/strand metadata, respectively
zcat gencode.v47.annotation_genes.gtf.gz | awk -F "; " '{print($4)}' | awk -F "\"" '{print($2)}' > genes
zcat gencode.v47.annotation_genes.gtf.gz | awk '{print("0\t"$7)}' > strand

paste coords.1kb genes strand > gencode.v47.annotation.genes_tss.1kb.bed
paste coords.2kb genes strand > gencode.v47.annotation.genes_tss.2kb.bed

rm coords*
rm genes
rm strand
