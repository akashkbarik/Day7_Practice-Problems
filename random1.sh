#!/bin/bash -x

#!/bin/bash

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
echo ${array[0]}
length=${#array[@]}
echo "length of an array-" $length

function secsmallest()
{
  min=${array[0]}
  sec_min=${array[0]}
	for ((i=0;i<$length;i++))
	do

		if [ ${array[i]} -lt $min ]
		then
			sec_min=$min;
			min=${array[i]}
		elif [[ ${array[i]} -lt $sec_min  &&  ${array[i]} != $min ]]
		then
			sec_min=${array[i]}
		fi

	done
			echo "The Second Smallest Number Is $sec_min"

}

function seclargest()
{
  max=${array[0]}
  sec_max=${array[0]}
	for ((i=0;i<$length;i++))
	do

		if [ ${array[i]} -gt $max ]
		then
			sec_max=$max;
			max=${array[i]}
		elif [[ ${array[i]} -gt $sec_max  &&  ${array[i]} != $max ]]
		then
			sec_max=${array[i]}
		fi

	done
			echo "The Second largest Number Is $sec_max"

}

	ss=$(secsmallest);
	echo $ss
	sl=$(seclargest);
	echo $sl

