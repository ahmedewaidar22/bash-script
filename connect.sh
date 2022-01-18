#!/bin/bash
echo "DataBase"
ls -l ./DBMS

read -p "which data you want to connect" name
if [[ ! -d  DBMS/$name ]]; then
    echo "File not found!"
    bash connect.sh
fi



export name
./DBMS/$name
select input in   CreateTable  ListTables  DropTable InsertintoTable  SelectFromTable DeleteFromTable  UpdateTable
do
	case $input in
		CreateTable )
			echo "you selected Create Database";
			bash  createtable.sh
			;;
		ListTables )
			ls -l ./DBMS/$name
			;;
		DropTable )
			
			bash Droptable.sh
			;;
		InsertintoTable )
			echo "InsertintoTable";
			bash  InsertintoTable.sh
			;;
		SelectFromTable )
			echo "SelectFromTable";
			bash  SelectFromTable.sh
			;;
		DeleteFromTable )
			echo "DeleteFromTable";
			bash  DeleteFromTable.sh
			;;
		UpdateTable )
			bash  UpdateTable.sh
			;;

		*)		
			echo "enter correct answer";
			;;
	esac
done
