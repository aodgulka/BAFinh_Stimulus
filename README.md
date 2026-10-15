# Manuscript Code

This repository contains code and processed input datasets required to reproduce the analyses presented in the manuscript:

> **BAF complexes maintain accessibility at stimulus-responsive chromatin and are continuously required for transcriptional stimulus responses**  
> A. O. D. Gulka, K. A. Kang, Z. Zhou, & D. U. Gorkin

Analyses are implemented as **Jupyter notebooks** executed using an **R kernel**.

---

## Repository structure
```
├── figures/        # notebooks and outputs organized by figure and panel
├── inputs/         # processed input datasets used in analyses
├── packages.txt    # list of R and Bioconductor packages used for analyses
└── README.md
```

### `figures/`
Contains code and generated outputs corresponding to each main and supplementary figure.  
Subdirectories are organized by **figure number**, with additional nesting by **figure panel** where appropriate. Each directory contains the notebook(s) used to generate the associated analyses and visualizations.

### `inputs/`
Contains **processed input data** used throughout the analyses, including:
- genomic coordinates and annotations
- differential expression and differential accessibility result tables
- feature matrices from machine-learning-based analyses

The machine learning framework used in this study is documented in a standalone repository:  
https://github.com/aodgulka/accessibility-prediction-from-chipseq

## Computational environment

Analyses were developed using **R (v4.2.2)** and Bioconductor packages. A list of packages is included.

---

Raw sequencing data (FASTQs) can be accessed via GEO: GSE318082 (ATAC-seq), GSE318083 (RNA-seq), GSE_
Processed signal tracks can be viewed using the UCSC Genome Browser: https://genome.ucsc.edu/s/agulka/hg38_GM12878_BAFinh_Stimulus

---
