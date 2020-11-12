/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INTLIT = 258,
    CHRLIT = 259,
    REALLIT = 260,
    IF = 261,
    ELSE = 262,
    WHILE = 263,
    RETURN = 264,
    CHAR = 265,
    INT = 266,
    SHORT = 267,
    DOUBLE = 268,
    VOID = 269,
    PLUS = 270,
    MINUS = 271,
    MUL = 272,
    DIV = 273,
    MOD = 274,
    EQ = 275,
    NE = 276,
    GE = 277,
    GT = 278,
    LE = 279,
    LT = 280,
    AND = 281,
    OR = 282,
    NOT = 283,
    BITWISEAND = 284,
    BITWISEOR = 285,
    BITWISEXOR = 286,
    ASSIGN = 287,
    COMMA = 288,
    LBRACE = 289,
    LPAR = 290,
    RBRACE = 291,
    RPAR = 292,
    SEMI = 293,
    ID = 294,
    NO_ELSE = 295,
    UNARY_OPERATOR = 296
  };
#endif
/* Tokens.  */
#define INTLIT 258
#define CHRLIT 259
#define REALLIT 260
#define IF 261
#define ELSE 262
#define WHILE 263
#define RETURN 264
#define CHAR 265
#define INT 266
#define SHORT 267
#define DOUBLE 268
#define VOID 269
#define PLUS 270
#define MINUS 271
#define MUL 272
#define DIV 273
#define MOD 274
#define EQ 275
#define NE 276
#define GE 277
#define GT 278
#define LE 279
#define LT 280
#define AND 281
#define OR 282
#define NOT 283
#define BITWISEAND 284
#define BITWISEOR 285
#define BITWISEXOR 286
#define ASSIGN 287
#define COMMA 288
#define LBRACE 289
#define LPAR 290
#define RBRACE 291
#define RPAR 292
#define SEMI 293
#define ID 294
#define NO_ELSE 295
#define UNARY_OPERATOR 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 34 "uccompiler.y"

    token_t token;
    ast_node_t *node;

#line 144 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
