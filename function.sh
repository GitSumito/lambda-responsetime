function handler () {
	res=$(curl -kL 'https://tsukada.sumito.jp' -o /dev/null -w "%{time_total}" 2> /dev/null)
	s=`echo "$res * 1000" | bc` 
	echo ${s%.*} 1>&2;
}

