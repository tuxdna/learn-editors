#!/usr/bin/env bash

printf "Starting script...\n"

start=$(($(date +%s%N) / 1000000))

cat > data.csv <<EOF
12,important data
2,def
3,abc
4.1,important data
3,abc
2,def
EOF

{
	awk -F, '{sum += $1} END {print "Total:", sum}' data.csv

	grep -F "important data" data.csv | wc -l

	sort -u data.csv | uniq
} > result.txt

end=$(($(date +%s%N) / 1000000))

printf "Script completed in %d millis\n" $((end - start))
