@echo off
setlocal ENABLEDELAYEDEXPANSION

set vim=vim
set src=%1
set argv=%1
shift

:LOOPSTART
  if "%~1" == "" (
    goto LOOPEND
  )
  for %%i in (%1) do (
    set argv=!argv! %%i
  )
  shift
  goto LOOPSTART
:LOOPEND

if "%src%" == "" (
  echo Invalid arguments 1>&2
  echo [USAGE]
  echo   vs SRC [ARGS...]
) else (
  if exist %src% (
    %vim% -X -N -u NONE -i NONE -e --cmd "source %src% | qall!" %argv% 2>&1
  ) else (
    echo File not found: %src% 1>&2
  )
)
