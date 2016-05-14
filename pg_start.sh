#!/bin/bash

i=1
if [ -f "/tmp/pg.log" ]; then
    while test -f "/tmp/pg-$i.log"; do
        i=$(($i+1))
    done
    mv /tmp/pg.log "/tmp/pg-$i.log"
fi

if [ "$i" -ge 100 ]; then
    echo "Attention:"
    echo "   Too many log files for postgres exist in /tmp/"
    echo ""
fi

PGHOME/bin/postgres -i > /tmp/pg.log 2>&1 &
