/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "semantic_analysis.h"

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
    printf("Line %d, col %d: Symbol %s already defined\n", token);

#define symbol_is_not_a_function(token, line, column) \
    printf("Line %d, col %d: Symbol %s is not a function\n", token, line, column);

#define unknown_symbol(token, line, column) \
    printf("Line %d, col %d: Unknown symbol %s\n", token, line, column);

#define wrong_number_of_arguments(token, expected, required) \
    printf("Line %d, col %d: Wrong number of arguments to function %s (got %d, required %d)\n", token, expected, required);

param_t *parameter_list(ast_node_t *param_list) {
    param_t *list = NULL;

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

void analyse_function_definition(ast_node_t *func_def) {

    
}

void analyse_function_declaration(ast_node_t *func_dec) {

    ast_node_t *typespec = func_dec->first_child;
    ast_node_t *declarator = typespec->next_sibling;

    const char *type = decapitalize(typespec->id);

    sym_t *new_dec = symbol(declarator->token.value, type, parameter_list(declarator->next_sibling));

    symtab_t *table = find_table(symtab_list, declarator->token.value);
    if (table != NULL) {
        sym_t *existing = find_symbol(symtab_list->symlist, declarator->token.value);
        confliting_types_error(existing, new_dec, declarator->token.line, declarator->token.column);
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
        symtab_list = symbol_table("Global");
        add_symbol(symtab_list, symbol("putchar", "int", parameter("int")));
        add_symbol(symtab_list, symbol("getchar", "int", parameter("void")));
        semantic_analysis(node->first_child);
        return;

    } else if (!strcmp(node->id, "FuncDefinition")) {
        analyse_function_definition(node);

    } else if (!strcmp(node->id, "FuncDeclaration")) {
        analyse_function_declaration(node);
    } else if (!strcmp(node->id, "FuncBody")) {

    } else if (node->first_child != NULL) {
        semantic_analysis(node->first_child);
    }

    if (node->next_sibling != NULL) {
        semantic_analysis(node->next_sibling);
    }
}
