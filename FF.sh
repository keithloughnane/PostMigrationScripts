#!/bin/bash
# Run on windows with Cygwin
echo Begin main loop
#echo "Push newOpenFiles(parsed) into oldOpenFiles(parsed)"
rm -v ./oOF;
mv -v ./nOF ./oOF;
echo "get open files with net files"
net files > ./nOF;
echo "parse those file to remove any "*.???" files, ie. File files, not directories. This is important to make this safe.  "
#TODO change C: to E:
echo 1
cat ./nOF;
cat ./nOF | grep C: > ./nOF;
cat ./nOF;
#cat ./nOF | grep -v *.* ./nOF;
cat ./nOF;
echo "and load those files into newOpenFiles"
echo "Now we have open files from the last run and open files from the new run we can compare "
echo "begin outer loop"
#
while read item; do echo $item;
#
#echo "test1"
echo $item | awk '{print $1}'
ID=$(echo $item | awk '{print $1}')
echo ID $ID
echo $item | awk '{print $1}'
#echo "test2"
#echo $test
#killMSG='net files '$ID' /close'
killMSG0='net files '
killMSG1=$ID
killMSG2=' /close'
killMSG="$killMSG0 $killMSG1"


echo $killMSG > killTestMsg
echo $killMSG
#
#
done < ./nOF;
echo "$line"
echo "Line"
echo "begin inner loop"
#
#
echo "do if"
#if[ = ]
#
echo "t's still open, kill it."
#
#
#
echo "wait before running again"
#
#close main loop, should never get here
exit;
#while read item; do echo $item; done < ./nOF
#