# COMP-Project: UCCOMPILER
This project was elaborated in the context of the Compilers course of the Informatics Engineering Course @University of Coimbra. (COMP-2020 UC)
## Objective
The construction of a compiler for the "UC" programming language, a subset of the C programing language acording to the C99 standard. 
## Languages & Tools
  - Lex (flex) 
  - Bison (yacc)
  - LLVM (llvm-3.9)
  - Clang (clang-3.9)
## Instalation 
 - cd src 
 - flex uccompiler.l && yacc $2 uccompiler.y -d && clang-3.9 -Wall *.c -o uccompiler
## Usage
  - ./uccompiler < input.uc > output.out && llc-3.9 output.out && clang-3.9 output.s -o output
  The compiler can be tested using the test.sh shell script. To know more about it, execute it by following these steps: 
    - chmod u+x test.sh 
    - ./test.sh 
### Compiler flags
    • -l: Perform a lexical analysis, reporting tokens found and lexical errors, and exits.
    • -e1: Performs a lexical analysis, reporting only lexical errors and exits.
    • -t: Performs a syntactic analysis, reporting lexical / syntactic errors, prints the syntax tree built during the parsing of the program if it is syntaticaly correct and exits.
    • -e2: Performs a syntactic analysis, reporting only lexical or syntactic errors and exits.
    • -s: Perform a semantic analysis (if there are no syntactic errors), reporting the
    semantic errors, printing the contents of the symbol table(s) and the annotated abstract syntax tree (AST) and exits.
    • -e3: Perform a semantic analysis (if there are no syntactic errors), reporting predetermined
    semantic errors, and exits
    • Default: Perform all stages of the source code analysis and emmit LLVM IR machine code that can be executed running the lli-3.9 on the output.out or by compiling it with llc-3.9 and using clang on the generated assembly file to allow execution

## Collaborators
  - [Gabriel Fernandes](https://github.com/gabrielmendesfernandes)
