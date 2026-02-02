#!/bin/bash

#takes as input a narrowPeak-formatted file and returns a BED file where peaks are resized to summit -/+ 250bp

awk '{print($1"\t"$3+$10-250"\t"$3+$10+250)}' $1 > $2.bed
