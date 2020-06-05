#!/bin/bash -x
header=0;
tailer=0
for (( i=1; i<43; i++ ))
do

x=$((RANDOM%2))
if [ $x -eq 0 ]
then
echo "head wins"
((header++))
else
echo "tail wins"
((tailer++))
fi
if [[ "$header" -eq 21 || "$tailer" -eq 21 ]]
then
break;
fi

if [[ "$header" -eq "$tailer"  ||  $((header - tailer)) -le 2  || $((tailer - header)) -le  2 ]]
then 

if [[  $((header - tailer)) -ge 2  || $((tailer - header)) -ge  2 ]]
then
break
fi
fi

done
echo  "header: $header"
echo  "tailer: $tailer"
if [ "$header" -gt "$tailer" ]
then
echo "head wins tail by : $(($header - $tailer)) times"

else
echo "tail wins head by : $(($tailer - $header)) times"
fi







