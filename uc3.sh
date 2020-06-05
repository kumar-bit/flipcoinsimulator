#!/bin/bash 
header=0;
tailer=0
for (( i=1; i<43; i++ ))
do
if [[ $header -eq 21 || $tailer -eq 21 ]]
then
break;
fi
x=$((RANDOM%2))
if [ $x -eq 0 ]
then
echo "head wins"
let "header++"
else
echo "tail wins"
let "tailer++"
fi
done
echo  "header: $header"
echo  "tailer: $tailer"
if [ $header -gt $tailer ]
then
echo "head wins tail by : $(($header - $tailer)) times"

else
echo "tail wins head by : $(($tailer - $header)) times"
fi

