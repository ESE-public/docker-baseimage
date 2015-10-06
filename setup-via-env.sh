#!/bin/sh

if [ "${SETUP_SCRIPT}" != "" ]; then
  if [ -x "${SETUP_SCRIPT}" ]; then
     exec "${SETUP_SCRIPT}" &
  else 
    echo "${SETUP_SCRIPT} is not an executable file" 
  fi
fi
