/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "semantic_analysis.h"

symtab_t *current_table = NULL;

// Helper defines for semantic error print messages
#define confliting_types_error(sym1, sym2, line, column)              \
    printf("Line %d, col %d: Conflicting types (got ", line, column); \
    print_symbol_type(sym1);                                          \
    printf(", expected ");                                            \
    print_symbol_type(sym2);                                          \
    printf(")\n");

#define invalid_use_of_void_type_in_declaration(line, column) \
    printf("Line %d, col %d: Invalid use of void type in declaration\n", line, column);

#define lvalue_required(line, column) \
    printf("Line %d, col %d: Lvalue required\n", line, column);

#define operator_cannot_be_applied_to_type(token, opp, line, column)                        \
    printf("Line %d, col %d: Operator %s cannot be applied to type ", line, column, token); \
    print_annotation(opp);                                                                  \
    printf("\n");

#define operator_cannot_be_applied_to_types(token, lhs, rhs, line, column)                   \
    printf("Line %d, col %d: Operator %s cannot be applied to types ", line, column, token); \
    print_annotation(lhs);                                                                   \
    printf(", ");                                                                            \
    print_annotation(rhs);                                                                   \
    printf("\n");

#define symbol_already_defined(token, line, column) \
    printf("Line %d, col %d: Symbol %s already defined\n", line, column, token);

#define symbol_is_not_a_function(token, line, column) \
    printf("Line %d, col %d: Symbol %s is not a function\n", line, column, token);

#define unknown_symbol(token, line, column) \
    printf("Line %d, col %d: Unknown symbol %s\n", line, column, token);

#define wrong_number_of_arguments(token, expected, required, line, column) \
    printf("Line %d, col %d: Wrong number of arguments to function %s (got %d, required %d)\n", line, column, token, expected, required);

bool has_invalid_void(ast_node_t *param_list) {
    ast_node_t *current = param_list->first_child;

    if (!strcmp(current->first_child->id, "Void")) {
        if (current->first_child->next_sibling) {
            invalid_use_of_void_type_in_declaration(current->first_child->token.line,
                                                    current->first_child->token.column);
            return true;
        }
        ast_node_t *last = current;
        if ((current = current->next_sibling)) {
            invalid_use_of_void_type_in_declaration(last->first_child->token.line,
                                                    last->first_child->token.column);
            return true;
        }
    }
    for (ast_node_t *aux = current; aux; aux = aux->next_sibling) {
        if (!strcmp(aux->first_child->id, "Void")) {
            invalid_use_of_void_type_in_declaration(aux->first_child->token.line,
                                                    aux->first_child->token.column);

            return true;
        }
    }
    return false;
}

param_t *parameter_list(ast_node_t *param_list) {
    param_t *list = NULL;

    if (has_invalid_void(param_list))
        return NULL;

    int capacity = 10, size = 0;
    char **ids = (char **)malloc(sizeof(char *) * capacity);

    list = parameter(decapitalize(param_list->first_child->first_child->id));
    if (param_list->first_child->first_child->next_sibling) {
        ids[size++] = param_list->first_child->first_child->next_sibling->token.value;
    }

    param_t *current = list;
    ast_node_t *node = param_list->first_child->next_sibling;

    for (ast_node_t *param_decl = node; param_decl; param_decl = param_decl->next_sibling) {

        if (param_decl->first_child->next_sibling) {
            bool found = false;
            if (size > capacity) {
                capacity += 10;
                ids = (char **)realloc(ids, sizeof(char *) * capacity);
            }

            for (int i = 0; i < size && !found; ++i) {
                if (!strcmp(ids[i], param_decl->first_child->next_sibling->token.value)) {
                    symbol_already_defined(param_decl->first_child->next_sibling->token.value,
                                           param_decl->first_child->next_sibling->token.line,
                                           param_decl->first_child->next_sibling->token.column);
                    found = true;
                }
            }

            if (!found)
                ids[size++] = param_decl->first_child->next_sibling->token.value;
        }

        current->next = parameter(decapitalize(param_decl->first_child->id));
        current = current->next;
    }

    free(ids);
    return list;
}

