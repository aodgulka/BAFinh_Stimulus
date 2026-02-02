#!/bin/bash

bed="../../bed/ATAC_peaks/HepG2/consensus/hepg2_consensus_indexed.bed"

declare -a bams=(
../../bam/HepG2/DMSO_1_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/HepG2/DMSO_2_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/HepG2/BRM_1_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/HepG2/BRM_2_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam)

bedtools multicov -bams ${bams[*]} -bed $bed >  hepg2_consensus_indexed_counts.tsv
