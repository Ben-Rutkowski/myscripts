#!/bin/zsh

test_root="$PWD/tests"
test_cache=".test_cache"


setTestRoutine() {
    if [[ -n $1 ]]; then
        echo "$1" > $test_cache 
    else
        echo "Cannot set test routine: No test routine specified"
        exit 1
    fi
}


runTestRoutine() {
    if [[ -d "$test_root/$1" ]]; then
        cd "$test_root/$1"
        make
        ./.run.sh
    else
        echo "Cannot run test routine: The test $test_root/$1 does not exist!"
        exit 2
    fi
}


runDefaultTestRoutine() {
    if [[ -f $test_cache ]]; then
        set_test=$(awk '{print $1; exit} ' "$test_cache")

        if [[ -n $set_test ]]; then
            runTestRoutine $set_test
        else
            echo "Cannot run test routine: There is no stored test in $test_cache"
            exit 3
        fi
    else
        echo "Cannot run test routine: $test_cache does not exist"
    fi
}


# === Set Test Routine ===
if [[ -n $1 && $1 == "-s" ]]; then
    setTestRoutine $2
    exit 0
fi

# === Run Test Routine ===
if [[ -n $1 ]]; then
    runTestRoutine $1
    exit 0
fi

# === Run Set Test Routine ===
if [[ -z $1 ]]; then
    runDefaultTestRoutine
    exit 0
fi
