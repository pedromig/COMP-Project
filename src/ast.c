#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ast.h"
#include "y.tab.h"

bool syntax_error = false;

int alloc_types[] = {
    ID,
    INTLIT,
    REALLIT,
    CHRLIT
};

token_t token(char *value, int type) {
    for (int i = 0; i < (sizeof(alloc_types) / sizeof(alloc_types[0])); ++i) {
        if (type == alloc_types[i]) { 
            if (type == CHRLIT) {
                char aux[strlen(value) + 1];
                sprintf(aux, "'%s", value);
                return (char *)strdup(aux);
            }
            return (char *)strdup(value);
        }
    }
    return NULL;
}

ast_node_t *ast_node(char *id, token_t value) {
    ast_node_t *node = (ast_node_t *)malloc(sizeof(ast_node_t));
    assert(node != NULL);

    node->id = id;
    node->value = value;
    node->first_child = NULL;
    node->next_sibling = NULL;

    return node;
}

void add_children(ast_node_t *parent, int argc, ...) {
    va_list args;
    ast_node_t *child = NULL;
    va_start(args, argc);

    assert(parent != NULL);
    child = va_arg(args, ast_node_t *);

    parent->first_child = child != NULL ? child : ast_node("Null", NULL);

    ast_node_t *current = parent->first_child;
    for (int i = 0; i < argc - 1; ++i) {
        child = va_arg(args, ast_node_t *);

        current->next_sibling = child != NULL ? child : ast_node("Null", NULL);
        current = current->next_sibling;
    }
    va_end(args);
}

void add_siblings(ast_node_t *node, int argc, ...) {
    va_list args;
    va_start(args, argc);
    ast_node_t *sibling;

    assert(node != NULL);
    ast_node_t *current = node;
    while (current->next_sibling != NULL) {
        current = current->next_sibling;
    }

    for (int i = 0; i < argc; ++i) {
        sibling = va_arg(args, ast_node_t *);
        if (!sibling)
            continue;
        current->next_sibling = sibling;
        current = current->next_sibling;
    }
    va_end(args);
}


void free_node(ast_node_t *node) {
    free(node->id);
    if (node->value)
        free(node->value);
}

void free_ast(ast_node_t *node) {
    if (node != NULL) {
        for (ast_node_t *current = node->first_child; current; current = current->next_sibling) {
            free_ast(current);
        }
        free_node(node);
    }
}

void print_node(char *id, char *value, int indent_level) {
    for (int i = 0; i < indent_level; ++i)
        printf("..");
    printf("%s", id);
    if (value) printf("(%s)", value);
    printf("\n");
}


void __print_ast(ast_node_t *node, int indent_level) {
    print_node(node->id, node->value, indent_level);
    for (ast_node_t *current = node->first_child; current; current = current->next_sibling) {
        __print_ast(current, indent_level + 1);
    }
}

void print_ast(ast_node_t *program) {
    if (!syntax_error)
        __print_ast(program, 0);
}
