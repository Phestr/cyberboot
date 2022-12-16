#!/bin/bash
#Array practice


array=( .doc .sh .txt )

echo Choose a filetype to check:

select number in ${array[@]}
do
break
done

loop=y

while [ $loop = y ]
    do
        echo Enter file to check:
        read file
            if test $file$number
            then
                echo File exists.
            else
                touch $file$number
                echo File did not exist, so I made one
            fi

        echo Do you want to check another? Type "y" for yes, any other to quit.
        read loop
    done