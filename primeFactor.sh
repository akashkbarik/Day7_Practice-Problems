#! /bin/bash -x

#TO TAKE NUMBER FROM USER
read -p "Enter a number: " num

#VARIABLE
j=0

#TO FIND PRIME FACTORS AND STORE IT INTO ARRAY
function primeFactor()
{
	array=$1
	for (( i=2; $i<=$num; i++ ))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			array[j]=$i
			((j++))
			num=$(($num/$i))
		fi

		if [ $(($num%$i)) -eq 0 ]
		then
			((i--))
		fi
	done
	echo "${array[@]}"
}

#PRINT
echo "Prime factors of Number are" "$( primeFactor $((num)))"
