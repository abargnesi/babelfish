#!/usr/bin/env bash

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
