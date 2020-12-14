#include "codegen.h"

// Function Definition Auxiliary Variables
static int llvm_var_counter;
static const char *llvm_return_type;
static bool llvm_has_return_keyword;

void funcdef_code_generator(ast_node_t *func_def) {
    ast_node_t *typespec = func_def->first_child;
    ast_node_t *declarator = typespec->next_sibling;
    ast_node_t *param_list = declarator->next_sibling;
    ast_node_t *func_body = param_list->next_sibling;

    // Function definition return type
    if (!strcmp(typespec->id, "Void")) {
        printf("\ndefine void ");
    } else if (!strcmp(typespec->id, "Char") || !strcmp(typespec->id, "Short") || !strcmp(typespec->id, "Int")) {
        printf("\ndefine i32 ");
    } else if (!strcmp(typespec->id, "Double")) {
        printf("\ndefine double ");
    }

    // Reset LLVM Single Static Assignement variable counter
    llvm_var_counter = 0;

    // Function declaration (name && parameter list)
    printf("@%s(", declarator->token.value);
    ast_node_t *param = param_list->first_child;
    while (param != NULL) {
        if (!strcmp(param->first_child->id, "Char") || !strcmp(param->first_child->id, "Short") || !strcmp(param->first_child->id, "Int")) {
            printf("i32");
            ++llvm_var_counter;
        } else if (!strcmp(param->first_child->id, "Double")) {
            printf("double");
            ++llvm_var_counter;
        }
        if (param->next_sibling)
            printf(", ");
        param = param->next_sibling;
    }

    // Keep one space between parameters and declared variables
    ++llvm_var_counter;
    printf(")");

    // Open function definition body
    current_table = find_table(symtab_list, declarator->token.value);
    printf(" {\n");

    // Initialize function parameters
    param = param_list->first_child;
    for (int i = 0; i < llvm_var_counter && param; ++i) {

        if (!strcmp(param->first_child->id, "Char") || !strcmp(param->first_child->id, "Short") || !strcmp(param->first_child->id, "Int")) {
            printf("\t%%%d = alloca i32\n", llvm_var_counter);
            printf("\tstore i32 %%%d, i32* %%%d\n", i, llvm_var_counter++);
        } else if (!strcmp(param->first_child->id, "Double")) {
            printf("\t%%%d = alloca double\n", llvm_var_counter);
            printf("\tstore double %%%d, double* %%%d\n", i, llvm_var_counter++);
        }
        param = param->next_sibling;
    }

    // Return type settings
    llvm_return_type = type_to_llvm(typespec->id);
    llvm_has_return_keyword = false;

    // Generate function body itself
    code_generator(func_body->first_child);

    // Default return type
    insert_default_return(llvm_return_type, llvm_has_return_keyword);

    // Close Function Body
    printf("}\n");
    current_table = symtab_list;
}

void if_code_generator(ast_node_t *node, int index) { //recebe o no do if e o index da ultima variavel atribuida na função que o chamou
    // expression = node -> first_child --------> expression dentro if
    //expression_code_genrator(expression)

    // statlist_true = expression-> next_sibling ---------> statlist se for true
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não

    // statilist_false = statlist_true-> next_sibling --------> statlist se for false
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não
}

void while_code_generator(ast_node_t *node, int index) { //recebe o no do while e o index da ultima variavel atribuida na função que o chamou

    //expression = node -> first_child -----> expression dentro do while
    //expression_code_genrator(expression)

    // statlist = expression -> next_sibling
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não
}

