#!/bin/zsh

make_temp=~/.local/shell/templates/c_test/templates/Makefile
run_temp=~/.local/shell/templates/c_test/templates/run.sh

if [[ -z $1 ]]; then
    echo 'No input given'
    exit 1
elif [[ -d tests/$1 ]]; then
    echo "The test repository $1 already exists"
    exit 2
fi

test_repo=./tests/$1

# === Create the repository ===
mkdir $test_repo
echo "compiled/" > $test_repo/.gitignore

# === Copy Makefile and .run.sh Templates ===
cp $make_temp $test_repo/Makefile
cp $run_temp $test_repo/.run.sh
chmod +x $test_repo/Makefile
chmod +x $test_repo/.run.sh
