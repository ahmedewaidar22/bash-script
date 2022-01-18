#!/bin/bash
read -p "enter the table you want to delete " dtable
rm -i DBMS/$name/$dtable
bash connect.sh
