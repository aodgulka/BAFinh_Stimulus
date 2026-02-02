#!/bin/bash
#inputs are:
	#2. output file name

bed="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/filtered/consensus_filt.bed"

declare -a bams=(
../../bam/titration_6h/GM_6h_DMSO_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/dmso_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/dmso_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b10nM_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b10nM_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b100nM_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b100nM_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/GM_6h_1uM_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b1uM_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b1uM_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/GM_6h_10uM_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b10uM_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/titration_6h/b10uM_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam)


bedtools multicov -bams ${bams[*]} -bed $bed > titration_countmat.tsv
