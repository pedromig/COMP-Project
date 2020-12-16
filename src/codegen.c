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
        //TODO atribuir na tabela de símbolos ao parametro atual o número que lhe corresponde dentro da função
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

void call_code_generator(ast_node_t* node){
    //load dos parâmetros da função a chamar para temporárias
    //fazer call com as variáveis temporárias
    //ter em atenção os tipos das variáveis loaded e dos tipos dos parâmetros da função a chamar

    //usar load_terminal calculando previamente se é preciso dar cast para double a algum parâmetro
    //while params..... verificar se tem de se dar cast .... load...guardar int retornado
    //call ... (tipos e ints das variáveis de cada param)

}

void if_code_generator(ast_node_t *node) { //recebe o no do if
    // expression = node -> first_child --------> expression dentro if
    //expression_code_genrator(expression)

    // statlist_true = expression-> next_sibling ---------> statlist se for true
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não

    // statilist_false = statlist_true-> next_sibling --------> statlist se for false
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não
}

void while_code_generator(ast_node_t *node) { //recebe o no do while

    //expression = node -> first_child -----> expression dentro do while
    //expression_code_genrator(expression)

    // statlist = expression -> next_sibling
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não
}

bool is_variable(ast_node_t* node){
    if(!strcmp(node -> id, "Id"))
        return true;
    return false;
}

int load_variable_code_generator(ast_node_t* node, bool double_type){
    bool global = false;
    sym_t* sym;
    int number;

    sym = find_symbol(current_table -> symlist, node -> token.value);
    if(!sym){
        sym = find_symbol(symtab_list -> symlist, node -> token.value);
        global = true;
    }

    if(global){//op2 global
        printf("\t%%%d = load %s, %s* @%s\n", llvm_var_counter++, type_to_llvm(sym -> type), type_to_llvm(sym -> type), node -> token.value);
    }
    else{//op2 local
        printf("\t%%%d = load %s, %s* %%%d\n", llvm_var_counter++, type_to_llvm(sym -> type), type_to_llvm(sym -> type), sym -> llvm_var);
    }
    number = llvm_var_counter - 1;
    if(double_type && strcmp(type_to_llvm(node -> annotation.type), "double")){
        printf("\t%%%d = sitofp %s %%%d to %s\n", llvm_var_counter++, type_to_llvm(node -> annotation.type), number, "double");
        number = llvm_var_counter - 1;
    }
    return number;
}

int load_terminal(ast_node_t* node, bool double_type){
    int number;
    if(!strcmp(node -> id, "ChrLit")){
        printf("\t%%%d = add i32 0, %d\n", llvm_var_counter++, ord(node -> token.value));
        number = llvm_var_counter - 1;
        if(double_type){
            printf("\t%%%d = sitofp %s %%%d to %s\n", llvm_var_counter++, type_to_llvm(node -> annotation.type), number, "double");
            number = llvm_var_counter - 1;
        }
    }
    else if(!strcmp(node -> id, "RealLit")){
        printf("\t%%%d = fadd double 0.0, %e\n", llvm_var_counter++, strtod(node -> token.value, NULL));
        number = llvm_var_counter - 1;
    }
    else if(!strcmp(node -> id, "Id")){
        number = load_variable_code_generator(node, double_type);
    }
    else{
        printf("\t%%%d = add i32 0, %s\n", llvm_var_counter++, node -> token.value);
        number = llvm_var_counter - 1;
        if(double_type){
            printf("\t%%%d = sitofp %s %%%d to %s\n", llvm_var_counter++, type_to_llvm(node -> annotation.type), number, "double");
            number = llvm_var_counter - 1;
        }
    }
    return number;
}

void unary_operator_code_generator(ast_node_t* node, bool double_type){
    ast_node_t* unary_operator = node;
    int aux;
    if(!strcmp(unary_operator -> id, "Not"))
        aux = load_terminal(unary_operator -> first_child, false);
    else
        aux = load_terminal(unary_operator -> first_child, double_type);
    
    if(!strcmp(unary_operator -> id, "Minus")){
        if(double_type)
            printf("\t%%%d = fsub double 0.0, %%%d\n", llvm_var_counter++, aux);
        else
            printf("\t%%%d = sub i32 0, %%%d\n", llvm_var_counter++, aux);
    }
    else if(!strcmp(unary_operator -> id, "Not")){
        // if(double_type){
        //     printf("\t%%%d = fcmp une double %%%d, %e\n", llvm_var_counter++, aux, 0.0);
        // }
        // else{
            printf("\t%%%d = icmp ne i32 %%%d, %d\n", llvm_var_counter++, aux, 0);
        //}
        printf("\t%%%d = xor i1 %%%d, true\n", llvm_var_counter, llvm_var_counter - 1);
        llvm_var_counter++;
        printf("\t%%%d = zext i1 %%%d to i32\n", llvm_var_counter, llvm_var_counter - 1);
        llvm_var_counter++;

        if(double_type){
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, llvm_var_counter - 1);
            llvm_var_counter++;
        }
    }
    else if(!strcmp(unary_operator -> id, "Plus")){
        //! não faz nada, está aqui para saber que não me esqueci dele.
    }
}

