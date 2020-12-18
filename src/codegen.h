#ifndef __CODEGEN_H
#define __CODEGEN_H

#include <stdio.h>
#include <stdlib.h>

#include "structures.h"
#include "symbol_table.h"
#include "utils.h"

extern symtab_t *symtab_list;
extern symtab_t *current_table;

void code_generation(ast_node_t *program);
void code_generator(ast_node_t *node, bool is_if);
int operator_code_generator(ast_node_t *node, bool logical);
void store_code_generator(ast_node_t *node);
const char* get_type(ast_node_t* node);

#endif // __CODEGEN_H