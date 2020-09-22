#! /bin/bash
grep '"https.*"' urls.txt -n -o | sed -e 's/\"//g' -e 's/^/<</' -e 's/$/>>/'
