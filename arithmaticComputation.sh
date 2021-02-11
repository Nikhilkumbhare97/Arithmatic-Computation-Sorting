#!/bin/bash -x

echo "Enter the Three Inputs"
read a b c
echo "Three inputs are : "$a $b $c

result1=$(( $a + $b * $c ))
echo "Result for the first computation : "$result1

result2=$(( $a * $b + $c ))
echo "Result for the second computation : "$result2

result3=`expr $c+$a/$b  | bc -l`
echo "Result for the third computation : "$result3

result4=$(( $a % $b + $c ))
echo "Result for the fourth computation : "$result4
