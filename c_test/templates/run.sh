#!/bin/zsh

./test

if [[ -e "program.log" ]]; then
    echo "\n--- Contents of program.log"
    cat program.log
fi
