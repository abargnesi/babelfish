#!/usr/bin/env bash

function Sproxyzap() {
    export http_proxy=http://localhost:8080/
    export https_proxy=$http_proxy
}
alias Sproxyzap__help='echo "HTTP(S) proxy to ZAP on 8080."'
export -f Sproxyzap

function Snoproxy() {
    unset http_proxy
    unset https_proxy
}
alias Snoproxy__help='echo "Clean HTTP(S) proxy settings."'
export -f Snoproxy

# vim: ts=4 sts=4 sw=4 expandtab
