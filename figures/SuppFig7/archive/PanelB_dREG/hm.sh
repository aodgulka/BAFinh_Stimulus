#!/bin/bash

signal="/mnt/disk/home/agulka/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/PROseq/V_V_merged.bw"
signal2="/mnt/disk/home/agulka/manuscripts/BAF_stimulus_CellGenomics/inputs/bigwig/PROseq/V_IFN_merged.bw"

declare -a beds=(
veh_NotinGene_dREG.bed
veh_NotinGene_nodREG.bed
veh_inGene_dREG.bed
veh_inGene_nodREG.bed)

declare -a beds2=(
ifn_NotinGene_dREG.bed
ifn_NotinGene_nodREG.bed
ifn_inGene_dREG.bed
ifn_inGene_nodREG.bed)

#computeMatrix reference-point --referencePoint center -a 2000 -b 2000 -R ${beds[*]} -S $signal --missingDataAsZero -o mat_veh.gz -p 12
plotHeatmap -m mat_veh.gz -o PanelB_hm_veh.pdf --heatmapHeight 14 -max 2 -min -2 --colorMap PuOr

#computeMatrix reference-point --referencePoint center -a 2000 -b 2000 -R ${beds2[*]} -S $signal2 --missingDataAsZero -o mat_ifn.gz -p 12
#plotHeatmap -m mat_ifn.gz -o PanelB_hm_ifn.pdf --colorMap coolwarm --heatmapHeight 14 -max 2 -min -2
