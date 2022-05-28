#!/bin/bash


# 获取压测脚本名称
target_name=$1
fileName=(${target_name//./ })

if [ ! -n "$target_name" ]; then
 echo "执行文件 IS NULL"
 exit 0
else
 echo '执行文件'$target_name
fi

rm -rf $fileName/*
rm -rf jmeter.log
mkdir $fileName

jmeter -n -t ./$target_name -l  ./$fileName/$fileName.jtl -e -o ./$fileName



