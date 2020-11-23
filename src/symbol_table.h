/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <ctype.h>
#include <stdbool.h>

#ifndef __SYMBOL_TABLE
#define __SYMBOL_TABLE

#include "structures.h"

sym_t *symbol(const char *id, type_t type, param_t *parameters);
param_t *parameter(type_t type);
param_t *parameter_list(ast_node_t *param_list);
symtab_t *add_table(symtab_list_t *list, const char *id);
symtab_t *find_table(symtab_list_t *list, const char *id);
void add_symbol(sym_list_t *list, sym_t *symbol);
sym_t *find_symbol(sym_list_t *list, const char *id);
void print_table_list(symtab_list_t *list);

#endif // __SYMBOL_TABLE