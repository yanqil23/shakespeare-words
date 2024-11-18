#!/bin/bash
./pre.sh
# serial loop to do what job1sumDataFiles.sub does in parallel
for file in $(cat filelist); do
    ./process_file.sh $file
done

./post_process.sh
