#!/bin/bash

bed="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/HepG2/invariant_promoters/hepg2_invariant_promoters_24h.bed"

declare -a bams=(
../../bam/HepG2/DMSO_1_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/HepG2/DMSO_2_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/HepG2/BRM_1_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/HepG2/BRM_2_CKDL250003458-1A_22YNHYLT3_L7_1.trim.srt.nodup.no_chrM_MT.bam)

bedtools multicov -bams ${bams[*]} -bed $bed >  hepg2_invariant_promoters.tsv
