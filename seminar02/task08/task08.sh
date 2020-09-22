#! /bin/bash
egrep '\bthe\b' hamlet.txt --ignore-case -o | wc -w

