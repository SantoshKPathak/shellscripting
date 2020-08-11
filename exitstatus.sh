#! /bin/bash

HOST="google.com"
#-c 1 means just send 1 data packet to the host
ping -c 1 $HOST

# "$?"" means last executed command status.
# here it means ping command execution.
# if command is success then it returns zero(0) else non-zero

if [ "$?" -ne "0" ]
then
    echo "$HOST is reachable"
else
    echo "$HOST is unreachable"
fi

