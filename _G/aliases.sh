#!/usr/bin/env bash

alias Gs='git status -uno'
alias Gs__help='echo "Show status without untracked."'

alias Ga='git add $(git ls-files -m)'
alias Ga__help='echo "Shortcut for: git add"'

alias Gc='git commit'
alias Gc__help='echo "Shortcut for: git commit"'

alias Gac='git add $(git ls-files -m) && git commit'
alias Gac__help='echo "Adds modified files to stage and commits."'

alias Gdup='REF=$(git symbolic-ref HEAD); git log upstream/${REF##refs/heads/}..$REF'
alias Gdup__help='echo "Show commits that exist here but not on upstream remote."'

alias Gdfk='REF=$(git symbolic-ref HEAD); git log fork/${REF##refs/heads/}..$REF'
alias Gdfk__help='echo "Show commits that exist here but not on fork remote."'

alias Gpup='REF=$(git symbolic-ref HEAD); git push upstream $REF'
alias Gpup__help='echo "Push up commits to upstream remote."'

alias Gpfk='REF=$(git symbolic-ref HEAD); git push fork $REF'
alias Gpfk__help='echo "Push up commits to fork remote."'

alias Gpullup='REF=$(git symbolic-ref HEAD); git pull upstream $REF'
alias Gpullup__help='echo "Pull (fetch/merge) commits from upstream remote."'

alias Grmu='rm $(git ls-files --others --exclude-standard)'
alias Grmu__help='echo "Remove untracked files from filesystem."'

alias Gd='git diff -U20'
alias Gd__help='echo "Show differences."'

alias Gds='git diff -U20 --staged'
alias Gds__help='echo "Show differences with staged files."'

alias Gcoall='for x in `git ls-files -m`; do git checkout $x; done'
alias Gcoall__help='echo "Checkout all modified files."'

alias Glast='git show --name-only HEAD'
alias Glast__help='echo "Show the last commit including the changed filepaths."'
