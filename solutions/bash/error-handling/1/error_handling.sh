#!/usr/bin/env bash

USAGE_BANNER="Usage: error_handling.sh <person>"

main () {
    [ $# != 1 ] && echo $USAGE_BANNER && exit 1 || echo "Hello, $1"
}

main "$@"
