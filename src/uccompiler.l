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
    #include <stdbool.h>

    // Custom Error Print Messages
    #define inv_char_const_error(line, column, c)\
        printf("Line %d, col %d: invalid char constant \('%s)\n", line, column, c)

    #define unterm_comment_error(line, column)\
        printf("Line %d, col %d: unterminated comment\n",line, column)

    #define unterm_char_const_error(line, column)\
        printf("Line %d, col %d: unterminated char constant\n",line, column)

    #define ilegal_char_error(line, column, c)\
        printf("Line %d, col %d: illegal character \(%s)\n", line, column, c)

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
        if((l_flag))\
            printf(__VA_ARGS__);

    // Column Counter
    int yycolumno = 1;

    // Helper Variables for Line Errors
    int yysavedlineno;
    int yysavedcolumno;    

    // Compiler Flags
    bool l_flag = false; // print -e1 option by default 
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
%X MULTI_LINE_COMMENT CHAR_LITERAL

%%

{CHAR}                                                			          {printl("CHAR\n"); yycolumno += yyleng;}
{ELSE}                                                			          {printl("ELSE\n"); yycolumno += yyleng;}
{WHILE}                                               			          {printl("WHILE\n"); yycolumno += yyleng;}
{IF}                                                  			          {printl("IF\n"); yycolumno += yyleng;}
{INT}                                                 			          {printl("INT\n"); yycolumno += yyleng;}
{SHORT}                                               		 	          {printl("SHORT\n"); yycolumno += yyleng;}
{DOUBLE}                                              			          {printl("DOUBLE\n"); yycolumno += yyleng;}
{RETURN}                                              			          {printl("RETURN\n"); yycolumno += yyleng;}
{VOID}                                                			          {printl("VOID\n"); yycolumno += yyleng;}
{RESERVED}                                            			          {printl("RESERVED\(%s)\n", yytext); yycolumno += yyleng;}
    
{ID}                                                  			          {printl("ID\(%s)\n", yytext); yycolumno += yyleng;}
    
{BITWISEAND}                                          			          {printl("BITWISEAND\n"); yycolumno += yyleng;}
{BITWISEOR}                                           			          {printl("BITWISEOR\n"); yycolumno += yyleng;}
{BITWISEXOR}                                          			          {printl("BITWISEXOR\n"); yycolumno += yyleng;}
{AND}                                                 			          {printl("AND\n"); yycolumno += yyleng;}
{OR}                                                  			          {printl("OR\n"); yycolumno += yyleng;}
{NOT}                                                 			          {printl("NOT\n"); yycolumno += yyleng;}
{ASSIGN}                                              			          {printl("ASSIGN\n"); yycolumno += yyleng;}
{MUL}                                                 			          {printl("MUL\n"); yycolumno += yyleng;}
{DIV}                                                 			          {printl("DIV\n"); yycolumno += yyleng;}
{PLUS}                                                		              {printl("PLUS\n"); yycolumno += yyleng;}
{MINUS}                                               	 		          {printl("MINUS\n"); yycolumno += yyleng;}
{MOD}                                                 			          {printl("MOD\n"); yycolumno += yyleng;} 
{COMMA}                                               			          {printl("COMMA\n"); yycolumno += yyleng;}
{SEMI}                                                	 		          {printl("SEMI\n"); yycolumno += yyleng;}
{EQ}                                                   			          {printl("EQ\n"); yycolumno += yyleng;}
{NE}                                                  			          {printl("NE\n"); yycolumno += yyleng;}
{GE}                                                  			          {printl("GE\n"); yycolumno += yyleng;}
{GT}                                                  			          {printl("GT\n"); yycolumno += yyleng;}
{LE}                                                  		              {printl("LE\n"); yycolumno += yyleng;}
{LT}                                                 			          {printl("LT\n"); yycolumno += yyleng;}
{LBRACE}                                              			          {printl("LBRACE\n"); yycolumno += yyleng;}
{RBRACE}                                              			          {printl("RBRACE\n"); yycolumno += yyleng;}
{LPAR}                                                		 	          {printl("LPAR\n"); yycolumno += yyleng;}
{RPAR}                                                 			          {printl("RPAR\n"); yycolumno += yyleng;}

{INTLIT}                                              			          {printl("INTLIT\(%s)\n", yytext); yycolumno += yyleng;}
{REALLIT}                                             			          {printl("REALLIT\(%s)\n", yytext); yycolumno += yyleng;}

{CHAR_LITERAL_DELIM}                                                      {begin_charlit(yylineno, yycolumno); yycolumno += yyleng;}
<CHAR_LITERAL>{CHRLIT}{CHAR_LITERAL_DELIM}                                {printl("CHRLIT\('%s)\n", yytext); BEGIN 0; yycolumno += yyleng;}
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
.                                                     			          {ilegal_char_error(yylineno, yycolumno, yytext); yycolumno += yyleng;}
<<EOF>>                                               			          {return 0;}

%%

void argparse(int argc, char *argv[]) {
    for (int i = 1; i < argc; ++i) {
        if (!strcmp(argv[i], "-l"))
            l_flag = true;
        else if (!strcmp(argv[i], "-e1"))
            l_flag = false;
    }
}

int yywrap() {
    return 1;
}

int main(int argc, char *argv[]) {
    argparse(argc, argv);
    return yylex();
}
