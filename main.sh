#!/usr/bin/bash

IP="$(ip addr show $1 2>/dev/null | grep inet | head -1 | cut -d ' ' -f 6 | sed 's/\/[0-9][0-9]//')" 


if [ $IP ] 
then
    echo "$1: $IP"
else
    echo ""
fi
