
#ifndef __AST_H
#define __AST_H

#define print_ast(head) __print_ast(head, 0)

typedef struct ASTNode ast_node_t;
typedef struct ASTList ast_list_t;
typedef struct ASTListNode ast_list_node_t;

typedef struct Token {
    char *value;
} token_t;

struct ASTNode {
    char *id;
    token_t token;
    ast_list_t *children;
};

struct ASTListNode {
    ast_node_t *node;
    ast_list_node_t *next;
};

struct ASTList {
    ast_list_node_t *head;
    ast_list_node_t *tail;
};

token_t token(const char *value);
ast_node_t *ast_node(char *id, token_t *token);
void add_children(ast_node_t *parent, int argc, ...);
void free_ast(ast_node_t *head);

#endif // __AST_H