#!/bin/bash

files=rsem_files.txt

while read -r p; do
    ln -s "$p" .
done < $files