void operator_code_generator(ast_node_t *node) {
    // bool terminais = false;
    // ast_node_t *operator = node;//assumi que se passa o node operador
    // ast_node_t* op1 = operator -> first_child;//pode ser outro operador ou um terminal
    // ast_node_t* op2 = op2 -> next_sibling;//e um terminal
    // sym_t* op1_sym, *op2_sym;


    // if(strcmp(operator -> first_child, "ChrLit") || strcmp(operator -> first_child, "IntLit") || strcmp(operator -> first_child, "RealLit") || strcmp(operator -> first_child, "Id")){
    //     //é operador
    //     operator_code_generator(operator -> first_child);
    // }
    // else{
    //     terminais = true;
    // }



    // if (!strcmp(operator, "Add")) {
    //     //verificar se pode fazer conta ou se tem de continuar para baixo
    //     if(terminais){
    //         //verificar se o op1 é variável ou nao
    //         if(!strcmp(op1 -> token.value, "Id")){
    //             //verificar se op2 é variável
    //             if(!strcmp(op2 -> token.value, "Id")){//op1 var e op2 var
    //                 //load das vars
    //                 //verificar se é global ou local
    //                 op1_sym = find_symbol(current_table -> symlist, op1 -> token.value);
    //                 op2_sym = find_symbol(current_table -> symlist, op2 -> token.value);
    //                 if(op1_sym){//op1 local

    //                 }
    //                 else{}
    //                 printf("\t%%%d = load %s, %s* %%%d\n", llvm_var_counter++, );
                    
    //             }
    //             else{//op1 var e op2 nvar

    //             }
    //         }
    //         else{//op1 não é variável
    //             //verificar se op2 é variável
    //             if(!strcmp(op2 -> token.value, "Id")){//op1 nvar e op2 var
                    
    //             }
    //             else{//op1 nvar e op2 nvar

    //             }
    //         }
    //     }
    //     else{//vai usar a variável temporária criada pelo llvm para guardar a operção intermédia

    //     }
    // } else if (!strcmp(operator, "Sub")) {
        
    // } else if (!strcmp(operator, "Mul")) {

    // } else if (!strcmp(operator, "Div")) {

    // } else if (!strcmp(operator, "Mod")) {

    // } else if (!strcmp(operator, "Or")) {

    // } else if (!strcmp(operator, "And")) {

    // } else if (!strcmp(operator, "BitWiseOr")) {

    // } else if (!strcmp(operator, "BitWiseAnd")) {

    // } else if (!strcmp(operator, "BitWiseXor")) {

    // } else if (!strcmp(operator, "Eq")) {
    // }
    // else if(!strcmp(operator, "Ne")){

    // }
    // else if(!strcmp(operator, "Le")){

    // }
    // else if(!strcmp(operator, "Ge")){

    // }
    // else if(!strcmp(operator, "Lt")){

    // }
    // else if(!strcmp(operator, "Gt")){

    // }
    // else if(!strcmp(operator, "Plus")){
    //     //fazer alguma coisa nesta situação???
    // }
    // else if(!strcmp(operator, "Minus")){

    // }
    // else if(!strcmp(operator, "Not")){

    // }

    // // ambos os filhos são operatorterminais ? sai : operator_code_generator(node -> ....)
    // //printf("%# = add i32 t1, t2")
}

void return_code_generator(ast_node_t *node) {
    ast_node_t *return_value = node->first_child;
    llvm_has_return_keyword = true;

    if (!strcmp(return_value->id, "Id")) {
        sym_t *sym = find_symbol(current_table->symlist, return_value->token.value);
        if (!sym) {
            printf("\t%%%d = load %s, %s* @%s\n", llvm_var_counter++, llvm_return_type, llvm_return_type, return_value->token.value);
            printf("\tret %s %%%d\n", llvm_return_type, llvm_var_counter - 1);
            return;
        }
        printf("\t%%%d = load %s, %s* %%%d\n", llvm_var_counter++, llvm_return_type, llvm_return_type, sym->llvm_var);
        printf("\tret %s %%%d\n", llvm_return_type, llvm_var_counter - 1);

    } else if (!strcmp(llvm_return_type, "void")) {
        printf("\tret void\n");

    } else if (!strcmp(llvm_return_type, "i32")) {
        if (!strcmp(return_value->id, "ChrLit")) {
            printf("\tret %s %d\n", llvm_return_type, ord(return_value->token.value));
            return;
        }
        printf("\tret %s %s\n", llvm_return_type, return_value->token.value);

    } else if (!strcmp(llvm_return_type, "double")) {
        printf("\tret %s %e\n", llvm_return_type, strtod(return_value->token.value, NULL));

    } else {
        code_generator(return_value);
        printf("\tret %s %%%d\n", llvm_return_type, llvm_var_counter - 1);
    }
}

