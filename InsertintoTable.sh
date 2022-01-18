#!/bin/bash

echo $name
echo "tables"
ls -l ./DBMS/$name/

read -p "enter the name of the table" Tablename
if [[ ! -f  DBMS/$name/$Tablename ]]; then
    echo "File not found!"
    bash InsertintoTable.sh
fi
 q=`awk '{if (NR==1){print $NF}}' DBMS/$name/$Tablename;`
echo "$q"
x=2
for (( i=1 ; i<=$q ; i++)); do
read -p "enter your col" Fcol
echo "$Fcol"
type=`awk 'BEGIN { FS="," }  { print $(('$x')) }' DBMS/$name/$Tablename;`
echo "$type";
if [[ $type = "int" && "$Fcol" = +([0-9]) || $type = "string" && "$Fcol" = +([a-zA-Z]) ]]; then 
echo -n "$Fcol    ," >> DBMS/$name/$Tablename;

else
 
 echo "wrong input"
q=$[q+1];
fi
x=$[x+2];



done
bash connect.sh
