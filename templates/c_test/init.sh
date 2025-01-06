#!/bin/zsh

source ~/.myscripts/templates/c_test/c_test.conf

# === Create Test Repository ===
if [[ ! -d $test_repo ]]; then
    mkdir $test_repo
else
    echo "There already exists a test repository"
fi

# === Create Script and Cache ===
cp $test_temp ".test.sh"
chmod +x ".test.sh"
touch $test_cache
