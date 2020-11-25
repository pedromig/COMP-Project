/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "semantic_analysis.h"
static symtab_t *current_table = NULL;

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

#define operator_cannot_be_applied_to_type(token, sym, line, column)          \
    printf("Line %d, col %d: Operator %s cannot be applied to type ", token); \
    print_symbol_type(sym);                                                   \
    printf("\n");

#define operator_cannot_be_applied_to_types(token, sym1, sym2, line, column)  \
    printf("Line %d, col %d: Operator %s cannot be applied to type ", token); \
    print_symbol_type(sym1);                                                  \
    printf(", ");                                                             \
    printf_symbol_type(sym2);                                                 \
    printf("\n");

#define symbol_already_defined(token, line, column) \
    printf("Line %d, col %d: Symbol %s already defined\n", line, column, token);

#define symbol_is_not_a_function(token, line, column) \
    printf("Line %d, col %d: Symbol %s is not a function\n", token, line, column);

#define unknown_symbol(token, line, column) \
    printf("Line %d, col %d: Unknown symbol %s\n", token, line, column);

#define wrong_number_of_arguments(token, expected, required) \
    printf("Line %d, col %d: Wrong number of arguments to function %s (got %d, required %d)\n", token, expected, required);

bool has_invalid_void(ast_node_t *param_list) {
    ast_node_t *current = param_list->first_child;

    if (!strcmp(current->first_child->id, "Void")) {
        if (current->first_child->token.value) {
            invalid_use_of_void_type_in_declaration(current->first_child->token.line,
                                                    current->first_child->token.column);
            return true;
        }
        current = current->next_sibling;
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

    if (has_invalid_void(param_list)) {
        return NULL;
    }

    list = (param_t *)malloc(sizeof(param_t *));
    assert(list != NULL);

    list->type = decapitalize(param_list->first_child->first_child->id);
    list->next = NULL;

    param_t *current = list;
    ast_node_t *node = param_list->first_child->next_sibling;

    for (ast_node_t *param_decl = node; param_decl; param_decl = param_decl->next_sibling) {
        current->next = (param_t *)malloc(sizeof(param_t *));
        assert(current->next != NULL);

        current->next->type = decapitalize(param_decl->first_child->id);
        current->next->next = NULL;

        current = current->next;
    }
    return list;
}

void add_parameter_symbols(symtab_t *table, ast_node_t *param_list) {
    for (ast_node_t *param_decl = param_list->first_child; param_decl; param_decl = param_decl->next_sibling) {

        if (!strcmp(param_decl->first_child->id, "Void"))
            break;

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
    if (!(param_list = parameter_list(declarator->next_sibling)))
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
            confliting_types_error(existing, new_func_dec, declarator->token.line, declarator->token.column);
            free_symbol(new_func_dec);
            return;
        }

        add_parameter_symbols(table, declarator->next_sibling);
        table->is_defined = true;
        return;
    }

    add_symbol(symtab_list, new_func_dec);

    symtab_t *new_table = add_table(symtab_list, declarator->token.value);
    new_table->is_defined = true;

    add_symbol(new_table, symbol("return", type, NULL));
    add_parameter_symbols(new_table, declarator->next_sibling);

    current_table = new_table;
    semantic_analysis(declarator->next_sibling->next_sibling);
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
            confliting_types_error(existing, new_dec, declarator->token.line, declarator->token.column);
        }
        free_symbol(new_dec);
        return;
    }

    add_symbol(symtab_list, new_dec);

    symtab_t *new_table = add_table(symtab_list, declarator->token.value);
    add_symbol(new_table, symbol("return", type, NULL));
}

void semantic_analysis(ast_node_t *node) {

    if (!node) return;

    if (!strcmp(node->id, "Program")) {
        current_table = symtab_list = symbol_table("Global");
        symtab_list->is_defined = true;
        add_symbol(symtab_list, symbol("putchar", "int", parameter("int")));
        add_symbol(symtab_list, symbol("getchar", "int", parameter("void")));
        semantic_analysis(node->first_child);
        delete_undefined_tables(symtab_list);
        return;

    } else if (!strcmp(node->id, "FuncDefinition")) {
        analyse_function_definition(node);

    } else if (!strcmp(node->id, "FuncDeclaration")) {
        analyse_function_declaration(node);

    } else if (!strcmp(node->id, "FuncBody")) {
        return;

    } else if (node->first_child != NULL) {
        semantic_analysis(node->first_child);
    }

    if (node->next_sibling != NULL) {
        semantic_analysis(node->next_sibling);
    }
}
