#!/usr/bin/env bash

usage_banner="Usage: hamming.sh <string1> <string2>"

main () {
  if (( "$#" != 2 ))
  then
    echo "${usage_banner}"
    return 1
  fi

  if [[ ${#1} != ${#2} ]]
  then
      echo 'strands must be of equal length'
      return 1
  fi

  difference=0
  for i in $( seq 0 $((${#1} - 1)) )
  do
      if [[ "${1:$i:1}" != "${2:$i:1}" ]]
      then
          ((difference++))
      fi
  done

  echo $difference

  return 0
}

main "$@"
