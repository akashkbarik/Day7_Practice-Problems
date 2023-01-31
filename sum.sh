#!/bin/bash -x

count=(-6 4 2)
sum=0

for i in ${count[@]}
do
	sum=$(( $sum+$i ))
done

echo "Sum of three integer - -6 +4 +2 " $sum