void add_parameter_symbols(symtab_t *table, ast_node_t *param_list) {
    sym_t *existing = NULL;
    for (ast_node_t *param_decl = param_list->first_child; param_decl; param_decl = param_decl->next_sibling) {

        if (!strcmp(param_decl->first_child->id, "Void"))
            continue;

        if ((existing = find_symbol(table->symlist, param_decl->first_child->next_sibling->token.value)))
            continue;

        sym_t *new = symbol(param_decl->first_child->next_sibling->token.value,
                            decapitalize(param_decl->first_child->id),
                            NULL);
        new->is_param = true;
        add_symbol(table, new);
    }
}

void analyse_function_definition(ast_node_t *func_def) {

    ast_node_t *typespec = func_def->first_child;
    ast_node_t *declarator = typespec->next_sibling;

    param_t *param_list;
    if (!(param_list = parameter_list(declarator->next_sibling)) || has_parameters_omitted(declarator->next_sibling))
        return;

    const char *type = decapitalize(typespec->id);
    sym_t *new_func_dec = symbol(declarator->token.value, type, param_list);

    symtab_t *table = find_table(symtab_list, declarator->token.value);
    if (table != NULL) {

        if (table->is_defined) {
            symbol_already_defined(declarator->token.value, declarator->token.line, declarator->token.column);
            free_symbol(new_func_dec);
            return;
        }

        sym_t *existing = find_symbol(symtab_list->symlist, declarator->token.value);
        if (!compare_symbol_types(existing, new_func_dec)) {
            confliting_types_error(new_func_dec, existing, declarator->token.line, declarator->token.column);
            free_symbol(new_func_dec);
            return;
        }
        free_symbol(new_func_dec);

    } else {

        sym_t *existing = find_symbol(symtab_list->symlist, declarator->token.value);
        if (existing) {
            confliting_types_error(new_func_dec, existing, declarator->token.line, declarator->token.column);
            free_symbol(new_func_dec);
            return;
        }
        add_symbol(symtab_list, new_func_dec);

        table = add_table(symtab_list, declarator->token.value);
        add_symbol(table, symbol("return", type, NULL));
    }

    add_parameter_symbols(table, declarator->next_sibling);
    table->is_defined = true;

    // Analyse Function Body
    current_table = table;
    semantic_analysis(declarator->next_sibling->next_sibling->first_child);
    current_table = symtab_list;
}

void analyse_function_declaration(ast_node_t *func_dec) {
    ast_node_t *typespec = func_dec->first_child;
    ast_node_t *declarator = typespec->next_sibling;

    param_t *param_list;
    if (!(param_list = parameter_list(declarator->next_sibling)))
        return;

    const char *type = decapitalize(typespec->id);
    sym_t *new_dec = symbol(declarator->token.value, type, param_list);

    symtab_t *table = find_table(symtab_list, declarator->token.value);
    if (table != NULL) {
        sym_t *existing = find_symbol(symtab_list->symlist, declarator->token.value);
        if (!compare_symbol_types(existing, new_dec)) {
            confliting_types_error(new_dec, existing, declarator->token.line, declarator->token.column);
        }
        free_symbol(new_dec);
        return;
    } else {
        sym_t *existing = find_symbol(symtab_list->symlist, declarator->token.value);
        if (existing) {
            confliting_types_error(new_dec, existing, declarator->token.line, declarator->token.column);
            free_symbol(new_dec);
            return;
        }
    }

    add_symbol(symtab_list, new_dec);

    symtab_t *new_table = add_table(symtab_list, declarator->token.value);
    add_symbol(new_table, symbol("return", type, NULL));
}

void analyse_declaration(ast_node_t *node) {
    ast_node_t *typespec = node->first_child;
    ast_node_t *declarator = typespec->next_sibling;

    const char *type = decapitalize(typespec->id);
    if (!strcmp(type, "void")) {
        invalid_use_of_void_type_in_declaration(declarator->token.line, declarator->token.column);
        return;
    }

    sym_t *existing = find_symbol(current_table->symlist, declarator->token.value);
    if (existing != NULL && current_table == symtab_list) {

        if (existing->is_defined && declarator->next_sibling != NULL) {
            symbol_already_defined(declarator->token.value, declarator->token.line, declarator->token.column);

        } else if (declarator->next_sibling != NULL) {
            semantic_analysis(declarator->next_sibling);
            if (declarator->next_sibling->annotation.parameters || invalid_assign(type, declarator->next_sibling->annotation.type)) {
                sym_t aux = (sym_t){.id = NULL, .type = declarator->next_sibling->annotation.type, .parameters = NULL};
                confliting_types_error(&aux, existing, declarator->token.line, declarator->token.column);
            }
            existing->is_defined = true;
        }
        return;
    }

    if (existing != NULL) {
        symbol_already_defined(declarator->token.value, declarator->token.line, declarator->token.column);
        return;
    }

    sym_t *new_dec = symbol(declarator->token.value, type, NULL);
    add_symbol(current_table, new_dec);

    if (declarator->next_sibling != NULL) {
        semantic_analysis(declarator->next_sibling);

        if (declarator->next_sibling->annotation.parameters || invalid_assign(type, declarator->next_sibling->annotation.type)) {
            sym_t aux = (sym_t){.id = NULL, .type = declarator->next_sibling->annotation.type, .parameters = NULL};
            confliting_types_error(&aux, new_dec, declarator->token.line, declarator->token.column);
            return;
        }
        new_dec->is_defined = true;
    }
}

