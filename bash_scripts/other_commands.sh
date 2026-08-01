tree
pwd
ls
cd
mkdir
touch
cp
mv
rm
rmdir

chmod  # u g o  + - r w x

uptime
cat /proc/loadavg
# search for files larger than given size
find "$search_dir" -type -f -size +"${min_size}"M -exec  ls -lh \; | sort -k5 -rh
df -h
free -h
ps aux --sort=-%cpu | head -n 6

cat hello.txt || exit 1

