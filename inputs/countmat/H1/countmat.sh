#!/bin/bash

bed="../../bed/ATAC_peaks/H1/filtered/H1_consensus_filt.bed"

declare -a bams=(
../../bam/H1/ATAC_DMSO_1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_DMSO_2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_DMSO_3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_ACBI1_1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_ACBI1_2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_ACBI1_3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_A4-KD_1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_A4-KD_2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/H1/ATAC_A4-KD_3_1.trim.srt.nodup.no_chrM_MT.bam)

bedtools multicov -bams ${bams[*]} -bed $bed >  H1_filt_indexed_counts.tsv
