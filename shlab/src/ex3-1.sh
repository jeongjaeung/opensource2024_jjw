#!/bin/bash

# 입력된 숫자를 변수에 저장
count=$1

# 숫자가 입력되었는지 확인
if [ -z "$count" ]; then
    # 숫자가 입력되지 않은 경우 무한 반복
    while true
    do
        echo "hello world"
        sleep 1  # 1초 간격으로 출력
    done
else
    # 숫자가 입력된 경우 해당 횟수만큼 출력
    i=0
    while [ $i -lt $count ]
    do
        echo "hello world"
        sleep 1  # 1초 간격으로 출력
        i=$((i + 1))
    done
fi

