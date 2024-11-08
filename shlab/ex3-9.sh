#!/bin/bash

# 검색할 이름을 첫 번째 인자로 받음
name=$1

# DB.txt 파일에서 이름을 검색하여 출력
if grep -q "^$name " DB.txt
then
    grep "^$name " DB.txt
else
    echo "해당 이름의 정보를 찾을 수 없습니다."
fi

