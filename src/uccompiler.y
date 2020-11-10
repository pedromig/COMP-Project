%{
    
    /**
     * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
     * Projeto de Compiladores 2020/2021
     *
     * 2018288117 Gabriel Mendes Fernandes
     * 2018283166 Pedro Miguel Duque Rodrigues
     *   
    */

   // C Standard library Includes
   #include <stdio.h>
   #include <stdlib.h>
   #include <string.h>
   #include <stdbool.h>
   
   // Yacc and other Includes...
   #include "ast.h"
 
   // Functions
   extern int yylex();
   extern void yyerror(char *str);

   // Compiler Flags
   extern bool l_flag, e1_flag;
   bool e2_flag, t_flag;   


%}

// Token types
%union {
    token_t token;
    ast_node_t *node;
}

%token <token> INTLIT CHRLIT REALLIT
%token <token> IF ELSE WHILE RETURN 
%token <token> CHAR INT SHORT DOUBLE VOID
%token <token> PLUS MINUS MUL DIV MOD 
%token <token> EQ NE GE GT LE LT AND OR NOT BITWISEAND BITWISEOR BITWISEXOR 
%token <token> ASSIGN COMMA LBRACE LPAR RBRACE RPAR SEMI ID 

%type  <node> Program 
%type  <node> FunctionsAndDeclarations FunctionsAndDeclarationsList FunctionDefinition FunctionBody FunctionDeclarator
%type  <node> Declaration Declarator DeclaratorList DeclarationsAndStatements
%type  <node> ParameterList ParameterDeclaration ParameterDeclarationList
%type  <node> Statement StatementList
%type  <node> Expr ExprList OperatorList
%type  <node> TypeSpec Operator BinaryOperator UnaryOperator 
%type  <node> DeclarationError StatementError ExpressionError

%% 

Program:  FunctionsAndDeclarations


FunctionsAndDeclarations: FunctionDefinition FunctionsAndDeclarationsList
                        | FunctionDeclaration FunctionsAndDeclarationsList
                        | Declaration FunctionsAndDeclarationsList
                        ;


FunctionsAndDeclarationsList: FunctionsAndDeclarations
                            | FunctionsAndDeclarationsList FunctionsAndDeclarationsList
                            | /* epsilon */
                            ;


FunctionDefinition: TypeSpec FunctionDeclarator FunctionBody



FunctionBody: LBRACE DeclarationsAndStatements RBRACE
            | LBRACE RBRACE
            ;


DeclarationsAndStatements: Statement DeclarationsAndStatements
                         | Declaration DeclarationsAndStatements
                         | Statement
                         | Declaration
                         ;


FunctionDeclaration: TypeSpec FunctionDeclarator SEMI


FunctionDeclarator: ID LPAR ParameterList RPAR


ParameterList: ParameterDeclaration ParameterDeclarationList


ParameterDeclarationList: ParameterDeclarationList ParameterDeclarationList
                        | COMMA ParameterDeclaration
                        | /* epsilon */
                        ;


ParameterDeclaration: TypeSpec ID
                    | TypeSpec
                    ;


Declaration: TypeSpec Declarator DeclaratorList SEMI
           | DeclarationError
           ;


DeclaratorList: DeclaratorList DeclaratorList
              | COMMA DeclaratorList
              |  /* epsilon */
              ;


TypeSpec: CHAR 
        | INT 
        | VOID 
        | SHORT
        | DOUBLE
        ;

Declarator: ID ASSIGN Expr
          | ID
          ;

Statement: IF LPAR Expr RPAR StatementError ElseStatement
         | WHILE LPAR Expr RPAR StatementError
         | LBRACE StatementList RBRACE
         | RETURN Expr SEMI 
         | Expr SEMI
         | RETURN SEMI
         | SEMI
         ;

StatementList: StatementList  StatementList 
             | StatementList 
             | /* epsilon */
             ;

ElseStatement: ELSE Statement
             | /* epsilon */
             ;


Expr: Expr Operator Expr                   
    | UnaryOperator Expr
    | ID LPAR OperatorList RPAR
    | ID | INTLIT | CHRLIT | REALLIT | LPAR Expr RPAR
    ;


Operator: UnaryOperator
        | BinaryOperator
        | COMMA 
        ;

UnaryOperator: PLUS 
             | MINUS 
             | NOT
             ;

BinaryOperator: ASSIGN 
              | MUL 
              | DIV 
              | MOD 
              | OR 
              | AND 
              | BITWISEAND 
              | BITWISEOR 
              | BITWISEXOR 
              | EQ 
              | NE 
              | LE 
              | GE 
              | LT 
              | GT
              ;

OperatorList: Expr ExprList
            | /* epsilon */
            ;

ExprList: ExprList ExprList
        | COMMA Expr
        | /* epsilon */
        ;


DeclarationError: error SEMI


StatementError: error SEMI
             | LBRACE error RBRACE
             | Statement
             ;


ExpressionError: ID LPAR error RPAR
               | LPAR error RPAR
               ;

%%


void argparse(int argc, char *argv[]) {
    for (int i = 1; i < argc; ++i) {
        if (!strcmp(argv[i], "-l")) {
            t_flag = e2_flag = false;
            e1_flag = l_flag = true;  
        } else if (!strcmp(argv[i], "-e1")){
            t_flag = l_flag = e2_flag = false;
            e1_flag = true;
        } else if (!strcmp(argv[i], "-e2")) {
            t_flag = l_flag = false;
            e1_flag = e2_flag = true;
        } else if (!strcmp(argv[i], "-t")) {
            l_flag = e2_flag = e1_flag = false;
            t_flag = true;
        } else {
            l_flag = e1_flag = t_flag = false;
            e2_flag = true;
        }
    }
}

int main(int argc, char *argv[]) {
    argparse(argc, argv);
    return yyparse();
}
