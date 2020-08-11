#!/bin/bash

function backupfile (){
    if [ -f $1 ]
    then
        if [ -d $PWD/bak ]
        then  
            #basename removes the leading directory from filename and gives filename from path. like /etc/host will be chnaged to host
            #$$ meaning current processid 
            #/Users/santoshpathak/workspaces/shellscripting/bak/hosts.2020-04-02.22276 
            #basedir gives the directory name from the path
            BACKUPDIR="${PWD}/bak/$(basename ${1}).$(date +%F).$$"
            echo "copying $1 to ${BACKUPDIR}"
            cp -v $1 $BACKUPDIR
        else
            echo "creating directory bak"
            mkdir bak
            chmod +w bak
        fi
    else
        echo "$1 file not found"
        exit 1
    fi
}
backupfile /etc/hosts

if [ $? -eq 0 ]
then
    echo "backup created successfully"
else
    echo "backup creation failed"
fi
