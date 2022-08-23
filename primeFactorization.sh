#!/bin/bash -x

input=60
k=0

    	            while [[ $(($input%2)) -eq 0 ]]
                        do
                        primeFactor[k]=2
			k=$(($k+1))			
                        	input=$(($input/2))
			done
				for (( j=3; j<=$input; ))
			do
				
				if [ $(($input%$j)) -eq 0 ]
			then
				
				num=$(($input/$j))
				primeFactor[k]=$j
				k=$(($k+1))

			fi
	j=$(($j+2))
done
echo ${primeFactor[@]}
