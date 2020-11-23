/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "symbol_table.h"

symtab_list_t *symbol_table_list() {
    symtab_list_t *list = (symtab_list_t *)malloc(sizeof(symtab_list_t));
    assert(list != NULL);

    list->head = NULL;
    list->tail = NULL;
    return list;
}

sym_list_t *symbol_list() {
    sym_list_t *list = (sym_list_t *)malloc(sizeof(sym_list_t));
    assert(list != NULL);

    list->head = NULL;
    list->tail = NULL;
    return list;
}

symtab_t *symbol_table(const char *id) {
    symtab_t *table = (symtab_t *)malloc(sizeof(symtab_t));
    assert(table != NULL);

    table->id = id;
    table->symlist = symbol_list();
    table->next = NULL;

    return table;
}

sym_t *symbol(const char *id, type_t type, param_t *parameter_list) {
    sym_t *symbol = (sym_t *)malloc(sizeof(sym_t));
    assert(symbol != NULL);

    symbol->id = id;
    symbol->type = type;
    symbol->parameters = parameter_list;

    return symbol;
}

param_t *parameter_list(ast_node_t *param_list) {
    param_t *list = NULL;
    ast_node_t *current_node = param_list;

    list = (param_t *)malloc(sizeof(param_t *));
    assert(list != NULL);

    list->type = current_node->first_child->id;
    list->next = NULL;

    param_t *current = list;
    current_node = current_node->next_sibling;

    for (ast_node_t *param_decl = current_node; param_decl; param_decl = param_decl->next_sibling) {
        current->next = (param_t *)malloc(sizeof(param_t *));
        assert(current->next != NULL);

        char *aux = (char *) param_decl->first_child->id;
        *aux = tolower(*aux);
        current->next->type = aux;
        current->next = NULL;

        current = current->next;
    }
    return list;
}

void add_table(symtab_list_t *list, const char *id) {
    if (!list->head) {
        list->head = list->tail = symbol_table(id);
    } else {
        list->tail->next = symbol_table(id);
        list->tail = list->tail->next;
    }
}

symtab_t *find_table(symtab_list_t *list, const char *id) {
    for (symtab_t *current = list->head; current; current = current->next) {
        if (!strcmp(current->id, id)) {
            return current;
        }
    }
    return NULL;
}

void add_symbol(sym_list_t *list, sym_t *symbol) {
    if (!list->head) {
        list->head = list->tail = symbol;
    } else {
        list->tail->next = symbol;
        list->tail = list->tail->next;
    }
}

sym_t *find_symbol(sym_list_t *list, const char *id) {
    for (sym_t *current = list->head; current; current = current->next) {
        if (!strcmp(current->id, id)) {
            return current;
        }
    }
    return NULL;
}
