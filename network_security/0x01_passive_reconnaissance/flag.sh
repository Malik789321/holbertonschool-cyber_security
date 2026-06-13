#!/bin/bash

FLAG=$(cat "$3")

if [ "$FLAG" = "$1" ]; then
    echo "ok"
else
    echo "invalid"
fi
