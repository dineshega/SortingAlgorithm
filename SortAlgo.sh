#!/bin/bash -x

echo " Sorting Arithmetic Computation Problem"

declare -A result

j=0

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

result[one]=$(awk 'BEGIN {print '$a'+('$b'*'$c')}')
y=$(awk 'BEGIN {print '$c'+('$a'/'$b')}')
z=$(awk 'BEGIN {print ('$a'%'$b')+'$c'}')
result[two]=$(awk 'BEGIN {print ('$a'*'$b')+'$c'}')


result[three]=`echo "$y" | awk '{print ($0-int($0)<0.499)?int($0):int($0)+1}'`
result[four]=`echo "$z" | awk '{print ($0-int($0)<0.499)?int($0):int($0)+1}'`

for i in ${result[@]}
do
	res[$j]=$i
	j=$((j+1))
done
echo ${res[@]}
