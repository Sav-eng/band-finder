#!/bin/bash
# set variables, such as USER, PASS, SRC etc ...
for file in `ls  *.csv`
do
echo "$file"
$sed 's/.csv//' ${file}
echo "processing file [" $file "] to table [" $file "] ...";
mysql -u root -proot -h localhost -D band_finder <<EOF

load data infile '${file}'
 into table ${file}
 fields terminated by ','
 enclosed by '"'
 ignore 1 lines;
 \q
EOF
done

# LOAD DATA LOCAL INFILE 'C:/Users/Team136/Source/Repos/band-finder/data/send.csv' INTO TABLE send FIELDS TERMINATED BY ',' IGNORE 1 LINES;