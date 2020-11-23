/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "uccompiler.y"

    
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
    bool e2_flag = true, t_flag = false;  // print -e2 flag by default
    bool s_flag = false;

    // Error flags
    bool syntax_error = false;
    extern bool lexical_error; 

    // Root node of the abstract sintax tree of our program
    ast_node_t *program = NULL;

    // Root Node of the list of symbol tables of our program
    symtab_list_t *symtab_list = NULL;

#line 114 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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
#line 46 "uccompiler.y"

    token_t token;
    ast_node_t *node;

#line 255 "y.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */



#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  14
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   424

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  43
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  23
/* YYNRULES -- Number of rules.  */
#define YYNRULES  82
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  149

#define YYUNDEFTOK  2
#define YYMAXUTOK   297


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    88,    88,    91,    92,    93,    97,    98,    99,   100,
     104,   108,   109,   113,   114,   115,   116,   120,   123,   126,
     129,   130,   134,   135,   139,   140,   144,   145,   149,   150,
     151,   152,   153,   157,   158,   162,   163,   164,   165,   166,
     167,   168,   169,   170,   171,   175,   176,   180,   181,   185,
     186,   187,   188,   189,   190,   191,   192,   193,   194,   198,
     199,   203,   204,   208,   209,   210,   211,   212,   213,   214,
     215,   216,   217,   218,   219,   220,   221,   222,   223,   224,
     225,   226,   227
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "INTLIT", "CHRLIT", "REALLIT", "IF",
  "ELSE", "WHILE", "RETURN", "RESERVED", "CHAR", "INT", "SHORT", "DOUBLE",
  "VOID", "PLUS", "MINUS", "MUL", "DIV", "MOD", "EQ", "NE", "GE", "GT",
  "LE", "LT", "AND", "OR", "NOT", "BITWISEAND", "BITWISEOR", "BITWISEXOR",
  "ASSIGN", "COMMA", "LBRACE", "LPAR", "RBRACE", "RPAR", "SEMI", "ID",
  "NO_ELSE", "UNARY_OPERATOR", "$accept", "Program",
  "FunctionsAndDeclarations", "FunctionsAndDeclarationsList",
  "FunctionDefinition", "FunctionBody", "DeclarationsAndStatements",
  "FunctionDeclaration", "FunctionDeclarator", "ParameterList",
  "ParameterDeclarationList", "ParameterDeclaration", "Declaration",
  "DeclaratorList", "TypeSpec", "Declarator", "Statement", "StatementList",
  "StatementOrError", "Expr", "ExprList", "ExprOptionalList",
  "OperatorExpression", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297
};
# endif

