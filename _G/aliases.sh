#!/usr/bin/env bash

alias       Gs='git status -uno'
alias Gs__help='echo "Show status without untracked."'
alias Ga='git add $(git ls-files -m)'
alias Gc='git commit'
alias Gdup='REF=$(git symbolic-ref HEAD); git log upstream/${REF##refs/heads/}..$REF'
alias Gdfk='REF=$(git symbolic-ref HEAD); git log fork/${REF##refs/heads/}..$REF'
alias Gpup='REF=$(git symbolic-ref HEAD); git push upstream $REF'
alias Gpfk='REF=$(git symbolic-ref HEAD); git push fork $REF'
alias Gpullup='REF=$(git symbolic-ref HEAD); git pull upstream $REF'
alias Grm-untracked='rm $(git ls-files --others --exclude-standard)'
alias Gd='git diff -U20'
alias Gds='git diff --staged'
alias Gco-all='for x in `git ls-files -m`; do git checkout $x; done'
alias Glast='git show --name-only HEAD'
