path="wget/"
readme="README."
max=`ls $path | wc -l`
index=0
declare -a tab
c=$path"README"

((max--))
tab+=`cat $c`
for i in `seq 1 $max`
	do
	c="$path$readme$i"
	s=`cat $c`
	if [[ ! " ${tab[@]} " =~ " ${s} " ]]
	then
		((index++))
		tab[index]=$s
	fi
done

for i in `seq 0 $index`
do
	echo ${tab[i]}
done
