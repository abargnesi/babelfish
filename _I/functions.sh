#!/usr/bin/env bash

export WORK_DIR=$HOME/work
PATH=$HOME/tools/idea/bin:$PATH

function Iopen() {
    [[ -n "$1" ]] && PRJ="$WORK_DIR/$1" || PRJ="."

    (
      trap - SIGINT
      idea.sh "$PRJ"
    )
}
alias Iopen__help='echo "Open intellij for the given project."'
export -f Iopen__help

# vim: ts=4 sts=4 sw=4 expandtab
