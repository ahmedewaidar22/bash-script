!#/bin/bash
echo $name
read -p "enter table name" n
if [[ -f DBMS/$name/$n ]]; then
		echo "choose another name!"
		bash createtable.sh 
fi
touch 	./DBMS/$name/$n;

read -p "enter number of colums:" ni 
pK=""
counter=1

for ((i = 1 ; i <= ni ; i++)); do
read -p "enter $i column name:" colname;

		select col in  int string  
			do
				case $col in 
				int ) coltype="int";break
				;;
				string ) coltype="string";break
				;;
				* ) echo "wrong" ;;
			esac
		done
		 if [[ $pK == "" ]]; then
    			  echo  " is it primary key "
     			 select v in "yes" "no"
     				 do
      				  case $v in
      				    yes ) pK="=>(PK)";
						
         				 break;;
        				  no )

          					break;;
         				 * ) echo "Wrong Choice" ;;
       			 esac
    			  done
			fi
		echo -n "$colname,$coltype,"   >> ./DBMS/$name/$n
		counter=$[counter + 1 ];

done
echo "  $ni">> ./DBMS/$name/$n
bash connect.sh
