#!/usr/bin/env bash

export FORSIGHT_DIR=$HOME/work/forsight

function Grebasepull() {
    STASHED=0
    if [ -n "$(git ls-files -m)" ]; then 
        git stash
        STASHED=1
    elif [ -n "$(git diff --staged --name-only)" ]; then 
        git stash
        STASHED=1
    fi   
    
    REF=$(git symbolic-ref HEAD)
    git pull --rebase upstream $REF 
    if [ "$STASHED" -eq 1 ]; then 
        git stash pop
    fi   
}
alias Grebasepull__help='echo "Rebase upstream with temporary stashing."'
export -f Grebasepull

function Gcutbranch() {
    if [ $# -ne 2 ]; then
        >&2 echo "usage: Gcutbranch NEWBRANCH STARTINGREF"
        return 1
    fi

    cd $FORSIGHT_DIR/main
    git branch $1 $2 || return 1
    git worktree add $FORSIGHT_DIR/$1 $1
    cd $FORSIGHT_DIR/$1
    echo "Cut branch $1 starting from $2."
    echo "Created worktree at $(pwd)."
}
alias Gcutbranch__help='echo "Cut a new branch with new worktree."'
export -f Gcutbranch

function Gaddbranch() {
    if [ $# -ne 1 ]; then
        >&2 echo "usage: Gaddbranch BRANCH"
        return 1
    fi

    cd $FORSIGHT_DIR/main
    git worktree add $FORSIGHT_DIR/$1 -b $1 || return 1
    cd $FORSIGHT_DIR/$1
    echo "Added worktree for $1."
}
alias Gaddbranch__help='echo "Add a new worktree for a new or existing branch."'
export -f Gaddbranch

function Glogbranch() {
    if [ $# -gt 1 ]; then
        >&2 echo "usage: Glogbranch [BASE_BRANCH]"
        return 1
    fi

    [[ -z "$1" ]] && git log --first-parent --no-merges || git log --first-parent --no-merges "$1"..
}
alias Glogbranch__help='echo "Log commits for the evolution of this branch (optionally not reachable by base branch)."'
export -f Glogbranch

# vim: ts=4 sts=4 sw=4 expandtab
