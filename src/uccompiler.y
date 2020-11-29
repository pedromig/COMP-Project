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
    #include <assert.h>
   
    // Yacc and other Includes...
    #include "ast.h"
    #include "symbol_table.h"
    #include "semantic_analysis.h"

    // Functions
    extern int yylex(void);
    extern void yyerror(char *str);
    int yylex_destroy(void);              // free memory allocated by lex internal scanner

    // Compiler Flags
    bool l_flag = false, e1_flag = false;
    bool e2_flag = false, t_flag = false; 
    bool s_flag = false;

    // Error flags
    bool syntax_error = false;
    extern bool lexical_error; 

    // Root node of the abstract sintax tree of our program
    ast_node_t *program = NULL;

    // Root Node of the list of symbol tables of our program
    symtab_t *symtab_list = NULL;
%}

// YYSTYPE (yylval) possible values
%union {
    token_t token;
    ast_node_t *node;
}

// Free Yacc Stack properly when recovering from errors
// Warning: Not POSIX Yacc compliant works well with bison 
// Throws warning -Wyacc on compilation to disable run yacc with -Wno-yacc flag.
%destructor {} Program
%destructor { if($$) {free_ast($$);}} <node>
%destructor { free($$.value); } ID INTLIT CHRLIT REALLIT

// Yacc Token type declarations
%token <token> INTLIT CHRLIT REALLIT
%token <token> IF ELSE WHILE RETURN RESERVED
%token <token> CHAR INT SHORT DOUBLE VOID
%token <token> PLUS MINUS MUL DIV MOD 
%token <token> EQ NE GE GT LE LT AND OR NOT BITWISEAND BITWISEOR BITWISEXOR 
%token <token> ASSIGN COMMA LBRACE LPAR RBRACE RPAR SEMI ID 

// Yacc Rule type declarations
%type <node> Program 
%type <node> FunctionsAndDeclarations FunctionsAndDeclarationsList FunctionDefinition FunctionBody FunctionDeclarator FunctionDeclaration
%type <node> Declaration Declarator DeclaratorList DeclarationsAndStatements
%type <node> ParameterList ParameterDeclaration ParameterDeclarationList
%type <node> Statement StatementList StatementOrError
%type <node> Expr ExprOptionalList ExprList
%type <node> TypeSpec OperatorExpression

// Operator Precedences acording to C99 standard
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

%nonassoc NO_ELSE
%nonassoc ELSE
%nonassoc UNARY_OPERATOR

%% 

Program:  FunctionsAndDeclarations                                                          {$$ = program = ast_node("Program", NULL_TOKEN); add_children(program, 1, $1);}


FunctionsAndDeclarations: FunctionDefinition FunctionsAndDeclarationsList                   {$$ = $1; add_siblings($$, 1, $2);}
                        | FunctionDeclaration FunctionsAndDeclarationsList                  {$$ = $1; add_siblings($$, 1, $2);}
                        | Declaration FunctionsAndDeclarationsList                          {if (!$1) { $$ = $2; } else { $$ = $1; add_siblings($$, 1, $2); }}
                        ;


FunctionsAndDeclarationsList: FunctionDefinition FunctionsAndDeclarationsList               {$$ = $1; add_siblings($$, 1, $2);}
                            | FunctionDeclaration FunctionsAndDeclarationsList              {$$ = $1; add_siblings($$, 1, $2);}
                            | Declaration FunctionsAndDeclarationsList                      {if (!$1) { $$ = $2; } else { $$ = $1; add_siblings($$, 1, $2); }}
                            | /* epsilon */                                                 {$$ = NULL;}
                            ;


FunctionDefinition: TypeSpec FunctionDeclarator FunctionBody                                {$$ = ast_node("FuncDefinition", NULL_TOKEN); add_children($$, 3, $1, $2, $3);}



FunctionBody: LBRACE DeclarationsAndStatements RBRACE                                       {$$ = ast_node("FuncBody", NULL_TOKEN); add_children($$, 1, $2);}
            | LBRACE RBRACE                                                                 {$$ = ast_node("FuncBody", NULL_TOKEN);}
            ;


DeclarationsAndStatements: Statement DeclarationsAndStatements                              {if (!$1) { $$ = $2; } else { $$ = $1; add_siblings($$, 1, $2); }}
                         | Declaration DeclarationsAndStatements                            {if (!$1) { $$ = $2; } else { $$ = $1; add_siblings($$, 1, $2); }}
                         | Statement                                                        {$$ = $1;}
                         | Declaration                                                      {$$ = $1;}
                         ;


FunctionDeclaration: TypeSpec FunctionDeclarator SEMI                                       {$$ = ast_node("FuncDeclaration",NULL_TOKEN);  add_children($$, 2, $1, $2); }


