#!/usr/bin/env bash

usage_banner="Usage: error_handling.sh <person>"

main () {
    (( "$#" != 1 )) && echo "$usage_banner" && exit 1
    echo "Hello, $1"
    exit 0
}

main "$@"
