read filename
egrep -o "\b[[:alpha:]]+\b" $filename | \

awk '{ count[$0]++ }
END {
for(i in count)
{ 
    if (count[i] > 1){
        printf("Word: %s - Count of repetition: %d\n",i,count[i]);  
    }
}
}'