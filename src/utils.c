#include "utils.h"

#define MAX(A, B) (A > B) ? (A) : (B)

// Low(char) -> High(double)
static const char *types[] = {
    "char",
    "short",
    "int",
    "double",
};

const char *decapitalize(const char *string) {
    if (!strcmp(string, "Int"))
        return "int";
    else if (!strcmp(string, "Double"))
        return "double";
    else if (!strcmp(string, "Char"))
        return "char";
    else if (!strcmp(string, "Void"))
        return "void";
    else if (!strcmp(string, "Short"))
        return "short";
    return "unkown";
}

bool has_parameters_omitted(ast_node_t *parameter_list) {
    for (ast_node_t *aux = parameter_list->first_child; aux; aux = aux->next_sibling) {
        if (strcmp(aux->first_child->id, "Void") && !aux->first_child->next_sibling) {
            parameter_name_omitted(aux->first_child->token.line, aux->first_child->token.column);
            return true;
        }
    }
    return false;
}

bool invalid_assign(type_t lhs, type_t rhs) {
    int l = -1, r = -1;
    for (int i = 0; i < sizeof(types) / sizeof(types[0]); ++i) {
        if (!strcmp(lhs, types[i]))
            l = i;
        if (!strcmp(rhs, types[i]))
            r = i;
    }
    if (!l) return false;

    return l < r;
}

const char *implicit_conversion(type_t left_operand, type_t right_operand) {
    int lop = -1, rop = -1;
    for (int i = 0; i < sizeof(types) / sizeof(types[0]); ++i) {
        if (!strcmp(left_operand, types[i]))
            lop = i;
        if (!strcmp(right_operand, types[i]))
            rop = i;
    }
    return types[MAX(lop, rop)];
}