void binary_operator_code_generator(ast_node_t* node, const char* operation, bool terminais, bool double_type, bool relational){
    ast_node_t *operator = node;//assumi que se passa o node operador
    ast_node_t* op1 = operator -> first_child;//pode ser outro operador ou um terminal
    ast_node_t* op2 = op1 -> next_sibling;//e um terminal
    int op1_number, op2_number;
    const char* type = double_type ? "double" : "i32";

    if(terminais){
        //verificar se o op1 é variável ou nao
        if(is_variable(op1)){
            //oload op1
            op1_number = load_variable_code_generator(op1, double_type);

            //verificar se op2 é variável
            if(is_variable(op2)){//op1 var e op2 var
                //load op2
                op2_number = load_variable_code_generator(op2, double_type);
                
            }
            else{//op1 var e op2 nvar
                //verificar o tipo de op2
                if(!strcmp(op2 -> id, "Minus") || !strcmp(op2 -> id, "Plus") || !strcmp(op2 -> id, "Not")){//se o op2 for unario
                    unary_operator_code_generator(op2, double_type);
                    op2_number = llvm_var_counter - 1;
                }
                else{
                    op2_number = load_terminal(op2, double_type);
                }
            }
        }
        else{//op1 não é variável
            //verificar o tipo de op1
            op1_number = load_terminal(op1, double_type);

            //verificar se op2 é variável
            if(is_variable(op2)){//op1 nvar e op2 var
                op2_number = load_variable_code_generator(op2, double_type);

            }
            else{//op1 nvar e op2 nvar
                if(!strcmp(op2 -> id, "Minus") || !strcmp(op2 -> id, "Plus") || !strcmp(op2 -> id, "Not")){//se o op2 for unario
                    unary_operator_code_generator(op2, double_type);
                    op2_number = llvm_var_counter - 1;
                }
                else{
                    op2_number = load_terminal(op2, double_type);
                }
            }
        }
    }
    else{//vai usar a variável temporária criada pelo llvm para guardar a operção intermédia
        //se chegar aqui quer dizer que o op1 foi obtido por cálculo intermédio, mas o op2 é variável ou valor
        op1_number = llvm_var_counter - 1;

        if(is_variable(op2)){//op2 variavel
            op2_number = load_variable_code_generator(op2, double_type);

        }
        else{//op2 valor
            //verificar o tipo de op2
            if(!strcmp(op2 -> id, "Minus") || !strcmp(op2 -> id, "Plus") || !strcmp(op2 -> id, "Not")){//se o op2 for unario
                unary_operator_code_generator(op2, double_type);
                op2_number = llvm_var_counter - 1;
            }
            else{
                op2_number = load_terminal(op2, double_type);
            }
        }
    }
    if(relational){
        if(double_type){//se for stored num double
            printf("\t%%%d = fcmp %s %s %%%d, %%%d\n", llvm_var_counter++, operation, type, op1_number, op2_number);
            printf("\t%%%d = zext i1 %%%d to i32\n", llvm_var_counter, llvm_var_counter - 1);
            llvm_var_counter++;
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, llvm_var_counter - 1);
            llvm_var_counter++;
        }
        else{
            printf("\t%%%d = icmp %s %s %%%d, %%%d\n", llvm_var_counter++, operation, type, op1_number, op2_number);
            printf("\t%%%d = zext i1 %%%d to i32\n", llvm_var_counter, llvm_var_counter - 1);
            llvm_var_counter++;
        }
    }
    else{
        printf("\t%%%d = %s %s %%%d, %%%d\n", llvm_var_counter++, operation, type, op1_number, op2_number);
    }
}



