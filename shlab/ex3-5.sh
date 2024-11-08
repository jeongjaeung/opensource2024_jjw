#!/bin/bash

# ls 명령어를 실행하는 내부 함수 정의
run_ls() {
    echo "프로그램을 시작합니다."
    echo "함수 안으로 들어 왔음"
    ls "$@"
    echo "프로그램을 종료합니다."
}

# 함수 호출, 모든 인자를 전달
run_ls "$@"

