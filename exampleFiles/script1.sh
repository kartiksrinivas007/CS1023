#!/bin/bash

filename=$1
dir=./$filename
awk 'BEGIN{sum=0} {sum = sum + $1} {print(sum)} END{}' $dir > cumulative.txt

