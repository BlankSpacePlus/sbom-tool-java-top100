script_dir=$( cd "$( dirname "$0"  )" && pwd )
dir_list=$(ls -l ./|awk '/^d/ {print $NF}')
manifest_dir="_manifest/"
for dir in ${dir_list}
do
    echo ${script_dir}/${dir}/${manifest_dir}
    if [ -d ${script_dir}/${dir}/${manifest_dir} ];then
        rm -rf ${script_dir}/${dir}/${manifest_dir}
        echo "文件夹存在，已删除"
    else
        echo "文件夹不存在，已跳过"
fi
done
