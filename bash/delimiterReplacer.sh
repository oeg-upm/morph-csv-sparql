#!/bin/bash
delimiter=$1
arg=$2
cols=$3
filename=$4

#echo " Delimiter:$delimiter File:$filename"

#time sed -i -r -e "s/$delimiter/\t/g" ./tmp/$filename
echo DELIMTER:$delimiter ARG:$arg FILE:$filename
awk -F$delimiter "{print $arg}" tmp/csv/$filename > tmp/csv/tmp.txt
mv tmp/tmp.txt tmp/csv/$filename
