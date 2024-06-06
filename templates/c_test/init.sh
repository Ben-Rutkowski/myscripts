#!/bin/zsh

source ~/.myscripts/config/c_test.config

# === Create Test Repository ===
if [[ ! -d tests ]]; then
    mkdir tests
else
    echo "There already exists a test repository"
fi

# === Create Script and Cache ===
cp $test_temp .test.sh
chmod +x .test.sh
touch $test_cache
