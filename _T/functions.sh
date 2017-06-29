#!/usr/bin/env bash

function Tnth() {
    sed "$1q;d"
}
alias Tnth__help='echo "Print the nth line."'
export -f Tnth

function Teverynth() {
    if [ $# -eq 0 ]; then 
        echo "warning: defaulting to every 100th line" 2>&1
        sed -n '0~100p'
    elif [ $# -eq 1 ]; then 
        sed -n "0~${1}p"
    elif [ $# -eq 2 ]; then 
        sed -n "${2}~${1}p"
    fi   
}
alias Teverynth__help='echo "Print every nth line."'
export -f Teverynth

function Tcmp() {
    file1=$1
    file2=$2
    fx=$3

    res1=$(eval "$fx $1")
    res2=$(eval "$fx $2")
    echo -e "1st:\n${res1}"
    echo -e "2nd:\n${res2}"
}

# vim: ts=4 sts=4 sw=4 expandtab
