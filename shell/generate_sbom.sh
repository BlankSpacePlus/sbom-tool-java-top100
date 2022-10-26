# 脚本所在目录
script_dir=$( cd "$( dirname "$0"  )" && pwd )
# 脚本名称
script_name=$(basename ${0})
# 配置文件名称
file_name="sbom.conf"
# 遍历配置文件的每一行
cat ${script_dir}/${file_name} | while read line;do
    # echo "${line}"
    # 分割读取到的配置文件的一行字符串 以空格分隔
    array=(${line// / })
    # 遍历分隔得到的数组
    # for var in ${array[@]}
    # do
    #     echo $var
    # done
    # 调用sbom-tool.exe生成SBOM文件
    ./sbom-tool.exe generate -b ${script_dir}/${array[0]} -bc ${script_dir}/${array[1]} -pn ${array[2]} -pv ${array[3]} -ps ${array[4]} -nsb ${array[5]}
done
