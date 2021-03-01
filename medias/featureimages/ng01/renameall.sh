#!/bin/sh
#替换文件名中的空格
num=0
#将文件名替换成1、2、3、4、5、6等文件名，后缀名保持不变（例如test.log -->1.log）
for file in `ls` ;do 
 num=$[$num+1]
 #i=`expr $i + 1`;
#获取文件后缀名
 P="${file##*.}"
 echo $file
  if [ x"$P" == x"jpg" -o x"$P" == x"jpeg" ]; then
    echo $file "--->" ${num}.jpg
 mv $file ${num}.jpg;
   fi
done
