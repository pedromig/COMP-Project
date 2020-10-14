#!/bin/bash
# @author Pedro Miguel Duque Rodrigues

# Terminal Escape Colors
RED="\x1B[31m"
GREEN="\x1B[32m"
RESET="\x1B[0m"
BLUE="\x1B[34m"

# Default Directory Search Path and Compiler Output Paths
INPUT_DIR="../tests/input"
OUTPUT_DIR="../tests/output"

# Default Configurations
LEXER="uccompiler.l"
COMPILER_FLAGS=""
SHOW_DIFF="true"

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
            if [[ SHOW_DIFF == "true" ]]; then
                cat DIFFOUT
            fi
        fi
    done
}

if [ $# -eq 0 ]; then
    echo "Usage: ./test.sh [compiler] [-lex="lex_file"] [-args="compiler_args"] [-i="input_dir"] [-o="output_dir"]" [-diff]
    echo "Examples: "
    echo "      user@computer$ ./test.sh ucc -args=\"-l\" "
    echo "      user@computer$ ./test.sh my_compiler -args=\"-e1 -l\""
    echo "      user@computer$ ./test.sh ucc -lex=\"compiler.l\" -args=\"-l\" -i=tests/input_folder -o=tests/my_output_folder"
    exit 1
else
    UC_COMPILER=$1
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
        -lex=* | --lexer=*)
            LEXER="${option#*=}"
            shift
            ;;
        -diff)
            SHOW_DIFF="true"
            shift
            ;;
        esac
    done

    [[ ! -f $LEXER ]] && (echo -e "${RED}ERROR:${RESET} $LEXER file does not exist!" && exit 1)

    if [[ ! -f $UC_COMPILER ]]; then
        echo -e "${BLUE}INFO:${RESET} Compiling... "

        flex $LEXER && clang-3.9 -Wall -Wno-unused-function lex.yy.c -o $UC_COMPILER

        if [ $? -eq 0 ]; then
            echo -e "${GREEN}DONE!${RESET}"
        else
            echo -e "${RED}FAILED!!${RESET}"
            exit 1
        fi
    fi
    run_tests $INPUT_DIR $OUTPUT_DIR
fi
