#!/bin/zsh

source ~/.myscripts/config/c_make.conf

if [[ -f "Makefile" ]]; then
    echo "There already exists a Makefile: Will not replace it."
    exit 1
fi

if [[ -f ".config.mk" ]]; then
    echo "There already exists a config file: Will not replace it."
    exit 2
fi

# === Copy the Makefile ===
cp $make_root_temp "Makefile"
cp $conf_temp ".config.mk"
