#!/bin/bash
# Some bash helper functions
# Timothy Jones, 2018
# https://github.com/TimothyJones/timbash

if [ -z "${TIMLIB_BASH_SH:-}" ]; then
  TIMLIB_BASH_SH=yes

  function set_TIMBASH_DIR {
    SOURCE="${BASH_SOURCE[0]}"
    while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
      DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
      SOURCE="$(readlink "$SOURCE")"
      [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    TIMBASH_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  }

  set_TIMBASH_DIR
  . "$TIMBASH_DIR"/lib-logging.sh

  # Check to see that we have a required binary on the path
  function require {
    if [ -z ${1:-} ]; then 
      error "${FUNCNAME[0]} requires an argument"
      exit 1
    fi

    if ! [ -x "$(command -v $1)" ]; then
      error "$1 is not installed."
      exit 1
    fi
  }

  # Count the lines in a file (useful for LINES=$(count_lines $FILENAME) )
  function count_lines {
    if [ -z ${1:-} ]; then 
      error "${FUNCNAME[0]} requires an argument"
      exit 1
    fi

    zcat -f "$1" | wc -l | tr -d ' '
  }

fi
