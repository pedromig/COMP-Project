/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "symbol_table.h"

#define free_parameter(parameter) free(parameter);

symtab_t *symbol_table(const char *id) {
    symtab_t *table = (symtab_t *)malloc(sizeof(symtab_t));
    assert(table != NULL);

    table->id = id;
    table->is_defined = false;
    table->symlist = NULL;
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
    symbol->is_defined = false;
    symbol->next = NULL;

    return symbol;
}

param_t *parameter(type_t type) {
    param_t *parameter = (param_t *)malloc(sizeof(param_t));
    assert(parameter != NULL);

    parameter->type = type;
    parameter->next = NULL;

    return parameter;
}

symtab_t *add_table(symtab_t *list, const char *id) {
    assert(list != NULL);
    symtab_t *current = list;
    while (current->next) {
        current = current->next;
    }
    symtab_t *table = symbol_table(id);
    current->next = table;
    return table;
}

void add_symbol(symtab_t *table, sym_t *sym) {
    assert(table != NULL);

    if (!table->symlist) {
        table->symlist = sym;
    } else {
        sym_t *current = table->symlist;
        while (current->next) {
            current = current->next;
        }
        current->next = sym;
    }
}

bool compare_symbol_types(sym_t *s1, sym_t *s2) {
    if (!strcmp(s1->type, s2->type)) {
        param_t *param_s1 = s1->parameters,
                *param_s2 = s2->parameters;
        while (param_s1 && param_s2) {
            if (strcmp(param_s1->type, param_s2->type))
                return false;
            param_s1 = param_s1->next;
            param_s2 = param_s2->next;
        }
        return !(param_s1 || param_s2);
    }
    return false;
}

symtab_t *find_table(symtab_t *list, const char *id) {
    for (symtab_t *current = list; current; current = current->next) {
        if (!strcmp(current->id, id)) {
            return current;
        }
    }
    return NULL;
}

sym_t *find_symbol(sym_t *list, const char *id) {
    for (sym_t *current = list; current; current = current->next) {
        if (!strcmp(current->id, id)) {
            return current;
        }
    }
    return NULL;
}

void free_symbol(sym_t *symbol) {
    assert(symbol != NULL);

    param_t *aux_param = NULL, *param = symbol->parameters;
    while (param != NULL) {
        aux_param = param;
        param = param->next;
        free_parameter(aux_param);
    }
    free(symbol);
}

void free_symbol_table_list(symtab_t *head) {
    if (head) {
        symtab_t *tab_aux = NULL, *tab = head;
        while (tab != NULL) {
            sym_t *sym_aux = NULL, *sym = tab->symlist;
            while (sym != NULL) {
                sym_aux = sym;
                sym = sym->next;
                free_symbol(sym_aux);
            }
            tab_aux = tab;
            tab = tab->next;
            free(tab_aux);
        }
    }
}

void free_table(symtab_t *head) {
    if (head) {
        sym_t *sym_aux = NULL, *sym = head->symlist;
        while (sym != NULL) {
            sym_aux = sym;
            sym = sym->next;
            free_symbol(sym_aux);
        }
        free(head);
    }
}

void delete_undefined_tables(symtab_t *list) {
    symtab_t *before = list, *current = list->next;

    while (current != NULL) {
        if (!current->is_defined) {
            before->next = current->next;
            free_table(current);
            current = before->next;
        } else {
            before = current;
            current = current->next;
        }
    }
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
void print_symbol_list(sym_t *list) {
    for (sym_t *current = list; current; current = current->next) {
        printf("%s\t", current->id);
        print_symbol_type(current);
        printf("%s\n", current->is_param ? "\tparam" : "");
    }
}

void print_symbol_type(sym_t *symbol) {
    printf("%s", symbol->type);
    print_parameter_list(symbol->parameters);
}

void print_annotation(annotation_t annotation) {
    printf("%s", annotation.type);
    print_parameter_list(annotation.parameters);
}

void print_table_list(symtab_t *list) {
    printf("===== %s Symbol Table =====\n", list->id);
    print_symbol_list(list->symlist);
    printf("\n");

    for (symtab_t *current = list->next; current; current = current->next) {
        printf("===== Function %s Symbol Table =====\n", current->id);
        print_symbol_list(current->symlist);
        printf("\n");
    }
}