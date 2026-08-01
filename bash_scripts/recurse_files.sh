#!/usr/bin/env bash

# Recursive functions

declare -A files

export OUTFILE=/tmp/file_count.txt

traverse() {

	for file in "$1"/* ; do
		if [ -d "$file" ]; then
			# Recursive call
			traverse "$file"
		else
			ext="${file##*.}"
			echo "$file has extension $ext"
			files[$ext]=$((files[$ext] + 1))
		fi
	done
}

cleanup() {
	echo "Cleanup function ..."
	rm -f $OUTFILE
}

# trap cleanup EXIT


echo "Starting file count..."

traverse "${1:-$PWD}"

echo "${files[@]}"

{
	# echo "File extensions counts:"
	for ext in "${!files[@]}"; do
		echo "$ext: ${files[$ext]}" >&2
		echo "$ext: ${files[$ext]}"
	done
} >  $OUTFILE

echo "File counts have been written to $OUTFILE"

cat << EOF
Script completed. Here's a summary:
Total numb of extensions found: ${#files[@]}
Most common extension: $(sort -k2 -t: -rn $OUTFILE | head -n 1)
EOF



