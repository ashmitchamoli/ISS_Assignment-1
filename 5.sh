read string
#echo $string

for ((i=0; i<${#string}; i++))
do
    a[$i]=${string:i:1}
done

n=${#a[@]}

#a
for ((i=n-1; i>-1; i--))
do
    printf "${a[i]}"
    b[$((n-i-1))]=${a[i]}
done
echo ""

#b
for ((i=n-1; i>-1; i--))
do
    char=${b[i]}
    if [ $char = ${char^} ]; then
        b[$i]="$(echo ${b[$i]} | tr '[A-Y]Z' '[B-Z]A')"
    elif [ $char = ${char,,} ]; then
        b[$i]="$(echo ${b[$i]} | tr '[a-y]z' '[b-z]a')"
    fi
done

for ((i=0; i<n; i++))
do
    printf "${b[i]}"
done
echo ""

#var="$(echo $var | tr '[a-y]z' '[b-z]a')"

#c
for ((i=n/2-1; i>-1; i--))
do
    printf "${a[i]}"
done

for ((i=n/2; i<n; i++))
do
    printf "${a[i]}"
done

echo ""