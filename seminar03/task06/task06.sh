#! /bin/bash
cat <file.txt | while read -r s  || [ -n "$s" ]
do cnt=$(echo "$s" | wc -w); echo "$s $cnt"; done