#!/usr/bin/env bash

# File: /usr/local/bin/fakemonitor
# FileMode: 0755

function getModeLine() {
    echo $(cvt $1 $2 | tail -n1 | awk '{$1=""; $2=""; print $0}')
}

function createMode() {
    if [ "$(xrandr | grep ${1}x${2}_60)" == "" ];then
        xrandr --newmode "${1}x${2}_60" $(getModeLine $1 $2)
    fi
}

function addMode() {
    createMode $1 $2
    OUT="VIRTUAL${3:-1}"
    xrandr --addmode "$OUT" "${1}x${2}_60"
    xrandr --output "$OUT" --mode "${1}x${2}_60"
}

W="${1:-1280}"
H="${2:-720}"
D="${3:-1}"

addMode $W $H $D
