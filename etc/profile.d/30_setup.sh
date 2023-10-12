#!/bin/bash

## Copyright (C) 2012 - 2023 ENCRYPTED SUPPORT LP <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

if [ ! "$XDG_SESSION_TYPE" = "tty" ]; then
   true "$0: INFO: Not running in tty. Stop."
   return 0
   exit 0
fi

## Run in /dev/tty1 only.
if [ ! "$(tty)" = "/dev/tty1" ]; then
   true "$0: INFO: Not running in /dev/tty1. Stop."
   return 0
   exit 0
fi

true "$0: INFO: Running in /dev/tty1. Continuing..."

## Not launching into background using &, because we need to listen for
## STRG + C (signal sigterm).
/usr/libexec/setup-dist/setup-dist_cli_start_maybe
