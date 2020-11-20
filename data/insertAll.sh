#!/bin/bash
filename='insert_order.txt'
while read -r name; do
# reading each line
var1="source "
var2=".sql"
command="$var1$name$var2"
echo "$filename"
mysql -u root -proot band_finder < "$command"
done < $filename