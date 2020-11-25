/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#ifndef __SEMANTIC_ANALYSIS_H
#define __SEMANTIC_ANALYSIS_H

#include "structures.h"
#include "symbol_table.h"
#include "utils.h"

extern symtab_t *symtab_list;

void semantic_analysis(ast_node_t *program);

#endif //__SEMANTIC_ANALYSIS_H