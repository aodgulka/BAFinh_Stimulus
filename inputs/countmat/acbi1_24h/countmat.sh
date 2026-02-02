#!/bin/bash

bed="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/filtered/consensus_filt.bed"
bed_control="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/invariant_promoters/invariant_promoters_6h_sort_indexed.bed"

declare -a bams=(
../../bam/acbi1_24h/DMSO_R1_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/acbi1_24h/DMSO_R2_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/acbi1_24h/ACBI1_1_R1_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/acbi1_24h/ACBI1_1_R2_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam)

bedtools multicov -bams ${bams[*]} -bed $bed > acbi1_countmat.tsv
bedtools multicov -bams ${bams[*]} -bed $bed_control > acbi1_countmat_control.tsv
