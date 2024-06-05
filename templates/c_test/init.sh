#!/bin/zsh

source ~/.myscripts/config/c_test_config.cfg

# === Create Test Repository ===
if [[ ! -d tests ]]; then
    mkdir tests
else
    echo "There already exists a test repository"
    exit 1
fi

# === Create Script and Cache ===
cp $test_temp .test.sh
chmod +x .test.sh
touch $test_cache
