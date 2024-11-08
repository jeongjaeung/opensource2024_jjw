#!/bin/bash

# 첫 번째 인자로 폴더 이름을 입력 받음
folder_name=$1

# 폴더가 존재하는지 확인하고, 없으면 생성
if test ! -d "$folder_name"
then
    mkdir "$folder_name"
    echo "$folder_name 폴더를 생성했습니다."
else
    echo "$folder_name 폴더가 이미 존재합니다."
fi

# 파일 5개 생성
for i in 0 1 2 3 4
do
    touch "$folder_name/file$i.txt"
done
echo "5개의 파일을 생성했습니다."

# 각 파일 이름대로 하위 폴더를 생성하고, 파일의 심볼릭 링크를 생성
for i in 0 1 2 3 4
do
    subfolder="$folder_name/file$i"
    mkdir "$subfolder"
    ln -s "../file$i.txt" "$subfolder/file$i.txt"
done
echo "각 파일에 대한 심볼릭 링크를 생성했습니다."