void operator_code_generator(ast_node_t *node, const char* assign_type) {
    bool terminais = false;
    ast_node_t *operator = node;


    if(!strcmp(operator -> first_child -> id, "ChrLit") || !strcmp(operator -> first_child -> id, "IntLit") || !strcmp(operator -> first_child -> id, "RealLit") || !strcmp(operator -> first_child -> id, "Id")){
        terminais = true;
    }
    else{
        //é operador
        operator_code_generator(operator -> first_child, assign_type);
    }

    if (!strcmp(operator -> id, "Add")) {
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "fadd", terminais, true, false);
        }
        else{
            binary_operator_code_generator(operator, "add", terminais, false, false);
        }

    } else if (!strcmp(operator -> id, "Sub")) {
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "fsub", terminais, true, false);
        }
        else{
            binary_operator_code_generator(operator, "sub", terminais, false, false);
        }
        
    } else if (!strcmp(operator -> id, "Mul")) {
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "fmul", terminais, true, false);
        }
        else{
            binary_operator_code_generator(operator, "mul", terminais, false, false);
        }

    } else if (!strcmp(operator -> id, "Div")) {
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "fdiv", terminais, true, false);
        }
        else{
            binary_operator_code_generator(operator, "sdiv", terminais, false, false);
        }

    } else if (!strcmp(operator -> id, "Mod")) {
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "frem", terminais, true, false);
        }
        else{
            binary_operator_code_generator(operator, "srem", terminais, false, false);
        }

    //} else if (!strcmp(operator -> id, "Or")) {

    // } else if (!strcmp(operator -> id, "And")) {

    // } else if (!strcmp(operator -> id, "BitWiseOr")) {

    // } else if (!strcmp(operator -> id, "BitWiseAnd")) {

    // } else if (!strcmp(operator -> id, "BitWiseXor")) {

    } else if (!strcmp(operator -> id, "Eq")) {
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "oeq", terminais, true, true);
        }
        else{
            binary_operator_code_generator(operator, "eq", terminais, false, true);
        }
    }
    else if(!strcmp(operator -> id, "Ne")){
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "une", terminais, true, true);
        }
        else{
            binary_operator_code_generator(operator, "ne", terminais, false, true);
        }
    }
    else if(!strcmp(operator -> id, "Le")){
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "ole", terminais, true, true);
        }
        else{
            binary_operator_code_generator(operator, "sle", terminais, false, true);
        }
    }
    else if(!strcmp(operator -> id, "Ge")){
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "oge", terminais, true, true);
        }
        else{
            binary_operator_code_generator(operator, "sge", terminais, false, true);
        }
    }
    else if(!strcmp(operator -> id, "Lt")){
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "olt", terminais, true, true);
        }
        else{
            binary_operator_code_generator(operator, "slt", terminais, false, true);
        }
    }
    else if(!strcmp(operator -> id, "Gt")){
        if(!strcmp(assign_type, "double")){
            binary_operator_code_generator(operator, "ogt", terminais, true, true);
        }
        else{
            binary_operator_code_generator(operator, "sgt", terminais, false, true);
        }
    }
    else if(!strcmp(operator -> id, "Plus")){
        if(!strcmp(assign_type, "double")){
            unary_operator_code_generator(operator, true);
        }
        else{
            unary_operator_code_generator(operator, false);
        }
    }
    else if(!strcmp(operator -> id, "Minus")){//se o Minus for o primeiro filho do operator
        //int aux;
        if(!strcmp(assign_type, "double")){
            unary_operator_code_generator(operator, true);
        }
        else{
            unary_operator_code_generator(operator, false);
        }
    }
    else if(!strcmp(operator -> id, "Not")){//
        if(!strcmp(assign_type, "double")){
            unary_operator_code_generator(operator, true);
        }
        else{
            unary_operator_code_generator(operator, false);
        }
    }
    //else if(!strcmp(operator -> id, "Comma")){
        //bruh corri com o clang para saber o que acontece quando se usa a comma, guess what, borra-se todo, só dá warnings e não faz nada...... Por favor testa tu, para ter a certeza.

    //}

    // ambos os filhos são operatorterminais ? sai : operator_code_generator(node -> ....)
    //printf("%# = add i32 t1, t2")
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
        if (!strcmp(return_value->id, "ChrLit")) {
            printf("\tret %s %e\n", llvm_return_type, (double)ord(return_value->token.value));
            return;
        }
        printf("\tret %s %e\n", llvm_return_type, strtod(return_value->token.value, NULL));

    } else {
        code_generator(return_value);
        printf("\tret %s %%%d\n", llvm_return_type, llvm_var_counter - 1);
    }
}

