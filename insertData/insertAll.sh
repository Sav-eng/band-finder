#!/bin/bash
filename='insert_order.txt'
while read -r name; do
# reading each line
var1="insert"
var2=".sql"
filename="$var1$name$var2"
echo "$filename"
mysql -u root -proot band_finder < "$filename"
done < $filename