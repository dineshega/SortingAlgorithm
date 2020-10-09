#!/bin/bash -x

echo " Sorting Arithmetic Computation Problem"

declare -A result

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

result[one]=$(awk 'BEGIN {print '$a'+('$b'*'$c')}')
y=$(awk 'BEGIN {print '$c'+('$a'/'$b')}')
z=$(awk 'BEGIN {print ('$a'%'$b')+'$c'}')
result[two]=$(awk 'BEGIN {print ('$a'*'$b')+'$c'}')


result[three]=`echo "$y" | awk '{print ($0-int($0)<0.499)?int($0):int($0)+1}'`
result[four]=`echo "$z" | awk '{print ($0-int($0)<0.499)?int($0):int($0)+1}'