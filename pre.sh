#!/bin/bash

# Check if shakespeare.tar exists; if not, download it
if [ ! -f shakespeare.tar ]; then
    wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar
fi

# Extract shakespeare.tar
tar -xf shakespeare.tar

find shakespeare/ -type f ! -name 'README' -exec cat {} + > all_plays.txt
# Split all_plays.txt into 5 parts without breaking lines
split -d -n l/5 --additional-suffix=.txt all_plays.txt shakespeare_part_
ls -1 shakespeare_part_0{0..4}.txt > filelist
