#!/bin/bash

if [ -e /tmp/flaskApp.pid ]; then
    pid=`cat /tmp/flaskApp.pid`
    if [[ -n  \$pid ]]; then
	kill $pid
    fi
fi

isExistApp=`pgrep nginx`
if [[ -n  \$isExistApp ]]; then
   service nginx stop
fi


