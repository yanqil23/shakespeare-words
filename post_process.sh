
#!/bin/bash
export LC_ALL=C
sort -m sorted_*.txt > merged_sort.txt
#merge files

uniq -c merged_sort.txt | sort -nr > countsOfWords.txt
#count word


