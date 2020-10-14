#!/bin/bash

RED="\x1B[31m"
GREEN="\x1B[32m"
RESET="\x1B[0m"

INPUT_DIR="../tests/input"
OUTPUT_DIR="../tests/output"

function run_tests() {
    for file_path in $1/*.{uc,c}; do
        ucfile=$(basename "$file_path")
        outfile=${ucfile%.*}.out

        ./$UC_COMPILER $COMPILER_FLAGS <$file_path >$2/$outfile

        diff $1/$outfile $2/$outfile >/dev/null

        if [ $? -eq 0 ]; then
            echo -e ✅ "${GREEN}TEST PASSED!!${RESET}" $ucfile
        else
            echo -e ❌ "${RED}TEST FAILED!!${RESET}" $ucfile
        fi
    done
}

if [ $# -eq 0 ]; then
    echo "Usage: ./test.sh [compiler] [-args=compiler_args] [-i=input_dir] [-o=output_dir]"
    exit 1
else
    UC_COMPILER=$1
    shift
    for option in "$@"; do
        case $option in
        -args=* | --compiler-arguments=*)
            COMPILER_FLAGS="${option#*=}"
            shift
            ;;
        -i=* | --input-dir=*)
            INPUT_DIR="${option#*=}"
            shift
            ;;
        -o=* | --output-dir=*)
            OUTPUT_DIR="${option#*=}"
            shift
            ;;
        esac
    done
    [[ ! -f $UC_COMPILER ]] && ./make.sh $UC_COMPILER
    run_tests $INPUT_DIR $OUTPUT_DIR
fi
