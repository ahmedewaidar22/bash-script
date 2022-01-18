#!/bin/bash
read -p "enter the table you want to update" utable
cat DBMS/$name/$utable
read -p "enter the data you want to update" data
read -p "repalce with " replac
find ./  -type f -name "$utable" | xargs sed -i -e "s/$data/$replac/g"
cat DBMS/$name/$utable
bash connect.sh

