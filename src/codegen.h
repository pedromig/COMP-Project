#ifndef __CODEGEN_H
#define __CODEGEN_H

#include <stdio.h>
#include <stdlib.h>

#include "structures.h"
#include "symbol_table.h"
#include "utils.h"

extern symtab_t *symtab_list;
extern symtab_t *current_table;

void code_generator(ast_node_t *node, bool is_if);

#endif // __CODEGEN_H