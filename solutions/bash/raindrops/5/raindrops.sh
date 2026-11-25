#!/usr/bin/env bash

usage_banner="Usage: raindrops.sh <number>"


main () {
    if (( "$#" != 1 )); then
        echo "$usage_banner"
        return 1
    fi

    if [[ -z "${1##*[!0-9]*}" ]]; then
        echo "$usage_banner ('$1' is not a number)"
        return 1
    fi

    raindrops=([3]=Pling [5]=Plang [7]=Plong)

    result=""
    for i in "${!raindrops[@]}"; do
        (( "$1" % "$i" == 0 )) && result+="${raindrops[$i]}"
    done

    if [[ -z "$result" ]]; then
        echo "$1"
    else
        echo "$result"
    fi
}

main "$@"
