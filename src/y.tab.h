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
    RESERVED = 265,
    CHAR = 266,
    INT = 267,
    SHORT = 268,
    DOUBLE = 269,
    VOID = 270,
    PLUS = 271,
    MINUS = 272,
    MUL = 273,
    DIV = 274,
    MOD = 275,
    EQ = 276,
    NE = 277,
    GE = 278,
    GT = 279,
    LE = 280,
    LT = 281,
    AND = 282,
    OR = 283,
    NOT = 284,
    BITWISEAND = 285,
    BITWISEOR = 286,
    BITWISEXOR = 287,
    ASSIGN = 288,
    COMMA = 289,
    LBRACE = 290,
    LPAR = 291,
    RBRACE = 292,
    RPAR = 293,
    SEMI = 294,
    ID = 295,
    NO_ELSE = 296,
    UNARY_OPERATOR = 297
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
#define RESERVED 265
#define CHAR 266
#define INT 267
#define SHORT 268
#define DOUBLE 269
#define VOID 270
#define PLUS 271
#define MINUS 272
#define MUL 273
#define DIV 274
#define MOD 275
#define EQ 276
#define NE 277
#define GE 278
#define GT 279
#define LE 280
#define LT 281
#define AND 282
#define OR 283
#define NOT 284
#define BITWISEAND 285
#define BITWISEOR 286
#define BITWISEXOR 287
#define ASSIGN 288
#define COMMA 289
#define LBRACE 290
#define LPAR 291
#define RBRACE 292
#define RPAR 293
#define SEMI 294
#define ID 295
#define NO_ELSE 296
#define UNARY_OPERATOR 297

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 48 "uccompiler.y"

    token_t token;
    ast_node_t *node;

#line 146 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
