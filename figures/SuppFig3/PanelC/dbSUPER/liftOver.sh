#!/bin/bash
hg19_coord=GM12878.bed

/mnt/disk/share/software/ucsc_utilities/liftOver $hg19_coord  ~/software/for_ucsc_utilites/chain/hg19ToHg38.over.chain.gz hg38_GM12878.bed unmapped.bed
