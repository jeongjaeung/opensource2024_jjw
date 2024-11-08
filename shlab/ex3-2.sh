#!/bin/bash
if [ "$2" = "+" ]; then
    result=$(($1 + $3))
elif [ "$2" = "-" ]; then
    result=$(($1 - $3))
else
    echo "지원되지 않는 연산자입니다. + 또는 -만 사용하세요."
    exit 1
fi

echo "$result"

