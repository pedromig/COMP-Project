#!/bin/bash

# Compiler Tester!
# @version 3.2
# @author Pedro Miguel Duque Rodrigues

################################################################################################

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
GRAMMAR="uccompiler.y"
SHOW_DIFF="false"
VALGRIND_MEMCHECK="false"

# Flags
LEX_FLAGS=""
YACC_FLAGS="-d -Wno-yacc"                   # Might be useful: "-v" -> y.output
CLANG_FLAGS="-Wall -Wno-unused-function -g" # Might be useful: "-g" -> GDB
UCCOMPILER_FLAGS=""
VALGRIND_FLAGS=" -s --leak-check=full --show-leak-kinds=all --track-origins=yes"
DIFF_FLAGS="" # Might be useful: "--suppress-common-lines"

################################################################################################

function llvm_to_out() {
    output=$1
    cp $output ${output%.*}.ll
    llc-3.9 ${output%.*}.ll && clang-3.9 ${output%.*}.s -o ${output%.*}.exe && ./${output%.*}.exe >${output%.*}.out
    rm -f ${output%.*}.exe ${output%.*}.s
}

function run_tests() {
    for file_path in $1/*.{uc,c}; do
        ucfile=$(basename "$file_path")
        outfile=${ucfile%.*}.out

        [[ $ucfile == "*.uc" || $ucfile == "*.c" ]] && continue

        ./$UC_COMPILER $UCCOMPILER_FLAGS <$file_path >$2/$outfile

        [ $CODEGEN == "true" ] && llvm_to_out $2/$outfile
        (diff -y $DIFF_FLAGS $1/$outfile $2/$outfile) &>DIFFOUT

        if [ $? -eq 0 ]; then
            echo -e ✅ "${GREEN}TEST PASSED!!${RESET}" $ucfile
        else
            echo -e ❌ "${RED}TEST FAILED!!${RESET}" $ucfile
            [[ $SHOW_DIFF == "true" ]] && echo && cat -n DIFFOUT && echo
        fi
        if [[ $VALGRIND_MEMCHECK == "true" ]]; then
            valgrind $VALGRIND_FLAGS ./$UC_COMPILER $UCCOMPILER_FLAGS <$file_path >/dev/null
        fi
    done
    rm DIFFOUT
}

function compile() {
    flex $1 $LEX_FLAGS && yacc $2 $YACC_FLAGS -d && clang-3.9 $CLANG_FLAGS *.c -o $3
}

function need_recompile() {
    for f in $LEXER $GRAMMAR *.{c,h}; do
        if [[ $f -nt $UC_COMPILER ]]; then
            return 1
        fi
    done
    return 0
}

if [ $# -eq 0 ]; then
    echo "
    Usage: ./test.sh [compiler] 
                     [-l|-e1|-e2|-t|-s] 
                     [--diff|-d] [--memcheck|-m] 
                     [--flex="lex_file.l"|-f="lex_file.l"] [--yacc="yacc_file.y"|-y="yacc_file.y"] 
                     [-i="input_dir"] [-o="output_dir"]

    Description:

        [compiler] -> REQUIRED
            The name / path of the compiler executable. 
            If the name suplied for the executable does not correspond to a existing executable
            the script will attempt to generate one for you using the default .l file (uccompiler.l)
            or the one that you specify using the -lex flag.

            NOTE: Everytime that the changes are made to the .l file the script will attempt to recompile

        [-l|-e1|-e2|-t] -> OPTIONAL
            Multiple compiler flags that may be passed to the compiler to see more check the UC compiler
            specification document.
            NOTE: There is the option to always provide a bunch of flags by default. To achive this
            edit the UCCOMPILER_FLAGS

        [-lex="PATH"| --lexer=] -> OPTIONAL
            A string with the name / path of the lex file used to produce the compiler
            NOTE: You may change the default name / path by editing the LEXER variable in the script.

        [-yacc="PATH"| --grammar=] -> OPTIONAL
            A string with the name / path of the yacc file used to produce the compiler
            NOTE: You may change the default name / path by editing the GRAMMAR variable in the script.

        [-i="PATH"| --input-dir=] -> OPTIONAL
            A string with the name / path of the directory that contains the source code files (.uc, .c)
            and the files containing the expected output (.out)
            NOTE: You may change the default name / path by editing the INPUT_DIR variavle in the script

        [-o="PATH"| --output-dir=] -> OPTIONAL
            A string with the name / path of the directory that will contain the output obtained from
            running your compiler on the source code file (.uc, .c) provided.
            NOTE: You may change the default name / path by editing the OUTPUT_DIR variable in the script

        [-d | -diff] -> OPTIONAL
            On the test cases where there are errors it shows a numerated list of lines where there are differences
            between the expected compiler output and yours. If this flag is not specified it will not show the diff
            by default but this behaviour can be changed by edition the SHOW_DIFF variable and setting it to "true"
            
    Example Usage: 
        user@computer$ ./test.sh ucc -l 
        user@computer$ ./test.sh ucc -e1 
        user@computer$ ./test.sh ucc -l -diff
        user@computer$ ./test.sh my_compiler -e1 -l
        user@computer$ ./test.sh ucc -l -lex=\"compiler.l\" -i=tests/input_folder -o=tests/my_output_folder
    "

    exit 1

else
    UC_COMPILER=$1
    CODEGEN="true"
    COMPILE_INPUT_DIR="false"
    for option in "$@"; do
        case $option in
        -l | -e1 | -e2 | -t | -s | -e3)
            UCCOMPILER_FLAGS="$UCCOMPILER_FLAGS $option"
            CODEGEN="false"
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
        -f=* | --flex=*)
            LEXER="${option#*=}"
            shift
            ;;
        -y=* | --yacc=*)
            GRAMMAR="${option#*=}"
            shift
            ;;
        -d | --diff)
            SHOW_DIFF="true"
            shift
            ;;
        -m | --memcheck)
            VALGRIND_MEMCHECK="true"
            shift
            ;;
        -c | --compile-input)
            COMPILE_INPUT_DIR="true"
            shift
            ;;
        esac
    done

    [[ ! -f $LEXER ]] && (echo -e "${RED}ERROR:${RESET} ${LEXER} file does not exist!" && exit 1)
    [[ ! -f $GRAMMAR ]] && (echo -e "${RED}ERROR:${RESET} ${GRAMMAR} file does not exist!" && exit 1)

    need_recompile # checks if there is a more recent version of the program dependencies
    if [[ $? -eq 1 ]]; then
        echo -e "${BLUE} INFO:${RESET} Compiling... "

        compile $LEXER $GRAMMAR $UC_COMPILER

        if [ $? -eq 0 ]; then
            echo -e "${GREEN}COMPILATION SUCCESSFUL!!${RESET}"
        else
            echo -e "${RED}COMPILATION FAILED!!${RESET}"
            exit 1
        fi
    fi

    if [[ $COMPILE_INPUT_DIR == "true" && $CODEGEN == "true" ]]; then
        for file in $INPUT_DIR/*.c; do
            f=$(basename $file)
            f=${f%.*}
            clang-3.9 -Wno-implicit-function-declaration -S -emit-llvm $file -o "$INPUT_DIR/$f.ll"
            clang-3.9 -Wno-implicit-function-declaration "$file" -o "$INPUT_DIR/$f.exe"
            ./"$INPUT_DIR/$f.exe" >"$INPUT_DIR/$f.out"
            rm -f "$INPUT_DIR/$f.exe"
        done
    fi

    run_tests $INPUT_DIR $OUTPUT_DIR
fi
