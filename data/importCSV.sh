#!/bin/bash
filename='insert_order.txt'
while read -r name; do
# reading each line
var1="LOAD DATA LOCAL INFILE "
var2=".csv INTO TABLE $name FIELDS TERMINATED BY ',' IGNORE 1 LINES;"
command="$var1$name$var2"
path="C:\Users\Windows8.1\Desktop\band-finder\data"
echo "$name"
echo "$command"
mysql -u root -proot -h localhost -D band_finder <<EOF

load data infile 'C:/Users/Windows8.1/Desktop/band-finder/data/${name}.csv'
 into table ${name}
 fields terminated by ','
 enclosed by '"'
 ignore 1 lines;
 \q
EOF
# mysqlimport -h localhost -P3306 -u root -p band_finder --ignore-lines=1 --lines-terminated-by="\n" --fields-terminated-by="," --fields-enclosed-by="\""  -c title,author,created_at "/home/petehouston/data/articles.csv"
done < $filename
# LOAD DATA LOCAL INFILE 'C:/Users/Team136/Source/Repos/band-finder/data/send.csv' INTO TABLE send FIELDS TERMINATED BY ',' IGNORE 1 LINES;