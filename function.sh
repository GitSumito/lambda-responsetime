function handler () {
	res=$(curl -kL 'https://tsukada.sumito.jp' -o /dev/null -w "%{time_total}" 2> /dev/null)
	aws cloudwatch put-metric-data --metric-name responseTime --namespace responseTime --value $res --dimensions Name=Time,Value=second 
}

