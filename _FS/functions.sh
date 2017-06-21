#!/usr/bin/env bash

function FSff() {
    if [ $# -eq 1 ]; then
        find . -type f -name "$1"
    else
        find . -type f
    fi
}
alias FSff__help='echo "Find files from this directory."'
export -f FSff
