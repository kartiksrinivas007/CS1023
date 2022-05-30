#!/bin/bash

#filename=$1
dir=$1
awk 'BEGIN{sum=0} {sum = sum + $1} {print(sum)} END{}' $dir > cumulative.txt