#define YYPACT_NINF (-38)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-47)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      98,   -22,   -38,   -38,   -38,   -38,   -38,    65,   -38,    57,
      57,    57,    34,   -38,   -38,   -38,    57,    57,    57,   -38,
     -38,    -8,    17,    52,   -38,   -38,   -38,   304,    49,    79,
     -38,   -38,    61,    78,   -38,   -38,   -38,   304,   304,   304,
     277,    53,   348,   -38,   -38,    69,    92,    81,    93,   113,
     287,   176,   -38,   -38,   120,   119,    61,   159,   -10,   117,
      52,   -38,   -38,   -38,   -38,   123,    39,   260,   304,   304,
     304,   304,   304,   304,   304,   304,   304,   304,   304,   304,
     304,   304,   304,   304,   304,   304,   -38,    49,   -38,   -38,
     304,   304,   -38,    20,   150,   -38,   -38,   129,   216,   -38,
     -38,   -38,   -38,   -38,   -38,   -38,   131,   -38,   329,   228,
     228,   -38,   -38,   -38,   184,   184,   210,   210,   210,   210,
     121,   -12,   398,   366,   383,   348,   348,    92,    41,    68,
     -38,   -38,   -38,   -38,   139,   -38,   -38,   304,   145,   -38,
     233,   233,   329,   -38,   179,   -38,   -38,   233,   -38
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,    28,    29,    31,    32,    30,     0,     2,     0,
       0,     0,     0,    25,     1,     3,     0,     0,     0,     4,
       5,    34,     0,    27,     6,     7,     8,     0,     0,     0,
      17,    10,     0,     0,    54,    55,    56,     0,     0,     0,
       0,    53,    60,    33,    49,     0,    21,    23,     0,     0,
       0,     0,    12,    42,     0,     0,     0,     0,     0,    34,
      27,    24,    80,    81,    82,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    18,     0,    19,    22,
       0,     0,    40,     0,     0,    44,    47,     0,     0,    11,
      14,    13,    41,    26,    58,    50,     0,    52,    62,    64,
      65,    66,    67,    68,    74,    75,    77,    79,    76,    78,
      70,    69,    71,    72,    73,    63,    59,    21,     0,     0,
      39,    43,    48,    38,     0,    45,    57,     0,     0,    20,
       0,     0,    62,    51,    35,    37,    61,     0,    36
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -38,   -38,   -38,    87,   206,   -38,   202,   214,   -38,   -38,
      91,   136,    21,   171,    -6,   203,    -2,   142,    50,   -37,
     -24,   101,   -38
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     7,     8,    15,    16,    31,    54,    17,    22,    45,
      88,    46,    18,    33,    12,    23,    96,    97,    98,    42,
      58,   138,    44
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      62,    63,    64,    43,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    66,    13,    81,    82,
      83,    11,    47,    56,    85,    27,    93,    57,    28,   102,
     108,   109,   110,   111,   112,   113,   114,   115,   116,   117,
     118,   119,   120,   121,   122,   123,   124,   125,   126,    56,
      55,    56,    29,    57,    85,    57,    30,    -9,     1,   130,
       2,     3,     4,     5,     6,    14,   128,   129,     2,     3,
       4,     5,     6,    85,    21,    85,    55,   105,    55,   140,
       1,    47,    34,    35,    36,    48,    32,    49,    50,    67,
       2,     3,     4,     5,     6,    37,    38,    19,    20,     1,
     142,    59,    85,    24,    25,    26,   141,    86,    39,     2,
       3,     4,     5,     6,    51,    40,    52,    61,    53,    41,
       1,    89,    34,    35,    36,    48,    87,    49,    50,    90,
       2,     3,     4,     5,     6,    37,    38,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    39,    91,
      27,    81,    82,    83,    51,    40,   -16,    99,    53,    41,
       1,   104,    34,    35,    36,    48,   133,    49,    50,   136,
       2,     3,     4,     5,     6,    37,    38,    94,   132,    34,
      35,    36,    48,   143,    49,    50,   147,   131,    39,   132,
     144,   145,    37,    38,    51,    40,   -15,   148,    53,    41,
      68,    69,    70,    71,    72,    39,     9,    75,    76,    77,
      78,    51,    40,    95,    10,    53,    41,   134,   139,    34,
      35,    36,    48,   127,    49,    50,    68,    69,    70,    71,
      72,   103,    37,    38,   134,    60,    34,    35,    36,    48,
     135,    49,    50,   146,     0,    39,    70,    71,    72,    37,
      38,    51,    40,   -46,     0,    53,    41,   100,     0,   101,
       0,   106,    39,    34,    35,    36,     0,     0,    51,    40,
       0,     0,    53,    41,     0,     0,    37,    38,    65,     0,
      34,    35,    36,     0,     0,     0,     0,     0,     0,    39,
      34,    35,    36,    37,    38,     0,    40,     0,   107,     0,
      41,     0,     0,    37,    38,     0,    39,    34,    35,    36,
       0,     0,     0,    40,     0,     0,    39,    41,     0,     0,
      37,    38,     0,    40,     0,     0,    92,    41,     0,     0,
       0,     0,     0,    39,     0,     0,     0,     0,     0,     0,
      40,     0,     0,     0,    41,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    80,     0,    81,
      82,    83,    84,   137,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    80,     0,    81,    82,
      83,    84,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,     0,     0,     0,    81,     0,    83,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
       0,     0,     0,    81,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78
};

