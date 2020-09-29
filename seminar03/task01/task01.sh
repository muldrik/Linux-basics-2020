#!/bin/bash
NUM="$RANDOM"
echo $NUM
head -c $NUM /dev/urandom > rnd.txt
