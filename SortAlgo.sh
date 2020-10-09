#!/bin/bash -x

echo " Sorting Arithmetic Computation Problem"

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

x=$(awk 'BEGIN {print '$a'+('$b'*'$c')}')