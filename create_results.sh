#!/bin/bash
i=1
#start the counter at 1

while [ $i -le 10 ]
#continue while i is less than or equal to 10.

do
#start the repeated commands
    echo "Our hypothesis is right" > important_results${i}.txt
    #create a numbered file containing the required text.

    i=$(( i+1))
    #increase i by 1.

done
#end the loop