FunctionDeclarator: ID LPAR ParameterList RPAR                                              {$$ = ast_node("Id", $1); add_siblings($$, 1, $3);}


ParameterList: ParameterDeclaration ParameterDeclarationList                                {$$ = ast_node("ParamList", NULL_TOKEN); add_children($$, 2, $1, $2);}


ParameterDeclarationList: COMMA ParameterDeclaration ParameterDeclarationList               {$$ = $2; add_siblings($$, 1, $3);}
                        | /* epsilon */                                                     {$$ = NULL;}
                        ;


ParameterDeclaration: TypeSpec ID                                                           {$$ = ast_node("ParamDeclaration", NULL_TOKEN); ASSIGN_TOKEN_LC($$, $2); add_children($$, 2, $1, ast_node("Id", $2));}  
                    | TypeSpec                                                              {$$ = ast_node("ParamDeclaration", NULL_TOKEN); ASSIGN_NODE_LC($$, $1); add_children($$, 1, $1);}
                    ;       


Declaration: TypeSpec Declarator DeclaratorList SEMI                                        {$$ = $2; add_typespec($1, $$); add_typespec($1, $3); free($1); add_siblings($$, 1, $3);}
           | error SEMI                                                                     {$$ = NULL;}
           ;


DeclaratorList: COMMA Declarator DeclaratorList                                             {$$ = $2; add_siblings($$, 1, $3);}
              |  /* epsilon */                                                              {$$ = NULL;}
              ;


TypeSpec: CHAR                                                                              {$$ = ast_node("Char", $1);}
        | INT                                                                               {$$ = ast_node("Int", $1);}
        | VOID                                                                              {$$ = ast_node("Void", $1);}
        | SHORT                                                                             {$$ = ast_node("Short", $1);}
        | DOUBLE                                                                            {$$ = ast_node("Double", $1);}
        ;


Declarator: ID ASSIGN ExprList                                                              {$$ = ast_node("Declaration", NULL_TOKEN); ASSIGN_TOKEN_LC($$, $1); add_children($$, 2, ast_node("Id", $1), $3);}
          | ID                                                                              {$$ = ast_node("Declaration", NULL_TOKEN); ASSIGN_TOKEN_LC($$, $1); add_children($$, 1, ast_node("Id", $1));}
          ;


Statement: IF LPAR ExprList RPAR StatementOrError %prec NO_ELSE                             {$$ = ast_node("If", $1); add_children($$, 3, null_check($3), null_check($5), null_check(NULL));}
         | IF LPAR ExprList RPAR StatementOrError ELSE StatementOrError                     {$$ = ast_node("If", $1); add_children($$, 3, null_check($3), null_check($5), null_check($7));}
         | WHILE LPAR ExprList RPAR StatementOrError                                        {$$ = ast_node("While", $1); add_children($$, 2 , null_check($3), null_check($5));}
         | LBRACE StatementList RBRACE                                                      {$$ = statement_list($2);}
         | RETURN ExprList SEMI                                                             {$$ = ast_node("Return", NULL_TOKEN); ASSIGN_NODE_LC($$, $2); add_children($$, 1, $2);}
         | RETURN SEMI                                                                      {$$ = ast_node("Return", $1); add_children($$, 1, ast_node("Null", NULL_TOKEN));}
         | ExprList SEMI                                                                    {$$ = $1;}   
         | SEMI                                                                             {$$ = NULL;}
         | LBRACE error RBRACE                                                              {$$ = NULL;}  
         | LBRACE RBRACE                                                                    {$$ = NULL;}
         ;


StatementList: StatementOrError StatementList                                               {if (!$1) { $$ = $2; } else if (!$1 && !$2) { $$ = NULL; } else { $$ = $1; add_siblings($$, 1, $2); } }                                                                    
             | StatementOrError                                                             {$$ = $1;}
             ;


StatementOrError: Statement                                                                 {$$ = $1;}
                | error SEMI                                                                {$$ = NULL;}
                ;


Expr: OperatorExpression                                                                    {$$ = $1;}     
    | LPAR ExprList RPAR                                                                    {$$ = $2;}                                                          
    | ID LPAR Expr ExprOptionalList RPAR                                                    {$$ = ast_node("Call", NULL_TOKEN); ASSIGN_TOKEN_LC($$, $1); add_children($$, 3, ast_node("Id", $1), $3, $4);}
    | ID LPAR RPAR                                                                          {$$ = ast_node("Call", NULL_TOKEN); ASSIGN_TOKEN_LC($$, $1); add_children($$, 1, ast_node("Id", $1));}
    | ID                                                                                    {$$ = ast_node("Id", $1);}
    | INTLIT                                                                                {$$ = ast_node("IntLit", $1);}
    | CHRLIT                                                                                {$$ = ast_node("ChrLit", $1);}
    | REALLIT                                                                               {$$ = ast_node("RealLit", $1);}
    | ID LPAR error RPAR                                                                    {$$ = NULL; free($1.value);}
    | LPAR error RPAR                                                                       {$$ = NULL;}
    ;


