#!/bin/bash

############# COLORS ###############
YELLOW="\x1B[33m"
RED="\x1B[31m"
GREEN="\x1B[32m"
ORANGE="\x1B[38;5;208m"
BLUE="\x1B[34m"
RESET="\x1B[0m"
####################################
LEXER="uccompiler.l"
COMPILER_NAME="ucc"


if [[ ! -f $LEXER ]]; then 
    echo -e "${RED}ERROR:${RESET} $LEXER file does not exist! "
    echo -ne "${BLUE}INFO:${RESET} Creating file... " && touch $LEXER && echo -e "${GREEN}DONE!${RESET}"
fi 


if [ $# -eq 1 ]; then 
    COMPILER_NAME=$1
fi

echo -ne "${BLUE}INFO:${RESET} Compiling... "

flex $LEXER
clang-3.9 lex.yy.c -o $COMPILER_NAME 

echo -e "${GREEN}DONE!${RESET}" 
