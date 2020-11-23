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

sym_t *symbol(const char *id, type_t type, param_t *parameters) {
    sym_t *symbol = (sym_t *)malloc(sizeof(sym_t));
    assert(symbol != NULL);

    symbol->id = id;
    symbol->type = type;
    symbol->parameters = parameters;
    symbol->is_param = false;

    return symbol;
}

param_t *parameter(type_t type) {
    param_t *parameter = (param_t *)malloc(sizeof(param_t));
    assert(parameter != NULL);

    parameter->type = type;
    parameter->next = NULL;

    return parameter;
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

        char *aux = (char *)param_decl->first_child->id;
        *aux = tolower(*aux);
        current->next->type = aux;
        current->next = NULL;

        current = current->next;
    }
    return list;
}

symtab_t *add_table(symtab_list_t *list, const char *id) {
    symtab_t *table = symbol_table(id);
    if (!list->head) {
        list->head = list->tail = table;
    } else {
        list->tail->next = symbol_table(id);
        list->tail = list->tail->next;
    }
    return table;
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

void print_parameter_list(param_t *head) {
    if (head) {
        printf("(");
        printf("%s", head->type);
        for (param_t *current = head->next; current; current = current->next) {
            printf(",%s", current->type);
        }
        printf(")");
    }
}

void print_symbol_list(sym_list_t *list) {
    for (sym_t *current = list->head; current; current = current->next) {
        printf("%s\t%s", current->id, current->type);
        print_parameter_list(current->parameters);
        printf("%s\n", current->is_param ? "\tparam" : "");
    }
}

void print_table_list(symtab_list_t *list) {
    for (symtab_t *current = list->head; current; current = current->next) {
        printf("===== %s Symbol Table =====\n", current->id);
        print_symbol_list(current->symlist);
        printf("\n");
    }
}