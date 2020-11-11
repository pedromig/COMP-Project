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
   bool l_flag = false, e1_flag = false;
   bool e2_flag = true, t_flag = false;  // print -e2 flag by default

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
%type  <node> Expr 
%type  <node> TypeSpec OperatorExpression

%left COMMA
%right ASSIGN 
%left OR
%left AND 
%left BITWISEOR
%left BITWISEXOR
%left BITWISEAND
%left EQ NE
%left GT GE LT LE
%left MINUS PLUS 
%left MUL DIV MOD
%right NOT

%nonassoc IF_PREC
%nonassoc ELSE
%nonassoc UNARY_OPERATOR

%% 

Program:  FunctionsAndDeclarations                                                                  {;}


FunctionsAndDeclarations: FunctionDefinition FunctionsAndDeclarationsList                           {;}
                        | FunctionDeclaration FunctionsAndDeclarationsList                          {;}
                        | Declaration FunctionsAndDeclarationsList                                  {;}
                        ;


FunctionsAndDeclarationsList: FunctionDefinition FunctionsAndDeclarationsList                       {;}
                            | FunctionDeclaration FunctionsAndDeclarationsList                      {;}
                            | Declaration FunctionsAndDeclarationsList                              {;}
                            | /* epsilon */                                                         {;}
                            ;


FunctionDefinition: TypeSpec FunctionDeclarator FunctionBody                                        {;}



FunctionBody: LBRACE DeclarationsAndStatements RBRACE                                               {;}
            | LBRACE RBRACE                                                                         {;}
            ;


DeclarationsAndStatements: Statement DeclarationsAndStatements                                      {;}
                         | Declaration DeclarationsAndStatements                                    {;}
                         | Statement                                                                {;}
                         | Declaration                                                              {;}
                         | error SEMI                                                               {;}
                         ;


FunctionDeclaration: TypeSpec FunctionDeclarator SEMI                                               {;}


FunctionDeclarator: ID LPAR ParameterList RPAR                                                      {;}


ParameterList: ParameterDeclaration ParameterDeclarationList                                        {;}


ParameterDeclarationList: ParameterDeclarationList COMMA ParameterDeclaration                       {;}
                        | /* epsilon */                                                             {;}
                        ;


ParameterDeclaration: TypeSpec ID                                                                   {;}  
                    | TypeSpec                                                                      {;}
                       

Declaration: TypeSpec Declarator DeclaratorList SEMI                                                {;}


DeclaratorList: DeclaratorList COMMA Declarator                                                     {;}
              |  /* epsilon */                                                                      {;}
              ;


TypeSpec: CHAR                                                                                      {;}
        | INT                                                                                       {;}
        | VOID                                                                                      {;}
        | SHORT                                                                                     {;}
        | DOUBLE                                                                                    {;}
        ;

Declarator: ID ASSIGN Expr                                                                          {;}
          | ID                                                                                      {;}
          ;

Statement: IF LPAR Expr RPAR Statement %prec IF_PREC                                                {;}
         | IF LPAR Expr RPAR Statement ELSE Statement                                               {;}
         | WHILE LPAR Expr RPAR Statement                                                           {;}
         | LBRACE StatementList RBRACE                                                              {;}
         | LBRACE error RBRACE                                                                      {;}
         | RETURN Expr SEMI                                                                         {;}
         | Expr SEMI                                                                                {;}
         | RETURN SEMI                                                                              {;}
         | SEMI                                                                                     {;}
         ;

StatementList: StatementList  Statement                                                             {;}                                                                    {;}
             | /* epsilon */                                                                        {;}
             ;


Expr: OperatorExpression                                                                            {;}                                                                 {;}
    | ID LPAR Expr RPAR                                                                             {;}
    | LPAR Expr RPAR                                                                                {;}
    | ID LPAR RPAR                                                                                  {;}
    | ID LPAR error RPAR                                                                            {;}
    | LPAR error RPAR                                                                               {;}
    | ID                                                                                            {;}
    | INTLIT                                                                                        {;}
    | CHRLIT                                                                                        {;}
    | REALLIT                                                                                       {;}
    ;

OperatorExpression: Expr COMMA Expr                                                                 {;}
                  | Expr ASSIGN Expr                                                                {;}
                  | Expr PLUS Expr                                                                  {;}
                  | Expr MINUS Expr                                                                 {;}
                  | Expr MUL Expr                                                                   {;}
                  | Expr DIV Expr                                                                   {;}
                  | Expr MOD Expr                                                                   {;}
                  | Expr OR Expr                                                                    {;}
                  | Expr AND Expr                                                                   {;}
                  | Expr BITWISEAND Expr                                                            {;}
                  | Expr BITWISEOR Expr                                                             {;}
                  | Expr BITWISEXOR Expr                                                            {;}
                  | Expr EQ Expr                                                                    {;}        
                  | Expr NE Expr                                                                    {;}    
                  | Expr LE Expr                                                                    {;}            
                  | Expr GE Expr                                                                    {;}
                  | Expr LT Expr                                                                    {;}
                  | Expr GT Expr                                                                    {;}
                  | PLUS Expr %prec UNARY_OPERATOR                                                  {;}
                  | MINUS Expr %prec UNARY_OPERATOR                                                 {;}
                  | NOT Expr                                                                        {;}
                  ;


%%


void argparse(int argc, char *argv[]) {
    for (int i = 1; i < argc; ++i) {
        if (!strcmp(argv[i], "-l")) {
             e1_flag = t_flag = e2_flag = false;
            l_flag = true;  
        } else if (!strcmp(argv[i], "-e1")){
            t_flag = l_flag = e2_flag = false;
            e1_flag = true;
        } else if (!strcmp(argv[i], "-e2")) {
            e1_flag = t_flag = l_flag = false;
            e2_flag = true;
        } else if (!strcmp(argv[i], "-t")) {
            l_flag = e2_flag = e1_flag = false;
            t_flag = true; 
        }
    }
}

int main(int argc, char *argv[]) {
    argparse(argc, argv);
    if (l_flag || e1_flag) 
        yylex();
    else if (t_flag || e2_flag) 
        yyparse();
    return 0;
}
