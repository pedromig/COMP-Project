/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

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
int load_terminal(ast_node_t *node);
bool is_logical(ast_node_t *node);
int logical_operator_code_generator(ast_node_t *node);

#endif // __CODEGEN_H