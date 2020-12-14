#include "utils.h"

#define MAX(A, B) (A > B) ? (A) : (B)

// Low(char) -> High(double)
static const char *types[] = {
    "char",
    "short",
    "int",
    "double",
};

// Arithmetic Operators
static const char *arithmetic[] = {
    "Add",
    "Sub",
    "Mul",
    "Div",
    "Mod",
};

// Unary Operators
static const char *unary[] = {
    "Plus",
    "Minus",
    "Not",
};

// Relational Operators
static const char *relational[] = {
    "Le",
    "Ge",
    "Lt",
    "Gt",
    "Eq",
    "Ne",
};

// Bitwise Operators
static const char *bitwise[] = {
    "BitWiseAnd",
    "BitWiseOr",
    "BitWiseXor",
};

// Logical Operators
static const char *logical[] = {
    "And",
    "Or",
};

// Statement Identifiers
static const char *statement_ids[] = {
    "If",
    "While",
};

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

    if (!strcmp(rhs, "void") || !strcmp(rhs, "undef"))
        return true;
    for (int i = 0; i < sizeof(types) / sizeof(types[0]); ++i) {
        if (!strcmp(lhs, types[i]))
            l = i;
        if (!strcmp(rhs, types[i]))
            r = i;
    }
    if ((!l && (r == 1 || r == 2)) || (l == 1 && r == 2))
        return false;
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

bool find_operator(const char **array, int n, const char *operator) {
    for (int i = 0; i < n; ++i) {
        if (!strcmp(array[i], operator)) {
            return true;
        }
    }
    return false;
}

inline bool is_unary_operator(const char *operator) {
    return find_operator(unary, sizeof(unary) / sizeof(unary[0]), operator);
}

inline bool is_arithmetic_operator(const char *operator) {
    return find_operator(arithmetic, sizeof(arithmetic) / sizeof(arithmetic[0]), operator);
}

inline bool is_relational_operator(const char *operator) {
    return find_operator(relational, sizeof(relational) / sizeof(relational[0]), operator);
}

inline bool is_bitwise_operator(const char *operator) {
    return find_operator(bitwise, sizeof(bitwise) / sizeof(bitwise[0]), operator);
}

inline bool is_logical_operator(const char *operator) {
    return find_operator(logical, sizeof(logical) / sizeof(logical[0]), operator);
}

inline bool is_statement_id(const char *operator) {
    return find_operator(statement_ids, sizeof(statement_ids) / sizeof(statement_ids[0]), operator);
}

const char *
decapitalize(const char *string) {
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

const char *select_operator(const char *string) {
    if (!strcmp(string, "Store"))
        return "=";
    else if (!strcmp(string, "Comma"))
        return ",";
    else if (!strcmp(string, "Add") || !strcmp(string, "Plus"))
        return "+";
    else if (!strcmp(string, "Sub") || !strcmp(string, "Minus"))
        return "-";
    else if (!strcmp(string, "Mul"))
        return "*";
    else if (!strcmp(string, "Div"))
        return "/";
    else if (!strcmp(string, "Mod"))
        return "%";
    else if (!strcmp(string, "Or"))
        return "||";
    else if (!strcmp(string, "And"))
        return "&&";
    else if (!strcmp(string, "BitWiseAnd"))
        return "&";
    else if (!strcmp(string, "BitWiseOr"))
        return "|";
    else if (!strcmp(string, "BitWiseXor"))
        return "^";
    else if (!strcmp(string, "Eq"))
        return "==";
    else if (!strcmp(string, "Ne"))
        return "!=";
    else if (!strcmp(string, "Le"))
        return "<=";
    else if (!strcmp(string, "Ge"))
        return ">=";
    else if (!strcmp(string, "Lt"))
        return "<";
    else if (!strcmp(string, "Gt"))
        return ">";
    else if (!strcmp(string, "Not"))
        return "!";
    return "unknown";
}

// * LLVM Util Functions

// Return Ascii value for a one-character const char *
int ord(const char *str) {
    int ans = str[1];
    if (str[1] == '\\') {
        switch (str[2]) {
            case 'n':
                ans = 0x0a;
                break;
            case 't':
                ans = 0x09;
                break;
            case '\\':
                ans = 0x5c;
                break;
            case '\'':
                ans = 0x27;
                break;
            case '"':
                ans = 0x22;
                break;
            default:
                ans = strtol(str + 2, NULL, 8);
                break;
        }
    }
    return ans;
}

const char *type_to_llvm(const char *type) {
    return (!strcmp(type, "Double") || !strcmp(type, "double")) ? "double" : (!strcmp(type, "Void")) ? "void" : "i32";
}

int insert_default_return(const char *llvm_type, bool has_return_keyword) {
    if (!has_return_keyword) {
        return !strcmp(llvm_type, "double") ? printf("\tret %s %e\n", llvm_type, 0.0f)
                                            : !strcmp(llvm_type, "void") ? printf("\tret void\n")
                                                                         : printf("\tret %s %d\n", llvm_type, 0);
    }
    return 0;
}