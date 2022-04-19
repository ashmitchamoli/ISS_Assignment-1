IFS='~'
grep -v "^$" quotes.txt | while read line
do
    read -a arr <<< "$line"
    echo "${arr[1]} once said, \"${arr[0]}\""
done > speech.txt