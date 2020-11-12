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
    #include <stdbool.h>

    // Yacc and other Includes...
    #include "ast.h"
    #include "y.tab.h"
    
    // Custom Error Print Messages
    #define inv_char_const_error(line, column, c)\
        if (!(t_flag))\
            printf("Line %d, col %d: invalid char constant ('%s)\n", line, column, c)

    #define unterm_comment_error(line, column)\
        if (!(t_flag))\
            printf("Line %d, col %d: unterminated comment\n",line, column)

    #define unterm_char_const_error(line, column)\
        if (!(t_flag))\
            printf("Line %d, col %d: unterminated char constant\n",line, column)

    #define illegal_char_error(line, column, c)\
        if (!(t_flag))\
            printf("Line %d, col %d: illegal character (%s)\n", line, column, c)


    // A helper define to send a token to yacc
    #define SEND_TOKEN(...)\
            if (e2_flag || t_flag) { \
                yylval.token = token(yytext);\
                return __VA_ARGS__;\
            }
    
	// Helper state begin functions/definitions
    #define begin_multi_line_comment(line, column)\
        BEGIN MULTI_LINE_COMMENT;\
        yysavedlineno = line;\
        yysavedcolumno = column; 

    #define begin_charlit(line,column)\
        BEGIN CHAR_LITERAL;\
        yysavedlineno = line;\
        yysavedcolumno = column;

    #define printl(...)\
        if (l_flag)\
            printf(__VA_ARGS__);

    // Line / Column Counter definitions
    int yycolumno = 1;

    // Helper Variables for Line Errors
    int yysavedlineno;
    int yysavedcolumno;  
    
    // Compiler Flags
    extern bool e2_flag, t_flag; 
    extern bool l_flag, e1_flag; 
%}


CHR             [a-zA-Z_]+   
OOO             "\\"[0-7]{1,3}

LINE_END        (\n|\r\n|\r)

INTLIT          [0-9]+
CHRLIT          ([^\n\'\\]|{OOO}|("\\t")|("\\'")|("\\\"")|("\\n")|("\\\\")|(\t))
REALLIT         (({INTLIT}"."{INTLIT}?|"."({INTLIT}))([eE][-+]?{INTLIT})?)|({INTLIT}([eE][-+]?{INTLIT}))

ID              {CHR}({CHR}|{INTLIT})*

CHAR            "char"
ELSE            "else"
WHILE           "while"
IF              "if"
INT             "int"
SHORT           "short"
DOUBLE          "double"
RETURN          "return"
VOID            "void"
RESERVED        ("]"|"["|"--"|"++"|"auto"|"break"|"case"|"const"|"continue"|"default"|"do"|"enum"|"extern"|"float"|"for"|"goto"|"inline"|"int"|"long"|"register"|"restrict"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"volatile"|"_Bool"|"_Complex"|"_Imaginary")

BITWISEAND      "&"
BITWISEOR       "|"
BITWISEXOR      "^"
AND             "&&"
OR              "||"
NOT             "!"
ASSIGN          "="
MUL             "*"
DIV             "/"
PLUS            "+"
MINUS           "-"
MOD             "%"
COMMA           ","
SEMI            ";"
EQ              "=="
NE              "!="
GE              ">="
GT              ">"
LE              "<="
LT              "<"
LBRACE          "{"
RBRACE          "}"
LPAR            "("
RPAR            ")"

CHAR_LITERAL_DELIM              "'"

SINGLE_LINE_COMMENT             "//".*({LINE_END}$)?
MULTI_LINE_COMMENT_BEGIN        "/*"
MULTI_LINE_COMMENT_END          "*/"

%option yylineno
%x MULTI_LINE_COMMENT CHAR_LITERAL

%%

{CHAR}                                                			          {printl("CHAR\n"); yycolumno += yyleng; SEND_TOKEN(CHAR);}
{ELSE}                                                			          {printl("ELSE\n"); yycolumno += yyleng; SEND_TOKEN(ELSE);}
{WHILE}                                               			          {printl("WHILE\n"); yycolumno += yyleng; SEND_TOKEN(WHILE);}
{IF}                                                  			          {printl("IF\n"); yycolumno += yyleng; SEND_TOKEN(IF);}
{INT}                                                 			          {printl("INT\n"); yycolumno += yyleng; SEND_TOKEN(INT);}
{SHORT}                                               		 	          {printl("SHORT\n"); yycolumno += yyleng; SEND_TOKEN(SHORT);}
{DOUBLE}                                              			          {printl("DOUBLE\n"); yycolumno += yyleng; SEND_TOKEN(DOUBLE);}
{RETURN}                                              			          {printl("RETURN\n"); yycolumno += yyleng; SEND_TOKEN(RETURN);}
{VOID}                                                			          {printl("VOID\n"); yycolumno += yyleng; SEND_TOKEN(VOID);}
{RESERVED}                                            			          {printl("RESERVED(%s)\n", yytext); yycolumno += yyleng;}
    
{ID}                                                  			          {printl("ID(%s)\n", yytext); yycolumno += yyleng; SEND_TOKEN(ID);}
    
