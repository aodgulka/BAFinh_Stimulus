#!/bin/bash
#"standard" peak set (replicated/consensus @ 6h across control and vehicle treatment)
bed1="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/filtered/consensus_filt.bed"
#consensus set across all timepoints and stimuli
bed2="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/GM12878_stimulus/consensus/GM_stim_consensus_indexed.bed"

#control regions (from 6h timepoint - may need to re-identify invariant promoters for this specific experiment)
bed_control="/mnt/disk/home/agulka/projects/poised_enh_manuscript/inputs/bed/ATAC_peaks/invariant_promoters/invariant_promoters_6h.bed"

declare -a bams=(
../../bam/GM12878_stimulus/V_1h_1_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/V_1h_2_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/IFN_1h_1_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/IFN_1h_2_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/Dex_1h_1_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/Dex_1h_2_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/B_1h_1_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/B_1h_2_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/B_IFN_1h_1_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/B_IFN_1h_2_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/B_Dex_1h_1_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam
../../bam/GM12878_stimulus/B_Dex_1h_2_CKDL250011486-1A_232V7NLT3_L2_1.trim.srt.nodup.no_chrM_MT.bam)

bedtools multicov -bams ${bams[*]} -bed $bed1 > GM_stim_1h_counts_1.tsv
bedtools multicov -bams ${bams[*]} -bed $bed2 > GM_stim_1h_counts_2.tsv
bedtools multicov -bams ${bams[*]} -bed $bed_control > GM_stim_1h_invariant_promoter_counts.tsv