void annotate_store(ast_node_t *node) {

    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;

    if (rhs->annotation.parameters) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }

    if (lhs->annotation.parameters) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }

    if (!strcmp(lhs->id, "Id")) {
        if (!strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef")) {
            operator_cannot_be_applied_to_types(select_operator(node->id),
                                                lhs->annotation, rhs->annotation,
                                                node->token.line, node->token.column);
            node->annotation.type = "undef";
            return;
        }

        if (invalid_assign(lhs->annotation.type, rhs->annotation.type)) {
            operator_cannot_be_applied_to_types(select_operator(node->id),
                                                lhs->annotation, rhs->annotation,
                                                node->token.line, node->token.column);
        }
        node->annotation.type = lhs->annotation.type;

    } else {
        lvalue_required(lhs->token.line, lhs->token.column);
        node->annotation.type = lhs->annotation.type;
    }
}

void annotate_call(ast_node_t *node) {
    ast_node_t *func_id = node->first_child;

    sym_t *existing = find_symbol(current_table->symlist, func_id->token.value);
    if (!existing) {
        existing = (current_table != symtab_list) ? find_symbol(symtab_list->symlist, func_id->token.value)
                                                  : NULL;
        if (!existing) {
            symbol_is_not_a_function(func_id->token.value, func_id->token.line, func_id->token.column);
            node->annotation.type = "undef";
            return;
        }
    }

    if (!existing->parameters) {
        symbol_is_not_a_function(func_id->token.value, func_id->token.line, func_id->token.column);
        node->annotation.type = "undef";
        return;
    }

    int func_params = 0;
    param_t *aux_1 = existing->parameters;
    while (aux_1 != NULL) {
        if (!strcmp(aux_1->type, "void"))
            break;
        ++func_params;
        aux_1 = aux_1->next;
    }

    int call_params = 0;
    ast_node_t *aux_2 = func_id->next_sibling;
    while (aux_2 != NULL) {
        ++call_params;
        aux_2 = aux_2->next_sibling;
    }

    if (call_params == func_params) {
        aux_1 = existing->parameters;
        aux_2 = func_id->next_sibling;
        while (aux_1 != NULL && aux_2 != NULL) {
            if (invalid_assign(aux_1->type, aux_2->annotation.type)) {
                sym_t aux1 = (sym_t){.id = NULL, .type = aux_1->type, .parameters = NULL};
                sym_t aux2 = (sym_t){.id = NULL, .type = aux_2->annotation.type, .parameters = NULL};
                confliting_types_error(&aux2, &aux1, aux_2->token.line, aux_2->token.column);
            }
            aux_1 = aux_1->next;
            aux_2 = aux_2->next_sibling;
        }
    }

    if (func_params != call_params || (!strcmp(existing->parameters->type, "void") && call_params != 0)) {
        wrong_number_of_arguments(func_id->token.value,
                                  call_params, func_params,
                                  func_id->token.line, func_id->token.column);
    }

    node->annotation.type = existing->type;
}

void annotate_statement_id(ast_node_t *node) {
    ast_node_t *expr = node->first_child;

    if (expr->annotation.parameters || !strcmp(expr->annotation.type, "undef") ||
        !strcmp(expr->annotation.type, "void") || !strcmp(expr->annotation.type, "double")) {
        sym_t aux1 = (sym_t){.id = NULL, .type = expr->annotation.type, .parameters = expr->annotation.parameters};
        sym_t aux2 = (sym_t){.id = NULL, .type = "int", .parameters = NULL};
        confliting_types_error(&aux1, &aux2, expr->token.line, expr->token.column);
    }
}

