
#ifndef __AST_H
#define __AST_H

#define print_ast(head) __print_ast(head, 0)
#define token(value) strdup(value);

typedef char *token_t;

typedef struct ASTNode ast_node_t;
struct ASTNode {
    char *id;
    token_t value;
    ast_node_t *first_child;
    ast_node_t *next_sibling;
};

ast_node_t *ast_node(char *id, token_t token);
void add_children(ast_node_t *parent, int argc, ...);
void add_siblings(ast_node_t *parent, int argc, ...);
void free_ast(ast_node_t *head);

#endif // __AST_H