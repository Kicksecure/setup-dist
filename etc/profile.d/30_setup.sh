#!/bin/bash

## Copyright (C) 2012 - 2021 ENCRYPTED SUPPORT LP <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

if [ ! "$(tty)" = "/dev/tty1" ]; then
   return 0
else
   ## Not launching into background using &, because we need to listen for
   ## STRG + C (signal sigterm).
   /usr/lib/setup-dist_cli_start_maybe
fi
