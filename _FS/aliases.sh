#!/usr/bin/env bash

alias FSt='tail -f'
alias FSt__help='echo "Continuously tail log."'

alias FSdu='du --max-depth=1 -h'
alias FSdu__help='echo "Calculate disk usage for files in dir."'

alias FSdelf='find . -type f -delete'
alias FSdelf__help='echo "Recurisvely delete all files in current directory."'

alias FSown='sudo chown -R tony:users'
alias FSown__help='echo "Recursively chown the directory."'
