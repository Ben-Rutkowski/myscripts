#!/bin/zsh

source ~/.myscripts/config/latex.conf

# Create Directory Tree
if [ $# -eq 0 ]; then
    echo "No Project Name."
    exit 1
fi

root="$(pwd)/$1"

if [ -d $root ]; then
    echo "A folder with the name $1 already exists."
    exit 1
fi

mkdir $root
mkdir "$root/output"

# Create an initialize Makefile, .run.sh and main.tex
touch "$root/Makefile"
cat $make_temp > "$root/Makefile"

touch "$root/.run.sh"
chmod +x "$root/.run.sh"
cat $run_temp > "$root/.run.sh"

touch "$root/main.tex"
cat $doc_temp > "$root/main.tex"

# Compile 
cd $root
make
