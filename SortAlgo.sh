#!/bin/bash -x

echo " Sorting Arithmetic Computation Problem"

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

y=$(awk 'BEGIN {print '$c'+('$a'/'$b')}')

y1=`echo "$y" | awk '{print ($0-int($0)<0.499)?int($0):int($0)+1}'`