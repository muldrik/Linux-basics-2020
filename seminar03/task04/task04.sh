#! /bin/bash

SUM=0; for i in `cat numbers.txt`; do SUM=$(($SUM + $i)); done; echo $SUM