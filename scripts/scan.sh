#!/bin/sh

if [ $# -eq 0 ]; then
    echo "ERROR: missing scan target(s)."
    exit 1
fi

jshint $@
