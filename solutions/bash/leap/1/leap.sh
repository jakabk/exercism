#!/usr/bin/env bash

usage_banner="Usage: leap.sh <year>"

main () {
    if (( "$#" != 1 )); then
        echo "$usage_banner"
        return 1
    fi

    # with regex
    # if [[ ! "$@" =~ ^[0-9]*$ ]]; then

    # https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash#comment62436596_2704760
    # *[!0-9]* is a pattern that matches all strings with at least 1 non-digit character.
    # ${num##*[!0-9]*} is a "parameter expansion" where we take the content of the `num` variable
    # and remove the longest string that matches the pattern.
    # If the result of the parameter expansion is not empty (! [ -z ${...} ]) then it's a number
    # since it does not contain any non-digit character.
    if [[ -z "${@##*[!0-9]*}" ]]; then
        echo "$usage_banner"
        return 1
    fi

    if (( "$@" % 4 == 0 )) && ( (( "$@" % 100 != 0 )) || (( "$@" % 400 == 0)) ); then
        echo 'true'
    else
        echo 'false'
    fi
}

main "$@"
