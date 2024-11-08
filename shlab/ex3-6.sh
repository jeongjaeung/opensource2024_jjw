#!/bin/bash

# 첫 번째 인자로 폴더 이름을 입력 받음
folder_name=$1

# 폴더가 존재하는지 확인하고, 없으면 생성
if test ! -d "$folder_name"; then
    mkdir "$folder_name"
    echo "$folder_name 폴더를 생성했습니다."
else
    echo "$folder_name 폴더가 이미 존재합니다."
fi

# 최상위 폴더에 파일 5개 생성
for i in 0 1 2 3 4; do
    touch "$folder_name/file$i.txt"
done
echo "5개의 파일을 생성했습니다."

# 하위 폴더 생성
mkdir "$folder_name/files"

# 최상위 폴더의 파일들을 하위 폴더에 files.tar로 압축
tar -cvf "$folder_name/files/files.tar" -C "$folder_name" file0.txt file1.txt file2.txt file3.txt file4.txt
echo "파일을 압축했습니다."

# 하위 폴더에 압축을 해제하여 .txt 파일 생성
tar -xvf "$folder_name/files/files.tar" -C "$folder_name/files"
echo "압축 파일을 해제했습니다."

