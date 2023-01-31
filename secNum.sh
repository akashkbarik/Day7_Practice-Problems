#!/bin/bash -x

array=()
valid=True
count=0

while [ $valid ]
do
        var=$(( RANDOM%900+100 ))
        array+=($var)
        count=$(( $count+1 ))
        if [ $count -eq 10 ]
        then
                break
        fi
done
echo "array in orginal order-" ${array[@]}

length=${#array[@]}
echo "length of an array-" $length

for ((i=0;i<length;i++))
do
	for ((j=i+1;j<length;j++))
	do
		if [ ${array[i]} -lt ${array[j]} ]
		then
			temp=${array[i]};
			array[i]=${array[j]};
			array[j]=$temp;
		fi
	done
done

echo "The Second Smallest number Is : ${array[$leng-2]}"
echo "The Second Largest Number Is :${array[1]}"
