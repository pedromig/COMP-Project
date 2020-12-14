/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#ifndef __STRUCTURES_H
#define __STRUCTURES_H

#include <stdbool.h>

typedef const char *type_t;

typedef struct Parameter param_t;
struct Parameter {
    type_t type;
    param_t *next;
};

typedef struct Annotation annotation_t;
struct Annotation {
    type_t type;
    param_t *parameters;
};

typedef struct Token {
    char *value;
    int line;
    int column;
} token_t;

typedef struct ASTNode ast_node_t;
struct ASTNode {
    const char *id;
    token_t token;
    annotation_t annotation;
    ast_node_t *first_child;
    ast_node_t *next_sibling;
};

typedef struct Symbol sym_t;
struct Symbol {
    const char *id;
    int llvm_var;
    bool is_param;
    bool is_defined;
    type_t type;
    param_t *parameters;
    sym_t *next;
};

typedef struct SymbolTable symtab_t;
struct SymbolTable {
    const char *id;
    bool is_defined;
    sym_t *symlist;
    symtab_t *next;
};

#endif // __STRUCTURES_H