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

symtab_t *symbol_table(const char *id);
sym_t *symbol(const char *id, type_t type, param_t *parameters);
param_t *parameter(type_t type);
symtab_t *add_table(symtab_t *list, const char *id);
symtab_t *find_table(symtab_t *list, const char *id);
void add_symbol(symtab_t *table, sym_t *symbol);
sym_t *find_symbol(sym_t *list, const char *id);
void print_table_list(symtab_t *list);
void print_symbol_type(sym_t *symbol);
void free_symbol(sym_t *symbol);
void free_symbol_table_list(symtab_t *head);

#endif // __SYMBOL_TABLE