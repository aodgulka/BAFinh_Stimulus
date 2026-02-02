#!/bin/bash

tail -n +2 $1 > temp_dat
awk '{tss=$7;print("chr"$3"\t"tss-500"\t"tss+500)}' temp_dat > coords
awk '{print $8"\t"0}' temp_dat > gene
awk '{if($6=="1") $6 = "+"; else if($6=="-1") $6 = "-"; print $6}' temp_dat > strand

paste coords gene strand > $2
rm coords gene strand temp_dat
