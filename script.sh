#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" || exit

find . -mindepth 1 -maxdepth 1 -type d -exec du -sh {} + 2>/dev/null \
    | sort -hr \
    | head -n 3 \
    | sort -h
