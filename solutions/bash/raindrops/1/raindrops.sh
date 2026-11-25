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

    result=""

    (("$@" % 3 == 0)) && result+="Pling"
    (("$@" % 5 == 0)) && result+="Plang"
    (("$@" % 7 == 0)) && result+="Plong"

    if [[ "$result" != "" ]]; then
        echo "$result"
    else
        echo "$@"
    fi
}

main "$@"
