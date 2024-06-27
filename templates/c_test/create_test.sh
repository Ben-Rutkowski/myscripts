#!/bin/zsh

source ~/.myscripts/config/c_test.conf

if [[ -z $1 ]]; then
    echo 'No input given'
    exit 1
elif [[ -d "$test_repo/$1" ]]; then
    echo "The test repository $1 already exists"
    exit 2
fi

cur_test=$test_repo/$1


# === Create the repository ===
mkdir $cur_test
echo "objects/\ntest" > "$cur_test/.gitignore"


# === Copy Makefile and .run.sh Templates ===
cp $make_temp "$cur_test/Makefile"
cp $run_temp "$cur_test/.run.sh"
chmod +x "$cur_test/Makefile"
chmod +x "$cur_test/.run.sh"


# === Move test_cases for all ===
if [[ $2 == "-a" ]]; then
    cp $test_case_cpp_temp "$cur_test/test_case.cpp"
    cp $test_case_hpp_temp "$cur_test/test_case.hpp"
fi
