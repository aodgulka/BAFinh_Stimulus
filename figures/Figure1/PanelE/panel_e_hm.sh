#!/bin/bash

#generate log2FC ATAC-seq signal track using deepTools bigWig compare utility
bigwigCompare -b1 ~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/brm10uM_6h/b10uM_rep.pooled.fc.signal.bigwig -b2 ~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/brm10uM_6h/dmso_rep.pooled.fc.signal.bigwig -o log2_brm_dmso_6h.bigwig -p 10

# genomic coordinates used for generating heatmaps
declare -a beds=(
chromHMM_Promoter.bed
chromHMM_Enhancer.bed
chromHMM_Insulator.bed)

# signal files used for plotting
declare -a bws=(
~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/brm10uM_6h/dmso_rep.pooled.fc.signal.bigwig
~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/brm10uM_6h/b10uM_rep.pooled.fc.signal.bigwig
log2_brm_dmso_6h.bigwig
~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/ENCODE/GM12878/H3K4me3.bw
~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/ENCODE/GM12878/H3K4me1.bw
~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/ENCODE/GM12878/H3K27ac.bw
~/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/ENCODE/GM12878/CTCF.bw)

# generate matrix input for plotting
computeMatrix reference-point --referencePoint center -a 1000 -b 1000 -R ${beds[*]} -S ${bws[*]} \
       --sortUsingSamples 2 --missingDataAsZero -p 12 -o heatmap_matrix.gz

#plot heatmap
plotHeatmap -m heatmap_matrix.gz -o panel_e_heatmap.pdf  -max 12 12 2 20 10 15 10 -min 0 0 -2 0 0 0 0 --yMax 12 12 2 30 7.5 15 70 --sortUsingSamples 1 \
        --colorList "white,#333333" "white,#333333" "#377EB8,white,#E41A1C" "white,#FF0000" "white,#FF0000" 'white,#FF0000' 'white,#FF0000'