void annotate_return(ast_node_t *node) {

    ast_node_t *expr_list = node->first_child;
    sym_t *function_return = current_table->symlist;

    if (!strcmp(function_return->type, "void")) {
        //verificar se é algo que está na tabela global

        if (expr_list->annotation.parameters) { // é function   -> return f;
            sym_t aux = (sym_t){.id = NULL, .type = expr_list->annotation.type, .parameters = expr_list->annotation.parameters};
            confliting_types_error(&aux, function_return, node->token.line, node->token.column);
            return;
        }

        if (expr_list->annotation.type && !strcmp(expr_list->annotation.type, "void")) { //espera void e recebe void
            return;
        }

        if (strcmp(expr_list->id, "Null")) { //espera void recebe != void
            sym_t aux = (sym_t){.id = NULL, .type = expr_list->annotation.type, .parameters = expr_list->annotation.parameters};
            confliting_types_error(&aux, function_return, node->token.line, node->token.column);
            return;
        }

    } else {                                  // não é void
        if (!strcmp(expr_list->id, "Null")) { //não é void mas não tem return
            sym_t aux = (sym_t){.id = NULL, .type = "void", .parameters = expr_list->annotation.parameters};
            confliting_types_error(&aux, function_return, node->token.line, node->token.column); //got void, expected != void
            return;
        }

        if (invalid_assign(current_table->symlist->type, expr_list->annotation.type)) { //verificar se o return type da função é menos geral que o recebido
            sym_t aux1 = (sym_t){.id = NULL, .type = expr_list->annotation.type, .parameters = expr_list->annotation.parameters};
            confliting_types_error(&aux1, current_table->symlist, node->token.line, node->token.column);
        }
    }
}

void annotate_comma(ast_node_t *node) {
    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;

    if (lhs->annotation.parameters || rhs->annotation.parameters) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }

    if (!strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef")) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }
    node->annotation.type = rhs->annotation.type;
}

void annotate_id(ast_node_t *node) {
    sym_t *existing = find_symbol(current_table->symlist, node->token.value);
    if (!existing) {
        existing = (current_table != symtab_list) ? find_symbol(symtab_list->symlist, node->token.value)
                                                  : NULL;
        if (!existing) {
            unknown_symbol(node->token.value, node->token.line, node->token.column);
            node->annotation.type = "undef";
            return;
        }
    }
    node->annotation.type = existing->type;
    node->annotation.parameters = existing->parameters;
}

void annotate_arithmetic_operators(ast_node_t *node) {
    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;
    bool is_mod_operator = false;

    if (!strcmp(node->id, "Mod")) {
        is_mod_operator = true;

        if (!strcmp(lhs->annotation.type, "double") || !strcmp(rhs->annotation.type, "double") ||
            !strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef") ||
            !strcmp(lhs->annotation.type, "void") || !strcmp(rhs->annotation.type, "void")) {
            operator_cannot_be_applied_to_types(select_operator(node->id),
                                                lhs->annotation, rhs->annotation,
                                                node->token.line, node->token.column);
        }
        node->annotation.type = "int";
        return;
    }

    if (lhs->annotation.parameters || rhs->annotation.parameters) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }

    if (!strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef") ||
        !strcmp(lhs->annotation.type, "void") || !strcmp(rhs->annotation.type, "void")) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }
    node->annotation.type = !is_mod_operator ? implicit_conversion(lhs->annotation.type, rhs->annotation.type) : "int";
}

void annotate_unary_operators(ast_node_t *node) {
    ast_node_t *operand = node->first_child;

    if (!strcmp(node->id, "Not")) {
        if (operand->annotation.parameters || !strcmp(operand->annotation.type, "double") ||
            !strcmp(operand->annotation.type, "undef") || !strcmp(operand->annotation.type, "void")) {
            operator_cannot_be_applied_to_type(select_operator(node->id),
                                               operand->annotation,
                                               node->token.line, node->token.column);
        }
        node->annotation.type = "int";
        return;
    }

    if (operand->annotation.parameters) {
        operator_cannot_be_applied_to_type(select_operator(node->id),
                                           operand->annotation,
                                           node->token.line, node->token.column);
        node->annotation.type = "undef";
        return;
    }

    if (!strcmp(operand->annotation.type, "undef") || !strcmp(operand->annotation.type, "void")) {
        operator_cannot_be_applied_to_type(select_operator(node->id),
                                           operand->annotation,
                                           node->token.line, node->token.column);
        node->annotation.type = operand->annotation.type;
        return;
    }

    node->annotation.type = operand->annotation.type;
}

