#!/bin/bash
export LC_ALL=C
sort -m shakespeare_part_*_processed.txt > merged_sorted.txt

uniq -c merged_sorted.txt | sort -nr > countsOfWords.txt



