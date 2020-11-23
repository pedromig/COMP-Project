/**
 * Licenciatura em Engenharia Informática | Faculdade de Ciências e Tecnologia da Universidade de Coimbra
 * Projeto de Compiladores 2020/2021
 *
 * 2018288117 Gabriel Mendes Fernandes
 * 2018283166 Pedro Miguel Duque Rodrigues
 *   
*/

#include "semantic_analysis.h"

extern symtab_list_t *symtab_list;

void analyse(ast_node_t *node) {

}

void semantic_analysis(ast_node_t *program) {

    symtab_t *global = add_table(symtab_list, "Global");
    add_symbol(global->symlist, symbol("putchar", "int", parameter("int")));
    add_symbol(global->symlist, symbol("getchar", "int", parameter("void")));

    analyse(program);
}
