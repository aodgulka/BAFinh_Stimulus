#!/bin/bash

files="/mnt/disk/home/agulka/projects/poised_enh_manuscript/scratch/stim_rna/rsem_files.txt"

while read -r p; do
    ln -s "$p" .
done < $files

