#!/bin/bash
filename='table_name.txt'
while read -r name; do
# reading each line
var1="create"
var2=".sql"
filename="$var1$name$var2"
echo "$filename"
mysql -u root -proot band_finder < "$filename"
done < $filename