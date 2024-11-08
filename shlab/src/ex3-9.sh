#!/bin/bash

# 검색할 키워드를 첫 번째 인자로 받음
keyword=$1

# DB.txt 파일에서 키워드를 검색하여 출력
if grep -qi "$keyword" DB.txt
then
    grep -i "$keyword" DB.txt
else
    echo "해당 키워드의 정보를 찾을 수 없습니다."
fi

