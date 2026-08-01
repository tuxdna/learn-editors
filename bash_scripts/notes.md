use printf instead of echo

Use grep instead of cat | grep

Use shell arithmetic $((  )) instead of $(expr ...)

Use if [[  ]] instead of if [   ]


# Command grouping

Use Command grouping instead of subshells

# Use process substitution

# Slower
diff <(sorted file1) <(sorted file2)

# Faster
sorted file1 > sorted1
sorted file2 > sorted2
diff sorted1 sorted2


Use arrays instead of multiple variables

Use read with here-string for parsing

# Slower

echo "line1
line2
line3" | while read line; do echo "Line: $line"; done

# Faster

while read line; do echo "Line: $line"; done <<< "line1
line2
line3" 



# Optimization for large datasets

Use awk for complex text processing

# Slower
while read line; do
    field1=$(echo $line | cut -d',' -f1)
    field2=$(echo $line | cut -d',' -f2)
    echo "$field1 $field2"
done

# Faster

awk -F, '{print $2 " " $1 }' large_file.csv


# Use sort -u instead of sort | uniq

# Use grep -F for fixed strings

# Slower

grep "exact string" large_file.txt

# Faster

grep -F "exact string" large_file.txt


# User `parallel` for multi core processing

cat large_file.txt | parallel --pipe awk '{print $2}'

# Profiling scripts

time bash some_script.sh

# Use set -x to show command being executed


