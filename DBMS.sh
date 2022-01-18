#!/bin/bash
select input in CreateDatabase  ListDatabases ConnectToDatabases DropDatabase
do
	case $input in
		CreateDatabase )
			echo "you selected Create Database";
			 bash create.sh
			;;
		ListDatabases )
			ls -l ./DBMS
			;;
		ConnectToDatabases )
			echo "tesr";
			bash connect.sh
			;;
		 
		DropDatabase )
			echo "drop";
			bash DropDB.sh
			;;
			*)
			echo "enter correct answer";
			;;
	esac
done
				

