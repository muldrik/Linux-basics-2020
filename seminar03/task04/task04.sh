#! /bin/bash
for i in `cat numbers.txt`; do echo $(seq -s "*" 1 $i | bc);  done;
