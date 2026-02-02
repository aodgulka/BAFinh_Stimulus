#!/bin/bash
bed="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/invariant_promoters/invariant_promoters_6h.bed"

declare -a bams=(
../../bam/brm10uM_6h/GM_6h_DMSO_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_6h/dmso_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_6h/dmso_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_6h/GM_6h_10uM_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_6h/b10uM_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_6h/b10uM_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam)

bedtools multicov -bams ${bams[*]} -bed $bed >  invariant_promoters_6h.tsv
