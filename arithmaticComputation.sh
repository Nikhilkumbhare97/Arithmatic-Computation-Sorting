#!/bin/bash

echo "Enter the Three Inputs"
read a b c
echo "Three inputs are : "$a $b $c

declare -A resultArray
result1=$(( $a + $b * $c ))
echo "Result for the first computation : "$result1
resultArray[comp1]=$result1

result2=$(( $a * $b + $c ))
echo "Result for the second computation : "$result2
resultArray[comp2]=$result2

result3=`expr $c+$a/$b | bc -l`
echo "Result for the third computation : "$result3
resultArray[comp3]=$result3

result4=$(( $a % $b + $c ))
echo "Result for the fourth computation : "$result4
resultArray[comp4]=$result4

echo "${!resultArray[@]}"
echo "${resultArray[@]}"

for (( i=1; i<=4; i++ ))
do
	array[$i]=${resultArray[comp$i]}
done

echo "Array Values : "${array[@]}
