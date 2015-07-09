#!/bin/sh

vim=vim

if [ $# -lt 1 ]; then
  echo Invalid arguments 1>&2
  echo [USAGE]
  echo   vs SRC [ARGS...]
  exit 1
fi

if [ -f $1 ]; then
  $vim -X -N -u NONE -i NONE -e --cmd "source $1 | qall!" $@ 2>&1
else
  echo File not found: $1 1>&2
fi
