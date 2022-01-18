#!bin/bash

echo "all database";
ls -l ./DBMS
read -p"enter name of the datebase you want to delete :" name
rm  -ir ./DBMS/$name
DBMS.sh

