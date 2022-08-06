#To compare two files line by line 
#and to check whether contents of each line
#in first file exist in respective line of second file

#!/bin/bash
while IFS='\n' read -r line1 && IFS= read -r line2 <&3; do
  IFS=' ' read -a l1 <<< "$line1"
  IFS=' ' read -a l2 <<< "$line2"
 #echo ${l2[@]}
 #echo ${l2[@]}
  count=0
    for item in "${l1[@]}";
    do
        item=${item//$'\r'}
        for item2 in "${l2[@]}";
        do
            item2=${item2//$'\r'}
            if [ "$item" == "$item2" ]; then
                count=$((count+1))
                break
            fi
        done
    done
    #echo $count
    #echo ${#l1[*]}
    if [ $count -eq ${#l1[@]} ]; then
        echo yes
    else
        echo no
    fi
done <ldapid_groups.txt 3<ssoid_groups.txt

