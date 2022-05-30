#!/bin/bash
filename=$1
dir=./$filename
awk -F: -f awk_script.f $dir > cumulative_multicol.txt
