#! /bin/bash
NUM1="$RANDOM"
NUM2="$RANDOM"
NUM=$((NUM1*NUM2))
factor $NUM | grep -qE '^(.*): \1$' && echo "$NUM true" || echo "$NUM false"