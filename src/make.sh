#!/bin/bash

############# COLORS ###############
RED="\x1B[31m"
GREEN="\x1B[32m"
BLUE="\x1B[34m"
RESET="\x1B[0m"
####################################

LEXER="uccompiler.l"
COMPILER_NAME="ucc"

if [[ ! -f $LEXER ]]; then
    echo -e "${RED}ERROR:${RESET} $LEXER file does not exist! "
    echo -ne "${BLUE}INFO:${RESET} Creating file... " && touch $LEXER && echo -e "${GREEN}DONE!${RESET}"
    exit 1;
fi

if [ $# -eq 1 ]; then
    COMPILER_NAME=$1
fi

echo -e "${BLUE}INFO:${RESET} Compiling... "

flex $LEXER && clang-3.9 lex.yy.c -o $COMPILER_NAME

if [ $? -eq 0 ]; then
    echo -e "${GREEN}DONE!${RESET}"
else
    echo -e "${RED}FAILED!!${RESET}"
    exit 1;
fi
