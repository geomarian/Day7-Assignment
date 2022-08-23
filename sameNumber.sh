#!/bin/bash -x

array=( )

for i in {1..100}
do
        if [[ $((i%11)) -eq 0 && $i -gt 0 ]]
        then
                array+=($i)
        fi
done

echo "Repeated numbers are: " ${array[@]}
