#!/bin/bash

# Check if shakespeare.tar exists; if not, download it
if [ ! -f shakespeare.tar ]; then
    wget http://www.textfiles.com/etext/AUTHORS/SHAKESPEARE/shakespeare.tar
fi

# Extract shakespeare.tar
tar -xf shakespeare.tar

# Concatenate all plays into a single file
cat shakespeare/* > all_plays.txt

# Split all_plays.txt into 5 parts without breaking lines
split --number=l/5 --additional-suffix=.txt --numeric-suffixes=1 all_plays.txt>

echo "PRE script completed."
