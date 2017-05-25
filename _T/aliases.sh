#!/usr/bin/env bash

alias Tfastsort='sudo nice -n -20 ionice -c2 -n7 sort --parallel 16 $1'
alias Tfastsort__help='echo "Fast parallel sort."'
