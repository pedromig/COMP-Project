#ifndef __STRUCTURES_H
#define __STRUCTURES_H

typedef int type_t;

typedef struct Token {
    char *value;
    int line;
    int column;
} token_t;

typedef struct ASTNode ast_node_t;
struct ASTNode {
    const char *id;
    token_t token;
    ast_node_t *first_child;
    ast_node_t *next_sibling;
};

typedef struct Parameter param_t;
struct Parameter {
    type_t type;
    param_t *next;
};

typedef struct Symbol sym_t;
struct Symbol {
    const char *id;
    type_t return_type;
    param_t *parameters;
    sym_t *next;
};

typedef struct SymbolTable symtab_t;
struct SymbolTable {
    const char *id;
    sym_t *first_symbol;
    symtab_t *next;
};

#endif // __STRUCTURES_H