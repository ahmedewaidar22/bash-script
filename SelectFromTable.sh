#!/bin/bash
read -p "enter the name of table" tablename
select ch in  selectall selectcoulm
do 
	case $ch in 
		selectall )
		cat ./DBMS/$name/$tablename
			;;
		selectcoulm )
		read -p "enter name you want to search" colname
		grep id  DBMS/$name/$tablename
		grep $colname DBMS/$name/$tablename
			;;
			* )
		 echo "wrong" ;;	
	esac
done 
bash connect.sh
