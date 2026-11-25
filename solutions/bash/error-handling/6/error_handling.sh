#!/usr/bin/env bash

usage_banner="Usage: error_handling.sh <person>"

main () {
    if (( "$#" != 1 ))
    then
        echo "$usage_banner"
        return 1
    fi

    echo "Hello, $1"
    # will return with echo status: 0
}

main "$@"