void declaration_code_generator(ast_node_t *node) {
    ast_node_t *typespec = node->first_child;
    ast_node_t *declarator_id = typespec->next_sibling;
    ast_node_t *expr = declarator_id->next_sibling;
    const char *value = expr == NULL ? "0" : expr->token.value;

    if (current_table == symtab_list) {
        if (!expr) {
            if (!strcmp(typespec->id, "Double")) {
                printf("@%s = global %s %e\n", declarator_id->token.value, type_to_llvm(typespec->id), strtod(value, NULL));
            } else if (!strcmp(typespec->id, "Char")) {
                printf("@%s = global %s %d\n", declarator_id->token.value, type_to_llvm(typespec->id), ord(value));
            } else {
                printf("@%s = global %s %s\n", declarator_id->token.value, type_to_llvm(typespec->id), value);
            }
        } else {
            if (!strcmp(expr->id, "RealLit")) {
                printf("@%s = global %s %e\n", declarator_id->token.value, type_to_llvm(typespec->id), strtod(value, NULL));
            } else if (!strcmp(expr->id, "ChrLit")) {
                printf("@%s = global %s %d\n", declarator_id->token.value, type_to_llvm(typespec->id), ord(value));
            } else {
                printf("@%s = global %s %s\n", declarator_id->token.value, type_to_llvm(typespec->id), value);
            }
        }
        return;
    }

    sym_t *sym = find_symbol(current_table->symlist, declarator_id->token.value);
    if (expr == NULL) {
        printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));
    } else {
        //verificar se expr -> id == Id, se for temos de tratar de maneira diferente
        if (!strcmp(expr->id, "Id")) { //variável
            // //verificar se o lhs é double e o rhs não é
            printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));

            //faz load para temporária
            //verificar se a variável é global
            sym_t *rhs_symbol = find_symbol(current_table->symlist, expr->token.value);
            if (rhs_symbol) { //local
                printf("\t%%%d = load %s, %s* %%%d\n", llvm_var_counter, type_to_llvm(rhs_symbol->type), type_to_llvm(rhs_symbol->type), rhs_symbol->llvm_var);
                llvm_var_counter++;
            } else { //global
                rhs_symbol = find_symbol(symtab_list->symlist, expr->token.value);
                printf("\t%%%d = load %s, %s* @%s\n", llvm_var_counter, type_to_llvm(rhs_symbol->type), type_to_llvm(rhs_symbol->type), expr->token.value);
                llvm_var_counter++;
            }

            const char *type = type_to_llvm(typespec->id);
            bool use_sitofp = false;
            if (!strcmp(typespec->id, "Double") && strcmp("double", find_symbol(current_table->symlist, expr->token.value)->type)) {
                type = "i32";
                use_sitofp = true;
            }

            if (use_sitofp) {
                printf("\t%%%d = sitofp %s %%%d to %s\n", llvm_var_counter, type, llvm_var_counter - 1, "double");
                llvm_var_counter++;
                printf("\tstore %s %%%d, %s* %%%d\n", "double", llvm_var_counter - 1, "double", llvm_var_counter - 3);
            } else {
                printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(typespec->id), llvm_var_counter - 1, type_to_llvm(typespec->id), llvm_var_counter - 2);
            }

        } else {

            printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));
            if (!strcmp(expr->id, "RealLit")) {
                printf("\tstore %s %e, %s* %%%d\n", type_to_llvm(typespec->id), strtod(value, NULL), type_to_llvm(typespec->id), llvm_var_counter - 1);
            } else if (!strcmp(expr->id, "ChrLit")) {
                printf("\tstore %s %d, %s* %%%d\n", type_to_llvm(typespec->id), ord(value), type_to_llvm(typespec->id), llvm_var_counter - 1);
            } else {
                printf("\tstore %s %s, %s* %%%d\n", type_to_llvm(typespec->id), value, type_to_llvm(typespec->id), llvm_var_counter - 1);
            }
        }
    }
    sym->llvm_var = llvm_var_counter - 1;
}

