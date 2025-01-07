#!/bin/zsh

source ~/.myscripts/docs_init/docs_init.conf

if [[ ! -d docs ]]; then
    mkdir docs
fi

if [[ ! -d docs/html ]]; then
    mkdir docs/html
fi

# === Copy the Makefile, run file, and stylesheet ===
cp $make "docs/Makefile"
cp $run docs/.run.sh
cp $style docs/html/style.css

echo ".run.sh" > docs/.gitignore

chmod +x docs/.run.sh
