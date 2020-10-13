CHR             [a-zA-Z_]

OOO             "\\"[0-7]{1-3}

INTLIT          [0-9]+
ID              {CHR}({CHR}|{INTLIT})*
CHRLIT          [a-zA-Z0-9 \t\"\\]|{OOO}
REALLIT         {INTLIT}"."({INTLIT}?([eE][-+]?{INTLIT})?)
CHAR            "char"
ELSE            "else"
WHILE           "while"
IF              "if"
INT             "int"
SHORT           "short"
DOUBLE          "double"
RETURN          "return"
VOID            "void"
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

%X COMMENT


%{
int line = 0; //to keep track of the line in the input (changed everytime we read a \n)
int col = 0;  //to know the column that we're on (reset whenever we read a \n and incremented everytime we read a new character. Unless we're in a comment)
int parentesis = 0; //if it is zero we know that all open parentesis were closed (increment whenever we read a "(" and decrement when we read ")". We need to verify if the number is >0 to decrement it, otherwise something is wrong)
%}


%%
{ELSE}      {printf("ELSE");}
{WHILE}     {printf("WHILE");}
{IF}        {printf("IF");}
{INT}       {printf("INT");}
{CHAR}      {printf("CHAR");}
{INTLIT}    {printf("INTLIT\(%s)", yytext);}
{CHRLIT}    {printf("CHRLIT\('%s')\n", yytext);}
{REALLIT}   {printf("REALLIT\(%s)\n", yytext);}
{ID}        {printf("ID\(%s)\n", yytext);}


"/*"        {BEGIN COMMENT;}
<COMMENT>.  ;
<COMMENT>\n ;
<COMMENT> "*/"  {BEGIN 0;}


%%


int yywrap() {
    return 1;
}

int main(){
    yylex();
    return 0;
}
