#!/bin/bash
read -p "enter the table you want to delete" dtable
read -p "enter the line (any word) you want to delete" wor
sed -i '/'$wor'/d' DBMS/$name/$dtable
bash connect.sh

