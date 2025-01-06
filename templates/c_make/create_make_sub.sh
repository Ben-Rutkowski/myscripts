#!/bin/zsh

source ~/.myscripts/templates/c_make/c_make.conf

if [[ -z $1 ]]; then
    echo "No subdirectory name was given."
    exit 1
fi

if [[ -d $1 ]]; then
    echo "There already exists a subdirectory ith the given name."
    exit 2
fi

# === Copy the Makefile ===
mkdir $1
cp $make_sub_temp "$1/Makefile"
echo "objects/" > "$1/.gitignore"
