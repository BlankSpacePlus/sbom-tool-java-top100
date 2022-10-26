dir_list=$(ls -l ./|awk '/^d/ {print $NF}')
line_count=0
for dir in ${dir_list}
do
    echo ${dir}
    ((line_count++))
done
echo ${line_count}
