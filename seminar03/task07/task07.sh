#!/bin/bash
for f in $( find -name "*.cpp"); do g++ $f -o a; ./a; done

