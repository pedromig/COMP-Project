#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#include "ast.h"

token_t token(char *value) {
    // TODO
    token_t t = {.value=NULL};
    return t;
}
ast_node_t *ast_node(char *id, token_t *token) {
    // TODO
    return NULL;
}

void add_node(ast_list_t *children, ast_node_t *child) {
    // TODO
}

void add_children(ast_node_t *parent, int argc, ...) {
    va_list args;
    va_start(args, argc);
    for (int i = 0; i < argc; ++i) {
        add_node(parent->children, va_arg(args, ast_node_t *));
    }
    va_end(args);
}

void free_ast(ast_node_t *head) {
    // TODO
}

void __print_ast(ast_node_t *head, int ident_level) {
    // TODO
}
