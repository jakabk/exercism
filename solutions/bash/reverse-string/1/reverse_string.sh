#!/usr/bin/env bash

usage_banner="usage: error_handling.sh <string>"

main () {
    if (( "$#" != 1 )); then
        echo "$usage_banner"
        return 1
    fi

    string="$1"
    length="${#string}"

    for (( i = "$length" - 1; i >= 0; i-- )); do
        reverse="$reverse${string:$i:1}"
    done

    echo "$reverse"
}

main "$@"