void annotate_bitwise_operators(ast_node_t *node) {
    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;

    if (lhs->annotation.parameters || rhs->annotation.parameters ||
        !strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef") ||
        !strcmp(lhs->annotation.type, "void") || !strcmp(rhs->annotation.type, "void") ||
        !strcmp(lhs->annotation.type, "double") || !strcmp(rhs->annotation.type, "double")) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
    }
    node->annotation.type = "int";
}

void annotate_relational_operators(ast_node_t *node) {

    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;

    if (lhs->annotation.parameters || rhs->annotation.parameters ||
        !strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef") ||
        !strcmp(lhs->annotation.type, "void") || !strcmp(rhs->annotation.type, "void")) {
        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
    }
    node->annotation.type = "int";
}

void annotate_logical_operators(ast_node_t *node) {
    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;

    if (lhs->annotation.parameters || rhs->annotation.parameters ||
        !strcmp(lhs->annotation.type, "undef") || !strcmp(rhs->annotation.type, "undef") ||
        !strcmp(lhs->annotation.type, "void") || !strcmp(rhs->annotation.type, "void") ||
        !strcmp(lhs->annotation.type, "double") || !strcmp(rhs->annotation.type, "double")) {

        operator_cannot_be_applied_to_types(select_operator(node->id),
                                            lhs->annotation, rhs->annotation,
                                            node->token.line, node->token.column);
    }
    node->annotation.type = "int";
}

void semantic_analysis(ast_node_t *node) {

    if (!node) return;

    // Symbol Table Construction Core Section

    if (!strcmp(node->id, "Program")) {
        current_table = symtab_list = symbol_table("Global");
        symtab_list->is_defined = true;
        add_symbol(symtab_list, symbol("putchar", "int", parameter("int")));
        add_symbol(symtab_list, symbol("getchar", "int", parameter("void")));
        semantic_analysis(node->first_child);
        delete_undefined_tables(symtab_list);
        return;
    }

    if (!strcmp(node->id, "FuncDefinition")) {
        analyse_function_definition(node);
    }

    if (!strcmp(node->id, "FuncDeclaration")) {
        analyse_function_declaration(node);
    }

    if (!strcmp(node->id, "Declaration")) {
        analyse_declaration(node);
    }

    // Symbol/AST Annotations and Error Checking Section

    if (is_arithmetic_operator(node->id)) {
        semantic_analysis(node->first_child);
        annotate_arithmetic_operators(node);
    }

    if (is_unary_operator(node->id)) {
        semantic_analysis(node->first_child);
        annotate_unary_operators(node);
    }

    if (is_relational_operator(node->id)) {
        semantic_analysis(node->first_child);
        annotate_relational_operators(node);
    }

    if (is_bitwise_operator(node->id)) {
        semantic_analysis(node->first_child);
        annotate_bitwise_operators(node);
    }

    if (is_logical_operator(node->id)) {
        semantic_analysis(node->first_child);
        annotate_logical_operators(node);
    }

    if (is_statement_id(node->id)) {
        semantic_analysis(node->first_child);
        annotate_statement_id(node);
    }

    if (!strcmp(node->id, "Call")) {
        semantic_analysis(node->first_child);
        annotate_call(node);
    }

    if (!strcmp(node->id, "Store")) {
        semantic_analysis(node->first_child);
        annotate_store(node);
    }
    if (!strcmp(node->id, "Return")) {
        semantic_analysis(node->first_child);
        annotate_return(node);
    }

    if (!strcmp(node->id, "Comma")) {
        semantic_analysis(node->first_child);
        annotate_comma(node);
    }

    if (!strcmp(node->id, "StatList")) {
        semantic_analysis(node->first_child);
    }

    if (!strcmp(node->id, "IntLit")) {
        node->annotation.type = "int";
    }

    if (!strcmp(node->id, "ChrLit")) {
        node->annotation.type = "int";
    }

    if (!strcmp(node->id, "RealLit")) {
        node->annotation.type = "double";
    }

    if (!strcmp(node->id, "Id")) {
        annotate_id(node);
    }

    if (node->next_sibling != NULL) {
        semantic_analysis(node->next_sibling);
    }
}