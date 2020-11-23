/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "symbol_table.h"

symtab_t *symbol_table(const char *id) {
    symtab_t *table = (symtab_t *)malloc(sizeof(symtab_t));
    assert(table != NULL);

    table->id = id;
    table->first_symbol = NULL;
    table->next = NULL;

    return table;
}

sym_t *symbol(const char *id, type_t return_type, param_t *parameter_list) {
    sym_t *symbol = (sym_t *)malloc(sizeof(sym_t));
    assert(symbol != NULL);

    symbol->id = id;
    symbol->return_type = return_type;
    symbol->parameters = parameter_list;

    return symbol;
}

param_t *parameter_list(int argc, ...) {
    va_list args;
    va_start(args, argc);

    param_t *head = (param_t *)malloc(sizeof(param_t));
    assert(head != NULL);
    head->type = va_arg(args, type_t);
    head->next = NULL;

    param_t *current = head;
    for (int i = 0; i < argc - 1; ++i) {
        current->next = (param_t *)malloc(sizeof(param_t));
        assert(current->next != NULL);

        current->next->type = va_arg(args, type_t);
        current->next->next = NULL;
        current = current->next;
    }
    va_end(args);

    return head;
}

symtab_t *add_table(symtab_t *head, symtab_t *table) {
}

void add_symbol(symtab_t *table, sym_t *symbol) {
}