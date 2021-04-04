#!/bin/bash

# =======================================================================================
#
#   This file is part of neth-proxy.
#
#   neth-proxy is free software: you can redistribute it and/or modify
#   it under the terms Of the GNU General Public License As published by
#   the Free Software Foundation, either version 3 Of the License, Or
#   (at your option) any later version.
#
#   neth-proxy is distributed In the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty Of
#   MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License For more details.
#
#   You should have received a copy Of the GNU General Public License
#   along with neth-proxy.  If not, see < http://www.gnu.org/licenses/ >.
#
# =======================================================================================

# Here you can hardcode your arguments if you wish.
ARGS="-sp 0xbC426A6E8AA1FE01271304d0470d80e092F88724@eu1.ethermine.org:4444 --report-hashrate --work-timeout 120 --response-timeout 2000 --report-workers --stats-interval 10 --api-bind 3333"

# If you pass arguments on the command line they will override the above statement
if [ "$@" != "" ]; then
    ARGS=$@
fi
clear
dotnet exec neth-proxy.dll $ARGS
