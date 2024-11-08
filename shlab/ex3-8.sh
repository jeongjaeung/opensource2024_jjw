#!/bin/bash

# 첫 번째 인자로 이름, 두 번째 인자로 전화번호 또는 생일을 입력 받음
name=$1
info=$2

# DB.txt 파일이 없으면 새로 생성
if test ! -f "DB.txt"
then
    touch DB.txt
    echo "DB.txt 파일을 생성했습니다."
fi

# 입력된 이름과 정보를 DB.txt에 추가
echo "$name $info" >> DB.txt
echo "DB.txt에 정보를 추가했습니다."

