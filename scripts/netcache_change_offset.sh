#! /bin/bash

if [ $# -eq 0 ]
then 
    echo "Please specify the offset!"
    echo "Usage: ./netcache_change_offset.sh 100"
else
    # configure offset
    python `pwd`/control/netcache/config_offset.py --offset $1
fi

