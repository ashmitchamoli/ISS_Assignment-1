read file
a=1
cat $file | while read line
do
    n=$(echo $line | wc -w)
    echo "Line No: $a - Count of Words: $n" 
    a=$((a + 1))
done
