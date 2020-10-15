#!/bin/bash

# Compiler Tester!
# @version 2.0
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
SHOW_DIFF="false"

function run_tests() {
    for file_path in $1/*.{uc,c}; do
        ucfile=$(basename "$file_path")
        outfile=${ucfile%.*}.out

        ./$UC_COMPILER $COMPILER_FLAGS <$file_path >$2/$outfile

        (diff -y --suppress-common-lines $1/$outfile $2/$outfile) &>DIFFOUT

        if [ $? -eq 0 ]; then
            echo -e ✅ "${GREEN}TEST PASSED!!${RESET}" $ucfile
        else
            echo -e ❌ "${RED}TEST FAILED!!${RESET}" $ucfile
            [[ $SHOW_DIFF == "true" ]] && echo && cat -n DIFFOUT && echo
        fi
    done
    rm DIFFOUT
}

function compile() {
    flex $1 && clang-3.9 -Wall -Wno-unused-function lex.yy.c -o $2
}

if [ $# -eq 0 ]; then
    echo "
    Usage: ./test.sh [compiler] [-args="compiler_args"] [-lex="lex_file"] [-i="input_dir"] [-o="output_dir"] [-diff]
    Description:

        [compiler] -> REQUIRED
            The nam e / path of the compiler executable. 
            If the name suplied for the executable does not correspond to a existing executable
            the script will atempt to generate one for you using the default .l file (uccompiler.l)
            or the one that you specify using the -lex flag.

            NOTE: Everytime that the changes are made to the .l file the script will attempt to recompile

        [-args="FLAGS"] -> OPTIONAL
            A string with space separated flags that will be passed to the compiler.
            NOTE: There is the option to always provide a bunch of flags by default. To achive this
            edit the COMPILER_FLAGS

        [-lex="PATH"] -> OPTIONAL
            A string with the name / path of the lex file used to produce the compiler
            NOTE: You may change the default name / path by editing the LEXER variable in the script.

        [-i="PATH"] -> OPTIONAL
            A string with the name / path of the directory that contains the source code files (.uc, .c)
            and the files containing the expected output (.out)
            NOTE: You may change the default name / path by editing the INPUT_DIR variavle in the script

        [-o="PATH"] -> OPTIONAL
            A string with the name / path of the directory that will contain the output obtained from
            running your compiler on the source code file (.uc, .c) provided.
            NOTE: You may change the default name / path by editing the OUTPUT_DIR variable in the script

        [-diff] -> OPTIONAL
            On the test cases where there are errors it shows a numerated list of lines where there are differences
            between the expected compiler output and yours. If this flag is not specified it will not show the diff
            by default but this behaviour can be changed by edition the SHOW_DIFF variable and setting it to "true"
            
    Example Usage: 
        user@computer$ ./test.sh ucc -args=\"-l\" 
        user@computer$ ./test.sh ucc -args=\"-e1\" 
        user@computer$ ./test.sh ucc -args=\"-l\" -diff
        user@computer$ ./test.sh my_compiler -args=\"-e1 -l\"
        user@computer$ ./test.sh ucc -lex=\"compiler.l\" -args=\"-l\" -i=tests/input_folder -o=tests/my_output_folder
    "
    
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

    if [[ ! -f $UC_COMPILER || $LEXER -nt $UC_COMPILER ]]; then
        echo -e "${BLUE}INFO:${RESET} Compiling... "

        compile $LEXER $UC_COMPILER

        if [ $? -eq 0 ]; then
            echo -e "${GREEN}DONE!${RESET}"
        else
            echo -e "${RED}FAILED!!${RESET}"
            exit 1
        fi
    fi
    run_tests $INPUT_DIR $OUTPUT_DIR
fi
