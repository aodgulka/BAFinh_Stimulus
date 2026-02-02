#!/bin/bash
#inputs are:
	#2. output file name

bed="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/invariant_promoters/invariant_promoters_6h_sort_indexed.bed"

declare -a bams=(
../../bam/brm10uM_timecourse/DMSO_30_r1_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_30_r2_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_60_r1_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_60_r2_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_120_r1_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_120_r2_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/GM_6h_DMSO_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/dmso_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/dmso_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/AODG2-DMSO-24h_S2_merged_R1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_24h_r2_CKDL210027316-1a-N706-AK417_H7W5VDSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_R1_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/DMSO_R2_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_30_r1_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_30_r2_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_60_r1_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_60_r2_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_120_r1_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_120_r2_CKDL230021055-1A_HCLYYDSX7_L4_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/GM_6h_10uM_CKDL230005607-1A_HT2MHDSX5_L3_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/b10uM_1_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/b10uM_2_CKDL240002388-1A_H2TWCDSXC_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/AODG4-BRM014-10uM-24h_S4_merged_R1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM_10uM_24h_r2_CKDL210027316-1a-N710-AK417_H7W5VDSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM014_10_R1_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/brm10uM_timecourse/BRM014_10_R2_CKDL220014373-1A_HY377DSX3_L1_1.trim.srt.nodup.no_chrM_MT.bam)


bedtools multicov -bams ${bams[*]} -bed $bed > timecourse_countmat_control.tsv
