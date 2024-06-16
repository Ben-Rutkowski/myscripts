#!/bin/zsh

source ~/.myscripts/config/c_make.conf

if [[ -f "Makefile" ]]; then
    echo "There already exists a Makefile: Will not replace it."
    exit 1
fi

# === Copy the Makefile ===
cp $make_root_temp "Makefile"
