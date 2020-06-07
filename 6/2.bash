echo Enter a number:
read num
a=0
b=1


re='^[0-9]+$'

if ! [[ $num =~ $re ]]; then
	echo "Ошибка, введите число">&2; exit 1
fi

for((n=1; $n<=$num; n=$n+1));
do
	a=$(($a+$b))
	echo -n "$a, "
	b=$(($a-$b))
done
