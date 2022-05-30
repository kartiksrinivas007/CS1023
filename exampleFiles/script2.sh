#!/bin/bash
#filename=$1
dir=$1
awk -F: -f awk_script.f $dir > cumulative_multicol.txt