ExprList: ExprList COMMA Expr                                                               {$$ = ast_node("Comma", $2); add_children($$, 2, $1, $3);}
        | Expr                                                                              {$$ = $1;}
        ;


ExprOptionalList: COMMA Expr ExprOptionalList                                               {$$ = $2; add_siblings($$, 1, $3);}
                | /* epsilon */                                                             {$$ = NULL;}
                ;
        
        
OperatorExpression: Expr ASSIGN Expr                                                        {$$ = ast_node("Store", $2); add_children($$, 2, $1, $3);}
                  | Expr PLUS Expr                                                          {$$ = ast_node("Add",$2); add_children($$, 2, $1, $3);}
                  | Expr MINUS Expr                                                         {$$ = ast_node("Sub", $2); add_children($$, 2, $1, $3);}
                  | Expr MUL Expr                                                           {$$ = ast_node("Mul", $2); add_children($$, 2, $1, $3);}
                  | Expr DIV Expr                                                           {$$ = ast_node("Div", $2); add_children($$, 2, $1, $3);}
                  | Expr MOD Expr                                                           {$$ = ast_node("Mod", $2); add_children($$, 2, $1, $3);}
                  | Expr OR Expr                                                            {$$ = ast_node("Or", $2); add_children($$, 2, $1, $3);}
                  | Expr AND Expr                                                           {$$ = ast_node("And", $2); add_children($$, 2, $1, $3);}
                  | Expr BITWISEAND Expr                                                    {$$ = ast_node("BitWiseAnd", $2); add_children($$, 2, $1, $3);}
                  | Expr BITWISEOR Expr                                                     {$$ = ast_node("BitWiseOr", $2); add_children($$, 2, $1, $3);}
                  | Expr BITWISEXOR Expr                                                    {$$ = ast_node("BitWiseXor", $2); add_children($$, 2, $1, $3);}
                  | Expr EQ Expr                                                            {$$ = ast_node("Eq", $2); add_children($$, 2, $1, $3);}        
                  | Expr NE Expr                                                            {$$ = ast_node("Ne", $2); add_children($$, 2, $1, $3);}    
                  | Expr LE Expr                                                            {$$ = ast_node("Le", $2); add_children($$, 2, $1, $3);}            
                  | Expr GE Expr                                                            {$$ = ast_node("Ge", $2); add_children($$, 2, $1, $3);}
                  | Expr LT Expr                                                            {$$ = ast_node("Lt", $2); add_children($$, 2, $1, $3);}
                  | Expr GT Expr                                                            {$$ = ast_node("Gt", $2); add_children($$, 2, $1, $3);}
                  | PLUS Expr  %prec UNARY_OPERATOR                                         {$$ = ast_node("Plus", $1); add_children($$, 1, $2);}
                  | MINUS Expr %prec UNARY_OPERATOR                                         {$$ = ast_node("Minus", $1); add_children($$, 1, $2);}
                  | NOT Expr                                                                {$$ = ast_node("Not", $1); add_children($$, 1, $2);}
                  ;

%%


void argparse(int argc, char *argv[]) {
    for (int i = 1; i < argc; ++i) {
        if (!strcmp(argv[i], "-l")) {
            e1_flag = t_flag = e2_flag = s_flag = false;
            l_flag = true;  
        } else if (!strcmp(argv[i], "-e1")){
            t_flag = l_flag = e2_flag = s_flag = false;
            e1_flag = true;
        } else if (!strcmp(argv[i], "-e2")) {
            e1_flag = t_flag = l_flag = s_flag = false;
            e2_flag = true;
        } else if (!strcmp(argv[i], "-t")) {
            l_flag = e2_flag = e1_flag = s_flag = false;
            t_flag = true; 
        } else if (!strcmp(argv[i], "-s")) {
            l_flag = e2_flag = e1_flag = t_flag = false;
            s_flag = true;
        } 
    }
}

int main(int argc, char *argv[]) {
    argparse(argc, argv);

    if (l_flag || e1_flag) {
        yylex();
        yylex_destroy();
        return 0;
    } else if (e2_flag) {
        yyparse(); 
    } else if (t_flag) {
        yyparse();
        print_ast(program);  
    } else {
        yyparse(); 
        if (!syntax_error && !lexical_error) {
            semantic_analysis(program); 
            if (s_flag) {
                print_table_list(symtab_list);
                print_ast(program);
            }
        }  
    } 
    
    free_symbol_table_list(symtab_list);
    free_ast(program);
    yylex_destroy();
    return 0;
} 