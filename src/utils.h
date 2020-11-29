#ifndef UTILS_H
#define UTILS_H

#include <stdio.h>
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

#endif //UTILS_H