#!/bin/bash
item1
while read item0; do echo $item0;
#
#echo "test1"
echo item0 $item0
$item1=$item0
echo item1 $item1
echo ---------------------------------
done < ./find_.TXT