static const yytype_int16 yycheck[] =
{
      37,    38,    39,    27,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    40,    39,    30,    31,
      32,     0,    28,    29,    34,    33,    50,    29,    36,    39,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    79,    80,    81,    82,    83,    84,    85,    55,
      29,    57,    35,    55,    34,    57,    39,     0,     1,    39,
      11,    12,    13,    14,    15,     0,    90,    91,    11,    12,
      13,    14,    15,    34,    40,    34,    55,    38,    57,    38,
       1,    87,     3,     4,     5,     6,    34,     8,     9,    36,
      11,    12,    13,    14,    15,    16,    17,    10,    11,     1,
     137,    40,    34,    16,    17,    18,    38,    38,    29,    11,
      12,    13,    14,    15,    35,    36,    37,    39,    39,    40,
       1,    40,     3,     4,     5,     6,    34,     8,     9,    36,
      11,    12,    13,    14,    15,    16,    17,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    29,    36,
      33,    30,    31,    32,    35,    36,    37,    37,    39,    40,
       1,    38,     3,     4,     5,     6,    37,     8,     9,    38,
      11,    12,    13,    14,    15,    16,    17,     1,    39,     3,
       4,     5,     6,    38,     8,     9,     7,    37,    29,    39,
     140,   141,    16,    17,    35,    36,    37,   147,    39,    40,
      16,    17,    18,    19,    20,    29,     0,    23,    24,    25,
      26,    35,    36,    37,     0,    39,    40,     1,   127,     3,
       4,     5,     6,    87,     8,     9,    16,    17,    18,    19,
      20,    60,    16,    17,     1,    32,     3,     4,     5,     6,
      98,     8,     9,   142,    -1,    29,    18,    19,    20,    16,
      17,    35,    36,    37,    -1,    39,    40,    55,    -1,    57,
      -1,     1,    29,     3,     4,     5,    -1,    -1,    35,    36,
      -1,    -1,    39,    40,    -1,    -1,    16,    17,     1,    -1,
       3,     4,     5,    -1,    -1,    -1,    -1,    -1,    -1,    29,
       3,     4,     5,    16,    17,    -1,    36,    -1,    38,    -1,
      40,    -1,    -1,    16,    17,    -1,    29,     3,     4,     5,
      -1,    -1,    -1,    36,    -1,    -1,    29,    40,    -1,    -1,
      16,    17,    -1,    36,    -1,    -1,    39,    40,    -1,    -1,
      -1,    -1,    -1,    29,    -1,    -1,    -1,    -1,    -1,    -1,
      36,    -1,    -1,    -1,    40,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    -1,    30,
      31,    32,    33,    34,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    -1,    30,    31,
      32,    33,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    -1,    -1,    -1,    30,    -1,    32,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      -1,    -1,    -1,    30,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     1,    11,    12,    13,    14,    15,    44,    45,    47,
      50,    55,    57,    39,     0,    46,    47,    50,    55,    46,
      46,    40,    51,    58,    46,    46,    46,    33,    36,    35,
      39,    48,    34,    56,     3,     4,     5,    16,    17,    29,
      36,    40,    62,    63,    65,    52,    54,    57,     6,     8,
       9,    35,    37,    39,    49,    55,    57,    59,    63,    40,
      58,    39,    62,    62,    62,     1,    63,    36,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      28,    30,    31,    32,    33,    34,    38,    34,    53,    40,
      36,    36,    39,    63,     1,    37,    59,    60,    61,    37,
      49,    49,    39,    56,    38,    38,     1,    38,    62,    62,
      62,    62,    62,    62,    62,    62,    62,    62,    62,    62,
      62,    62,    62,    62,    62,    62,    62,    54,    63,    63,
      39,    37,    39,    37,     1,    60,    38,    34,    64,    53,
      38,    38,    62,    38,    61,    61,    64,     7,    61
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    43,    44,    45,    45,    45,    46,    46,    46,    46,
      47,    48,    48,    49,    49,    49,    49,    50,    51,    52,
      53,    53,    54,    54,    55,    55,    56,    56,    57,    57,
      57,    57,    57,    58,    58,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    60,    60,    61,    61,    62,
      62,    62,    62,    62,    62,    62,    62,    62,    62,    63,
      63,    64,    64,    65,    65,    65,    65,    65,    65,    65,
      65,    65,    65,    65,    65,    65,    65,    65,    65,    65,
      65,    65,    65
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     2,     2,     2,     2,     2,     0,
       3,     3,     2,     2,     2,     1,     1,     3,     4,     2,
       3,     0,     2,     1,     4,     2,     3,     0,     1,     1,
       1,     1,     1,     3,     1,     5,     7,     5,     3,     3,
       2,     2,     1,     3,     2,     2,     1,     1,     2,     1,
       3,     5,     3,     1,     1,     1,     1,     4,     3,     3,
       1,     3,     0,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       2,     2,     2
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2:
#line 88 "uccompiler.y"
                                                                                            {program = ast_node("Program", NULL_TOKEN); add_children(program, 1, (yyvsp[0].node));}
#line 1590 "y.tab.c"
    break;

  case 3:
#line 91 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1596 "y.tab.c"
    break;

  case 4:
#line 92 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1602 "y.tab.c"
    break;

  case 5:
#line 93 "uccompiler.y"
                                                                                            {if (!(yyvsp[-1].node)) { (yyval.node) = (yyvsp[0].node); } else { (yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node)); }}