void store_code_generator(ast_node_t *node) {
    ast_node_t *lhs = node->first_child;
    ast_node_t *rhs = lhs->next_sibling;

    if (!strcmp(rhs->id, "Id")) {

        // Find symbol in the current function table (if there is no symbol then it means that it is globally declared)
        sym_t *lhs_sym = find_symbol(current_table->symlist, lhs->token.value);
        sym_t *rhs_sym = find_symbol(current_table->symlist, rhs->token.value);

        const char *type = type_to_llvm(node->annotation.type);
        bool use_sitofp = false;
        if (!strcmp(lhs->annotation.type, "double") && strcmp("double", rhs->annotation.type)) {
            type = "i32";
            use_sitofp = true;
        }

        if (!rhs_sym)
            printf("\t%%%d = load %s, %s* @%s\n", llvm_var_counter++, type, type, rhs->token.value);
        else
            printf("\t%%%d = load %s, %s* %%%d\n", llvm_var_counter++, type, type, rhs_sym->llvm_var);

        if (use_sitofp) {
            printf("\t%%%d = sitofp %s %%%d to %s\n", llvm_var_counter, type, llvm_var_counter - 1, "double");
            llvm_var_counter++;
        }

        if (!lhs_sym)
            printf("\tstore %s %%%d, %s* @%s\n", type_to_llvm(node->annotation.type), llvm_var_counter - 1, type_to_llvm(node->annotation.type), lhs->token.value);
        else
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(node->annotation.type), llvm_var_counter - 1, type_to_llvm(node->annotation.type), lhs_sym->llvm_var);

    } else {

        // Find symbol in the current function table (if there is no symbol then it means that it is globally declared)
        sym_t *lhs_sym = find_symbol(current_table->symlist, lhs->token.value);
        const char *value = rhs->token.value;

        if (!strcmp(rhs->id, "ChrLit")) {
            if (!lhs_sym)
                printf("\tstore %s %d, %s* @%s\n", type_to_llvm(node->annotation.type), ord(value), type_to_llvm(node->annotation.type), lhs->token.value);
            else
                printf("\tstore %s %d, %s* %%%d\n", type_to_llvm(node->annotation.type), ord(value), type_to_llvm(node->annotation.type), lhs_sym->llvm_var);

        } else if (!strcmp(rhs->id, "RealLit")) {
            if (!lhs_sym)
                printf("\tstore %s %e, %s* @%s\n", type_to_llvm(node->annotation.type), strtod(value, NULL), type_to_llvm(node->annotation.type), lhs->token.value);
            else
                printf("\tstore %s %e, %s* %%%d\n", type_to_llvm(node->annotation.type), strtod(value, NULL), type_to_llvm(node->annotation.type), lhs_sym->llvm_var);

        } else {
            if (!lhs_sym)
                printf("\tstore %s %s, %s* @%s\n", type_to_llvm(node->annotation.type), value, type_to_llvm(node->annotation.type), lhs->token.value);
            else
                printf("\tstore %s %s, %s* %%%d\n", type_to_llvm(node->annotation.type), value, type_to_llvm(node->annotation.type), lhs_sym->llvm_var);
        }
    }
}

void code_generator(ast_node_t *node) {
    if (!node) return;

    if (!strcmp(node->id, "Program")) {
        printf("declare i32 @putchar(i32)\n");
        printf("declare i32 @getchar()\n\n");
        code_generator(node->first_child);
        return;
    }

    if (!strcmp(node->id, "FuncDefinition")) {
        funcdef_code_generator(node);
    }

    if (!strcmp(node->id, "Declaration")) {
        declaration_code_generator(node);
    }

    if (!strcmp(node->id, "Store")) {
        store_code_generator(node);
    }

    if (!strcmp(node->id, "Return")) {
        return_code_generator(node);
    }

    if (node->next_sibling != NULL) {
        code_generator(node->next_sibling);
    }
}
