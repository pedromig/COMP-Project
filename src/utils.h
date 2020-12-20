/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#ifndef UTILS_H
#define UTILS_H

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "structures.h"

// Error not specified in the project document but that is useful
// Description: int f(int,int) { return 1; } according to gcc -> error: parameter name omitted
#define parameter_name_omitted(line, column) \
    printf("Line %d, col %d: Parameter name omitted\n", line, column);

const char *decapitalize(const char *string);
const char *select_operator(const char *string);
bool has_parameters_omitted(ast_node_t *parameter_list);
bool invalid_assign(type_t lhs, type_t rhs);
const char *implicit_conversion(type_t left_operand, type_t right_operand);

bool is_unary_operator(const char *operator);
bool is_arithmetic_operator(const char *operator);
bool is_relational_operator(const char *operator);
bool is_bitwise_operator(const char *operator);
bool is_logical_operator(const char *operator);
bool is_statement_id(const char *operator);

// LLVM Utils

int ord(const char *str);
const char *type_to_llvm(const char *type);
int insert_default_return(const char *llvm_type, bool has_return_keyword);
int intlit_to_int(const char *str);

#endif //UTILS_H