#line 1608 "y.tab.c"
    break;

  case 6:
#line 97 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1614 "y.tab.c"
    break;

  case 7:
#line 98 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1620 "y.tab.c"
    break;

  case 8:
#line 99 "uccompiler.y"
                                                                                            {if (!(yyvsp[-1].node)) { (yyval.node) = (yyvsp[0].node); } else { (yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node)); }}
#line 1626 "y.tab.c"
    break;

  case 9:
#line 100 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1632 "y.tab.c"
    break;

  case 10:
#line 104 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("FuncDefinition", NULL_TOKEN); add_children((yyval.node), 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1638 "y.tab.c"
    break;

  case 11:
#line 108 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("FuncBody", NULL_TOKEN); add_children((yyval.node), 1, (yyvsp[-1].node));}
#line 1644 "y.tab.c"
    break;

  case 12:
#line 109 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("FuncBody", NULL_TOKEN);}
#line 1650 "y.tab.c"
    break;

  case 13:
#line 113 "uccompiler.y"
                                                                                            {if (!(yyvsp[-1].node)) { (yyval.node) = (yyvsp[0].node); } else { (yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node)); }}
#line 1656 "y.tab.c"
    break;

  case 14:
#line 114 "uccompiler.y"
                                                                                            {if (!(yyvsp[-1].node)) { (yyval.node) = (yyvsp[0].node); } else { (yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node)); }}
#line 1662 "y.tab.c"
    break;

  case 15:
#line 115 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[0].node);}
#line 1668 "y.tab.c"
    break;

  case 16:
#line 116 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[0].node);}
#line 1674 "y.tab.c"
    break;

  case 17:
#line 120 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("FuncDeclaration",NULL_TOKEN);  add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[-1].node)); }
#line 1680 "y.tab.c"
    break;

  case 18:
#line 123 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Id", (yyvsp[-3].token)); add_siblings((yyval.node), 1, (yyvsp[-1].node));}
#line 1686 "y.tab.c"
    break;

  case 19:
#line 126 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("ParamList", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1692 "y.tab.c"
    break;

  case 20:
#line 129 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1698 "y.tab.c"
    break;

  case 21:
#line 130 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1704 "y.tab.c"
    break;

  case 22:
#line 134 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("ParamDeclaration", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-1].node), ast_node("Id", (yyvsp[0].token)));}
#line 1710 "y.tab.c"
    break;

  case 23:
#line 135 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("ParamDeclaration", NULL_TOKEN); add_children((yyval.node), 1, (yyvsp[0].node));}
#line 1716 "y.tab.c"
    break;

  case 24:
#line 139 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-2].node); add_typespec((yyvsp[-3].node), (yyval.node)); add_typespec((yyvsp[-3].node), (yyvsp[-1].node)); free((yyvsp[-3].node)); add_siblings((yyval.node), 1, (yyvsp[-1].node));}
#line 1722 "y.tab.c"
    break;

  case 25:
#line 140 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1728 "y.tab.c"
    break;

  case 26:
#line 144 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1734 "y.tab.c"
    break;

  case 27:
#line 145 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1740 "y.tab.c"
    break;

  case 28:
#line 149 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Char", NULL_TOKEN);}
#line 1746 "y.tab.c"
    break;

  case 29:
#line 150 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Int", NULL_TOKEN);}
#line 1752 "y.tab.c"
    break;

  case 30:
#line 151 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Void", NULL_TOKEN);}
#line 1758 "y.tab.c"
    break;

  case 31:
#line 152 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Short", NULL_TOKEN);}
#line 1764 "y.tab.c"
    break;

  case 32:
#line 153 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Double", NULL_TOKEN);}
#line 1770 "y.tab.c"
    break;

  case 33:
#line 157 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Declaration", NULL_TOKEN); add_children((yyval.node), 2, ast_node("Id", (yyvsp[-2].token)), (yyvsp[0].node));}
#line 1776 "y.tab.c"
    break;

  case 34:
#line 158 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Declaration", NULL_TOKEN); add_children((yyval.node), 1, ast_node("Id", (yyvsp[0].token)));}
#line 1782 "y.tab.c"
    break;

  case 35:
#line 162 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("If", NULL_TOKEN); add_children((yyval.node), 3, null_check((yyvsp[-2].node)), null_check((yyvsp[0].node)), null_check(NULL));}
#line 1788 "y.tab.c"
    break;

  case 36:
#line 163 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("If", NULL_TOKEN); add_children((yyval.node), 3, null_check((yyvsp[-4].node)), null_check((yyvsp[-2].node)), null_check((yyvsp[0].node)));}
#line 1794 "y.tab.c"
    break;

  case 37:
#line 164 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("While", NULL_TOKEN); add_children((yyval.node), 2 , null_check((yyvsp[-2].node)), null_check((yyvsp[0].node)));}
#line 1800 "y.tab.c"
    break;

  case 38:
#line 165 "uccompiler.y"
                                                                                            {(yyval.node) = statement_list((yyvsp[-1].node));}
#line 1806 "y.tab.c"
    break;

  case 39:
#line 166 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Return", NULL_TOKEN); add_children((yyval.node), 1, (yyvsp[-1].node));}
#line 1812 "y.tab.c"
    break;

  case 40:
#line 167 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Return", NULL_TOKEN); add_children((yyval.node), 1, ast_node("Null", NULL_TOKEN));}
#line 1818 "y.tab.c"
    break;

  case 41:
#line 168 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node);}
#line 1824 "y.tab.c"
    break;

  case 42:
#line 169 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1830 "y.tab.c"
    break;

  case 43:
#line 170 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1836 "y.tab.c"
    break;

  case 44:
#line 171 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1842 "y.tab.c"
    break;

  case 45:
#line 175 "uccompiler.y"
                                                                                            {if (!(yyvsp[-1].node)) { (yyval.node) = (yyvsp[0].node); } else if (!(yyvsp[-1].node) && !(yyvsp[0].node)) { (yyval.node) = NULL; } else { (yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node)); } }
#line 1848 "y.tab.c"
    break;

  case 46:
#line 176 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[0].node);}
#line 1854 "y.tab.c"
    break;

  case 47:
#line 180 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[0].node);}
#line 1860 "y.tab.c"
    break;

  case 48:
#line 181 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1866 "y.tab.c"
    break;

  case 49:
#line 185 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[0].node);}
#line 1872 "y.tab.c"
    break;

  case 50:
#line 186 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node);}
#line 1878 "y.tab.c"
    break;

  case 51:
#line 187 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Call", NULL_TOKEN); add_children((yyval.node), 3, ast_node("Id", (yyvsp[-4].token)), (yyvsp[-2].node), (yyvsp[-1].node));}
#line 1884 "y.tab.c"
    break;

  case 52:
#line 188 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Call", NULL_TOKEN); add_children((yyval.node), 1, ast_node("Id", (yyvsp[-2].token)));}
#line 1890 "y.tab.c"
    break;

  case 53:
#line 189 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Id", (yyvsp[0].token));}
#line 1896 "y.tab.c"
    break;

  case 54:
#line 190 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("IntLit", (yyvsp[0].token));}
#line 1902 "y.tab.c"
    break;

  case 55:
#line 191 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("ChrLit", (yyvsp[0].token));}
#line 1908 "y.tab.c"
    break;

  case 56:
#line 192 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("RealLit", (yyvsp[0].token));}
#line 1914 "y.tab.c"
    break;

  case 57:
#line 193 "uccompiler.y"
                                                                                            {(yyval.node) = NULL; free((yyvsp[-3].token).value);}
#line 1920 "y.tab.c"
    break;

  case 58:
#line 194 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1926 "y.tab.c"
    break;

  case 59:
#line 198 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Comma", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1932 "y.tab.c"
    break;

  case 60:
#line 199 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[0].node);}
#line 1938 "y.tab.c"
    break;

  case 61:
#line 203 "uccompiler.y"
                                                                                            {(yyval.node) = (yyvsp[-1].node); add_siblings((yyval.node), 1, (yyvsp[0].node));}
#line 1944 "y.tab.c"
    break;

  case 62:
#line 204 "uccompiler.y"
                                                                                            {(yyval.node) = NULL;}
#line 1950 "y.tab.c"
    break;

  case 63:
#line 208 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Store", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1956 "y.tab.c"
    break;

  case 64:
#line 209 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Add", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1962 "y.tab.c"
    break;

  case 65:
#line 210 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Sub", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1968 "y.tab.c"
    break;

  case 66:
#line 211 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Mul", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1974 "y.tab.c"
    break;

  case 67:
#line 212 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Div", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1980 "y.tab.c"
    break;

  case 68:
#line 213 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Mod", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1986 "y.tab.c"
    break;

  case 69:
#line 214 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Or", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1992 "y.tab.c"
    break;

  case 70:
#line 215 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("And", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 1998 "y.tab.c"
    break;

  case 71:
#line 216 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("BitWiseAnd", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2004 "y.tab.c"
    break;

  case 72:
#line 217 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("BitWiseOr", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2010 "y.tab.c"
    break;

  case 73:
#line 218 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("BitWiseXor", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2016 "y.tab.c"
    break;

  case 74:
#line 219 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Eq", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2022 "y.tab.c"
    break;

  case 75:
#line 220 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Ne", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2028 "y.tab.c"
    break;

  case 76:
#line 221 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Le", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2034 "y.tab.c"
    break;

  case 77:
#line 222 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Ge", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2040 "y.tab.c"
    break;

  case 78:
#line 223 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Lt", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2046 "y.tab.c"
    break;

  case 79:
#line 224 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Gt", NULL_TOKEN); add_children((yyval.node), 2, (yyvsp[-2].node), (yyvsp[0].node));}
#line 2052 "y.tab.c"
    break;

  case 80:
#line 225 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Plus",NULL_TOKEN); add_children((yyval.node), 1, (yyvsp[0].node));}
#line 2058 "y.tab.c"
    break;

  case 81:
#line 226 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Minus", NULL_TOKEN); add_children((yyval.node), 1, (yyvsp[0].node));}
#line 2064 "y.tab.c"
    break;

  case 82:
#line 227 "uccompiler.y"
                                                                                            {(yyval.node) = ast_node("Not", NULL_TOKEN); add_children((yyval.node), 1, (yyvsp[0].node));}
#line 2070 "y.tab.c"
    break;


#line 2074 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 230 "uccompiler.y"



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
        return yylex();
    } else if (e2_flag) {
        yyparse(); 
    } else if (t_flag) {
        yyparse();
        print_ast(program);  
    } else {
        yyparse();
        if (!syntax_error && !lexical_error) {
            semantic_analysis(program);
            print_table_list(symtab_list);
        }
    } 
    free_ast(program);
    yylex_destroy();
    return 0;
} 
