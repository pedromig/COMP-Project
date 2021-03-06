/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include <assert.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef __AST_H
#define __AST_H

#include "structures.h"
#include "symbol_table.h"

// Helper define to assist in line/column assigns of nodes that should
// have a null token value making impossible to use ast_node() without
// unwanted side effects in the AST
#define ASSIGN_TOKEN_LC(NODE, TOKEN) \
    NODE->token.line = TOKEN.line;   \
    NODE->token.column = TOKEN.column

#define ASSIGN_NODE_LC(NODE1, NODE2)       \
    NODE1->token.line = NODE2->token.line; \
    NODE1->token.column = NODE2->token.column

#define NULL_TOKEN \
    (token_t) { .value = NULL, .line = -1, .column = -1 }

#define IS_NULL_TOKEN(TOKEN) (TOKEN.value == NULL) && (TOKEN.line == -1) && (TOKEN.column == -1)

token_t token(char *value, int line, int column, int type);
ast_node_t *ast_node(const char *id, token_t token);
void add_children(ast_node_t *parent, int argc, ...);
void add_siblings(ast_node_t *parent, int argc, ...);
void free_ast(ast_node_t *head);
void print_ast(ast_node_t *root);
void add_typespec(ast_node_t *type, ast_node_t *give_me_type);
ast_node_t *statement_list(ast_node_t *stat_list);
ast_node_t *null_check();

#endif // __AST_H