void declaration_code_generator(ast_node_t *node) {
//TODO Não sei como fazer quando isto acontece int a = 1 + 1;, sendo a global, no llvm ele soma o 1 + 1 e coloca 2, não sei fazer isso


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
            if(!strcmp(typespec -> id, "Double")){
                if (!strcmp(expr->id, "ChrLit")) {
                    printf("@%s = global %s %e\n", declarator_id->token.value, type_to_llvm(typespec->id), (double)ord(value));
                } else {
                    printf("@%s = global %s %e\n", declarator_id->token.value, type_to_llvm(typespec->id), strtod(value, NULL));
                }
            }
            else{
                if (!strcmp(expr->id, "ChrLit")) {
                    printf("@%s = global %s %d\n", declarator_id->token.value, type_to_llvm(typespec->id), ord(value));
                } else {
                    printf("@%s = global %s %s\n", declarator_id->token.value, type_to_llvm(typespec->id), value);
                }
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

        } else if(!strcmp(expr->id, "ChrLit") || !strcmp(expr->id, "RealLit") || !strcmp(expr->id, "IntLit")){

            printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));
            if(!strcmp(typespec -> id, "Double")){
                if (!strcmp(expr->id, "ChrLit")) {
                    printf("\tstore %s %e, %s* %%%d\n", type_to_llvm(typespec->id), (double)ord(value), type_to_llvm(typespec->id), llvm_var_counter - 1);
                } else {
                    printf("\tstore %s %e, %s* %%%d\n", type_to_llvm(typespec->id), strtod(value, NULL), type_to_llvm(typespec->id), llvm_var_counter - 1);
                }
            }
            else{
                if (!strcmp(expr->id, "ChrLit")) {
                    printf("\tstore %s %d, %s* %%%d\n", type_to_llvm(typespec->id), ord(value), type_to_llvm(typespec->id), llvm_var_counter - 1);
                } else {
                    printf("\tstore %s %s, %s* %%%d\n", type_to_llvm(typespec->id), value, type_to_llvm(typespec->id), llvm_var_counter - 1);
                }
            }
        }
        else{
            operator_code_generator(expr, type_to_llvm(typespec -> id));
            printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(typespec->id), llvm_var_counter - 2, type_to_llvm(typespec->id), llvm_var_counter - 1);
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

    } else if(!strcmp(rhs->id, "ChrLit") || !strcmp(rhs->id, "RealLit") || !strcmp(rhs->id, "IntLit")){

        // Find symbol in the current function table (if there is no symbol then it means that it is globally declared)
        const char *value = rhs->token.value;
        bool global = false;

        sym_t *lhs_sym = find_symbol(current_table->symlist, lhs->token.value);
        if(!lhs_sym){
            lhs_sym = find_symbol(symtab_list -> symlist, lhs -> token.value);
            global = true;
        }
        
        if(!strcmp(lhs_sym -> type, "double")){//estamos a atribuir algum valor a double
            if (!strcmp(rhs->id, "ChrLit")) {
                if (global)
                    printf("\tstore %s %e, %s* @%s\n", type_to_llvm(node->annotation.type), (double)ord(value), type_to_llvm(node->annotation.type), lhs->token.value);
                else
                    printf("\tstore %s %e, %s* %%%d\n", type_to_llvm(node->annotation.type), (double)ord(value), type_to_llvm(node->annotation.type), lhs_sym->llvm_var);

            } else {
                if (global)
                    printf("\tstore %s %e, %s* @%s\n", type_to_llvm(node->annotation.type), strtod(value, NULL), type_to_llvm(node->annotation.type), lhs->token.value);
                else
                    printf("\tstore %s %e, %s* %%%d\n", type_to_llvm(node->annotation.type), strtod(value, NULL), type_to_llvm(node->annotation.type), lhs_sym->llvm_var);
            }
        }
        else{
            if (!strcmp(rhs->id, "ChrLit")) {
                if (global)
                    printf("\tstore %s %d, %s* @%s\n", type_to_llvm(node->annotation.type), ord(value), type_to_llvm(node->annotation.type), lhs->token.value);
                else
                    printf("\tstore %s %d, %s* %%%d\n", type_to_llvm(node->annotation.type), ord(value), type_to_llvm(node->annotation.type), lhs_sym->llvm_var);

            } else {
                if (global)
                    printf("\tstore %s %s, %s* @%s\n", type_to_llvm(node->annotation.type), value, type_to_llvm(node->annotation.type), lhs->token.value);
                else
                    printf("\tstore %s %s, %s* %%%d\n", type_to_llvm(node->annotation.type), value, type_to_llvm(node->annotation.type), lhs_sym->llvm_var);
            }
        }
    }
    else{
        operator_code_generator(rhs, type_to_llvm(lhs -> annotation.type));//passar o operador e o tipo da variável onde vai ficar guardado
        sym_t *lhs_sym = find_symbol(current_table->symlist, lhs->token.value);
        if(!lhs_sym){//global
            printf("\tstore %s %%%d, %s* @%s\n", type_to_llvm(node->annotation.type), llvm_var_counter - 1, type_to_llvm(node->annotation.type), lhs->token.value);
        }
        else{//local
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(node->annotation.type), llvm_var_counter - 1, type_to_llvm(node->annotation.type), lhs_sym -> llvm_var);
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

    if(!strcmp(node -> id, "Call")){
        call_code_generator(node);
    }

    if(!strcmp(node -> id, "While")){
        while_code_generator(node);
    }

    if(!strcmp(node -> id, "If")){
        if_code_generator(node);
    }

    if (node->next_sibling != NULL) {
        code_generator(node->next_sibling);
    }
}
