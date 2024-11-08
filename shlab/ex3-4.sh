#!/bin/bash

echo "리눅스가 재미있나요? (yes / no)"
read answer

# 입력값을 소문자로 변환하여 간단한 형태로 표준화
normalized_answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

# 특정 키워드가 포함된 경우 yes 또는 no로 변환
case "$normalized_answer" in
    y* | yes*)
        answer="yes"
        ;;
    n* | no*)
        answer="no"
        ;;
    *)
        echo "yes 또는 no로 입력해 주세요."
        exit 1
        ;;
esac

# yes 또는 no로 변경된 경우 출력 후 종료
echo "$answer"

