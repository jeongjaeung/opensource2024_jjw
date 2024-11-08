#!/bin/bash

weight=$1
height=$2

# 신장을 미터 단위로 변환
height_m=$(echo "scale=2; $height / 100" | bc)

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

# BMI에 따른 판정
if echo "$bmi < 18.5" | bc -l | grep -q 1; then
    echo "저체중입니다."
elif echo "$bmi >= 18.5 && $bmi < 23" | bc -l | grep -q 1; then
    echo "정상체중입니다."
else
    echo "과체중입니다."
fi

