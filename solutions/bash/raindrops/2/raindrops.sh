#!/usr/bin/env bash

main () {
    # basic input validation
    if (( "$#" != 1 )); then
        echo "Error: takes at most one parameter"
        return 1
    fi

    if [[ -z "${@##[!0-9]*}" ]]; then
        echo "Error: '$@' is not a number"
        return 1
    fi

    raindrops=(3Pling 5Plang 7Plong)

    result=""
    for i in "${raindrops[@]}"; do
        l=${#i}
        (( "$@" % "${i:0:1}" == 0 )) && result+="${i:1:l}"
    done

    if [[ "$result" != "" ]]; then
        echo "$result"
    else
        echo "$@"
    fi
}

main "$@"