{BITWISEAND}                                          			          {printl("BITWISEAND\n"); yycolumno += yyleng; SEND_TOKEN(BITWISEAND);}
{BITWISEOR}                                           			          {printl("BITWISEOR\n"); yycolumno += yyleng;SEND_TOKEN(BITWISEOR);}
{BITWISEXOR}                                          			          {printl("BITWISEXOR\n"); yycolumno += yyleng; SEND_TOKEN(BITWISEXOR);}
{AND}                                                 			          {printl("AND\n"); yycolumno += yyleng; SEND_TOKEN(AND);}
{OR}                                                  			          {printl("OR\n"); yycolumno += yyleng; SEND_TOKEN(OR);}
{NOT}                                                 			          {printl("NOT\n"); yycolumno += yyleng; SEND_TOKEN(NOT);}
{ASSIGN}                                              			          {printl("ASSIGN\n"); yycolumno += yyleng; SEND_TOKEN(ASSIGN);}
{MUL}                                                 			          {printl("MUL\n"); yycolumno += yyleng; SEND_TOKEN(MUL);}
{DIV}                                                 			          {printl("DIV\n"); yycolumno += yyleng; SEND_TOKEN(DIV);}
{PLUS}                                                		              {printl("PLUS\n"); yycolumno += yyleng; SEND_TOKEN(PLUS);}
{MINUS}                                               	 		          {printl("MINUS\n"); yycolumno += yyleng; SEND_TOKEN(MINUS);}
{MOD}                                                 			          {printl("MOD\n"); yycolumno += yyleng; SEND_TOKEN(MOD);} 
{COMMA}                                               			          {printl("COMMA\n"); yycolumno += yyleng; SEND_TOKEN(COMMA);}
{SEMI}                                                	 		          {printl("SEMI\n"); yycolumno += yyleng; SEND_TOKEN(SEMI);}
{EQ}                                                   			          {printl("EQ\n"); yycolumno += yyleng; SEND_TOKEN(EQ);}
{NE}                                                  			          {printl("NE\n"); yycolumno += yyleng; SEND_TOKEN(NE);}
{GE}                                                  			          {printl("GE\n"); yycolumno += yyleng; SEND_TOKEN(GE);}
{GT}                                                  			          {printl("GT\n"); yycolumno += yyleng; SEND_TOKEN(GT);}
{LE}                                                  		              {printl("LE\n"); yycolumno += yyleng; SEND_TOKEN(LE);}
{LT}                                                 			          {printl("LT\n"); yycolumno += yyleng; SEND_TOKEN(LT);}
{LBRACE}                                              			          {printl("LBRACE\n"); yycolumno += yyleng; SEND_TOKEN(LBRACE);}
{RBRACE}                                              			          {printl("RBRACE\n"); yycolumno += yyleng; SEND_TOKEN(RBRACE);}
{LPAR}                                                		 	          {printl("LPAR\n"); yycolumno += yyleng; SEND_TOKEN(LPAR);}
{RPAR}                                                 			          {printl("RPAR\n"); yycolumno += yyleng; SEND_TOKEN(RPAR);}

{INTLIT}                                              			          {printl("INTLIT(%s)\n", yytext); yycolumno += yyleng; SEND_TOKEN(INTLIT);}
{REALLIT}                                             			          {printl("REALLIT(%s)\n", yytext); yycolumno += yyleng; SEND_TOKEN(REALLIT);}

{CHAR_LITERAL_DELIM}                                                      {begin_charlit(yylineno, yycolumno); yycolumno += yyleng;}
<CHAR_LITERAL>{CHRLIT}{CHAR_LITERAL_DELIM}                                {printl("CHRLIT('%s)\n", yytext); BEGIN 0; yycolumno += yyleng; SEND_TOKEN(CHRLIT);}
<CHAR_LITERAL>({CHRLIT}|"\\"?[^\'\n\\])*{CHAR_LITERAL_DELIM}              {inv_char_const_error(yysavedlineno, yysavedcolumno, yytext); BEGIN 0; yycolumno += yyleng;}
<CHAR_LITERAL>({CHRLIT}|"\\"?[^\'\n\\])*"\\"?{LINE_END}                   {unterm_char_const_error(yysavedlineno, yysavedcolumno); BEGIN 0; yycolumno = 1;}
<CHAR_LITERAL><<EOF>>                                                     {unterm_char_const_error(yysavedlineno, yysavedcolumno); BEGIN 0; yycolumno = 1;}


{SINGLE_LINE_COMMENT}                                 			          {;}                       
{MULTI_LINE_COMMENT_BEGIN}                            			          {begin_multi_line_comment(yylineno, yycolumno); yycolumno += yyleng;}

<MULTI_LINE_COMMENT>{LINE_END}                                			  {yycolumno = 1;}
<MULTI_LINE_COMMENT>.                                 			          {yycolumno += yyleng;}
<MULTI_LINE_COMMENT>{MULTI_LINE_COMMENT_END}          			          {BEGIN 0; yycolumno += yyleng;}
<MULTI_LINE_COMMENT><<EOF>>                           			          {unterm_comment_error(yysavedlineno, yysavedcolumno); BEGIN 0;}
                                                      
{LINE_END}                                            			          {yycolumno = 1;}                                                 
[ \t]+                                                			          {yycolumno += yyleng;}
.                                                     			          {illegal_char_error(yylineno, yycolumno, yytext); yycolumno += yyleng;}
<<EOF>>                                               			          {yycolumno += yyleng; return 0;}

%%

int yywrap() {
    return 1;
} 

void yyerror(char *str) {
    printf("Line %d, col %d: %s: %s\n", yylineno, yycolumno - yyleng, str, yytext);
}