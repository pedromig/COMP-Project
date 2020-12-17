#include "codegen.h"

// Function Definition Auxiliary Variables
static int llvm_var_counter;
static const char *llvm_return_type;
static bool llvm_has_return_keyword;
static int current_label;


int load_terminal(ast_node_t* node, bool double_type);

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
    //to know the label we are in
    //current_label = llvm_var_counter;
    current_label = 0;
    // Keep one space between parameters and declared variables
    ++llvm_var_counter;
    printf(")");

    // Open function definition body
    current_table = find_table(symtab_list, declarator->token.value);
    printf(" {\n");

    // Initialize function parameters
    param = param_list->first_child;
    sym_t* sym;
    for (int i = 0; i < llvm_var_counter && param; ++i) {

        if (!strcmp(param->first_child->id, "Char") || !strcmp(param->first_child->id, "Short") || !strcmp(param->first_child->id, "Int")) {
            printf("\t%%%d = alloca i32\n", llvm_var_counter);
            printf("\tstore i32 %%%d, i32* %%%d\n", i, llvm_var_counter++);
        } else if (!strcmp(param->first_child->id, "Double")) {
            printf("\t%%%d = alloca double\n", llvm_var_counter);
            printf("\tstore double %%%d, double* %%%d\n", i, llvm_var_counter++);
        }
        //TODO atribuir na tabela de símbolos ao parametro atual o número que lhe corresponde dentro da função
        if(strcmp(param->first_child->id, "Void")){
            sym = find_symbol(current_table -> symlist, param -> first_child -> next_sibling -> token.value);
            sym -> llvm_var = llvm_var_counter - 1;
        }
        param = param->next_sibling;
    }

    // Return type settings
    llvm_return_type = type_to_llvm(typespec->id);
    llvm_has_return_keyword = false;

    // Generate function body itself
    code_generator(func_body->first_child, false);

    // Default return type
    insert_default_return(llvm_return_type, llvm_has_return_keyword);

    // Close Function Body
    printf("}\n");
    current_table = symtab_list;
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

int call_code_generator(ast_node_t* node, bool double_type){
    ast_node_t* call_id = node -> first_child;
    int result = -1;
    if(!strcmp(call_id -> token.value, "getchar")){
        printf("\t%%%d = call i32 (...) @getchar()\n", llvm_var_counter);
        result = llvm_var_counter++;
        if(double_type){
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, result);
            result = llvm_var_counter++;
        }
    }
    else if(!strcmp(call_id -> token.value, "putchar")){
        result = load_terminal(call_id -> next_sibling, false);
        printf("\t%%%d = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %%%d)\n", llvm_var_counter, result);
        result = llvm_var_counter++;
        if(double_type){
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, result);
            result = llvm_var_counter++;
        }
    }
    else{
        symtab_t* table = find_table(symtab_list, call_id -> token.value);
        ast_node_t* params_call = call_id -> next_sibling;
        sym_t* params_table = table -> symlist -> next;
        bool double_type;
        //printf("%s\n", table -> symlist -> next ->id);
        int n = 0, i = 0;
        while(params_call){
            n++;
            params_call = params_call -> next_sibling;
        }

        params_call = call_id -> next_sibling;
        int indexs[n];

        while(params_call){
            double_type = false;
            if(!strcmp(type_to_llvm(params_table -> type), "double") && strcmp(type_to_llvm(params_call -> annotation.type), "double"))
                double_type = true;
            indexs[i] = load_terminal(params_call, double_type);
            i++;
            params_table = params_table -> next;
            params_call = params_call -> next_sibling;
        }
        params_table = table -> symlist -> next;
        printf("\t%%%d = call %s @%s(", llvm_var_counter++, type_to_llvm(call_id -> annotation.type), call_id -> token.value);
        result = llvm_var_counter - 1;
        if(n >0){
            for(i = 0; i < n - 1; i++){
                printf("%s %%%d, ", type_to_llvm(params_table -> type), indexs[i]);
                params_table = params_table -> next;
            }
            printf("%s %%%d", type_to_llvm(params_table -> type), indexs[i]);
        }
        printf(")\n");
        if(double_type && strcmp(type_to_llvm(call_id -> annotation.type), "double")){
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, result);
            result = llvm_var_counter++;
        }
    }
    return result;
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
    else if(!strcmp(node -> id, "Call")){
        number = call_code_generator(node, double_type);
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

int unary_operator_code_generator(ast_node_t* node, bool double_type){
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
        printf("\t%%%d = icmp ne i32 %%%d, %d\n", llvm_var_counter++, aux, 0);
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

    return llvm_var_counter - 1;
}

bool is_terminal(ast_node_t* node){
    if(!strcmp(node -> id, "Id") || !strcmp(node -> id, "ChrLit") || !strcmp(node -> id, "IntLit") || !strcmp(node -> id, "Short") || !strcmp(node -> id, "RealLit") || !strcmp(node -> id, "Call"))
        return true; 
    return false;
}

void arithmetic_operator_code_generator(const char* operation, const char* type, int op1_number, int op2_number){
    printf("\t%%%d = %s %s %%%d, %%%d\n", llvm_var_counter++, operation, type, op1_number, op2_number);
}

void relational_operator_code_generator(const char* operation, const char* type, int op1_number, int op2_number, bool double_type){
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

int binary_operator_code_generator(ast_node_t* node, const char* operation, int op1_number_inter, int op2_number_inter, bool double_type, bool relational){
    ast_node_t* operator = node;
    ast_node_t* op1 = operator -> first_child;
    ast_node_t* op2 = op1 -> next_sibling;
    int op1_number = -1, op2_number = -1;
    const char* type = double_type ? "double" : "i32";

    //ambos terminais
    if(is_terminal(op1) && is_terminal(op2)){
        op1_number = load_terminal(op1, double_type);
        op2_number = load_terminal(op2, double_type);
    }
    //op2 terminal
    else if(!is_terminal(op1) && is_terminal(op2)){
        op1_number = op1_number_inter;
        op2_number = load_terminal(op2, double_type);
    }
    //op1 terminal
    else if(is_terminal(op1) && !is_terminal(op2)){
        op1_number = load_terminal(op1, double_type);
        op2_number = op2_number_inter;
    }
    //nenhum terminal
    else if(!is_terminal(op1) && !is_terminal(op2)){
        op1_number = op1_number_inter;
        op2_number = op2_number_inter;
    }
    else{
        printf("ERRO binary_operator_code_generator\n");
    }
    //print da operação
    if(relational)
        relational_operator_code_generator(operation, type, op1_number, op2_number, double_type);
    else
        arithmetic_operator_code_generator(operation, type, op1_number, op2_number);

    return llvm_var_counter - 1;
}

int bitwise_operator_code_generator(ast_node_t* node, const char* operation, int op1_number_inter, int op2_number_inter, bool double_type){
    ast_node_t* operator = node;
    ast_node_t* op1 = operator -> first_child;
    ast_node_t* op2 = op1 -> next_sibling;
    int op1_number = -1, op2_number = -1, aux;

    if(is_terminal(op1) && is_terminal(op2)){
        op1_number = load_terminal(op1, false);
        op2_number = load_terminal(op2, false);
    }
    //op2 terminal
    else if(!is_terminal(op1) && is_terminal(op2)){
        op1_number = op1_number_inter;
        op2_number = load_terminal(op2, false);
    }
    //op1 terminal
    else if(is_terminal(op1) && !is_terminal(op2)){
        op1_number = load_terminal(op1, false);
        op2_number = op2_number_inter;
    }
    //nenhum terminal
    else if(!is_terminal(op1) && !is_terminal(op2)){
        op1_number = op1_number_inter;
        op2_number = op2_number_inter;
    }
    else{
        printf("ERRO bitwise_operator_code_generator\n");
    }

    printf("\t%%%d = %s i32 %%%d, %%%d\n", llvm_var_counter++, operation, op1_number, op2_number);
    aux = llvm_var_counter - 1;
    if(double_type)
        printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter++, aux);
    return llvm_var_counter - 1;
}

int and_logical_operator_code_generator(int op1_number_inter, int op2_number_inter){
    // int temp_label, temp_cmp, final_label;
    // //%x = icmp ne op1,0
    // printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, op1_number_inter);//8 -> 9
    // //temp_label = x + 1 
    // temp_label = llvm_var_counter;//9
    // //br i1 %x, label temp_label, label temp_label + 2
    // printf("\tbr i1 %%%d, label %%%d, label %%%d\n", llvm_var_counter - 1, temp_label, temp_label + 2);
    // //;<label>:temp_label:
    // printf("; <label>:%d:\n", llvm_var_counter++);//9 -> 10
    // //%temp_label + 1 = icmp ne op2, 0
    // printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, op2_number_inter);//10 -> 11
    // temp_cmp = llvm_var_counter - 1;//10
    // //br temp_label + 2
    // printf("\tbr label %%%d\n", llvm_var_counter);//11 -> 11
    // //;<label>:temp_label + 2:
    // printf("; <label>:%d:\n", llvm_var_counter++);//11 -> 12
    // final_label = llvm_var_counter - 1;
    // //%temp_label + 3 = phi i1 [false, current_label], [temp_label + 1, temp_label]
    // printf("\t%%%d = phi i1 [ false, %%%d ], [ %%%d, %%%d ]\n", llvm_var_counter++, current_label, temp_cmp, temp_label);//12 -> 13
    // //%temp_label + 4 = zext i1 %temp_label + 3 to i32
    // printf("\t%%%d = zext i1 %%%d to i32\n", llvm_var_counter, llvm_var_counter - 1);//13 -> 13
    // current_label = final_label;
    // return llvm_var_counter++;//13 -> 14;
    int ini_label, first_label, second_label, temp_cmp;
    ini_label = current_label++;
    first_label = current_label++;
    second_label = current_label++;
    printf("\tbr label %%label%d\n", ini_label);
    printf("label%d:\n", ini_label);
    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, op1_number_inter);//8 -> 9
    printf("\tbr i1 %%%d, label %%label%d, label %%label%d\n", llvm_var_counter - 1, first_label, second_label);
    printf("label%d:\n", first_label);
    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, op2_number_inter);//10 -> 11
    temp_cmp = llvm_var_counter - 1;//10
    printf("\tbr label %%label%d\n", second_label);
    printf("label%d:\n", second_label);
    printf("\t%%%d = phi i1 [ false, %%%d ], [ %%%d, %%%d ]\n", llvm_var_counter++, ini_label, temp_cmp, first_label);//12 -> 13
    printf("\t%%%d = zext i1 %%%d to i32\n", llvm_var_counter, llvm_var_counter - 1);//13 -> 13
    return llvm_var_counter++;
}

int logical_operator_code_generator(ast_node_t* node, int op1_number_inter, int op2_number_inter, const char* operation){
    ast_node_t* operator = node;
    ast_node_t* op1 = operator -> first_child;
    ast_node_t* op2 = op1 -> next_sibling;
    int op1_number = -1, op2_number = -1;

    if(is_terminal(op1) && is_terminal(op2)){
        op1_number = load_terminal(op1, false);
        op2_number = load_terminal(op2, false);
    }
    //op2 terminal
    else if(!is_terminal(op1) && is_terminal(op2)){
        op1_number = op1_number_inter;
        op2_number = load_terminal(op2, false);
    }
    //op1 terminal
    else if(is_terminal(op1) && !is_terminal(op2)){
        op1_number = load_terminal(op1, false);
        op2_number = op2_number_inter;
    }
    //nenhum terminal
    else if(!is_terminal(op1) && !is_terminal(op2)){
        op1_number = op1_number_inter;
        op2_number = op2_number_inter;
    }
    else{
        printf("ERRO logical_operator_code_generator\n");
    }

    int ini_label, first_label, second_label, temp_cmp;
    ini_label = current_label++;
    first_label = current_label++;
    second_label = current_label++;
    printf("\tbr label %%label%d\n", ini_label);
    printf("label%d:\n", ini_label);
    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, op1_number_inter);//8 -> 9
    printf("\tbr i1 %%%d, label %%label%d, label %%label%d\n", llvm_var_counter - 1, first_label, second_label);
    printf("label%d:\n", first_label);
    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, op2_number_inter);//10 -> 11
    temp_cmp = llvm_var_counter - 1;//10
    printf("\tbr label %%label%d\n", second_label);
    printf("label%d:\n", second_label);
    printf("\t%%%d = phi i1 [ %s, %%label%d ], [ %%%d, %%label%d ]\n", llvm_var_counter++, operation, ini_label, temp_cmp, first_label);//12 -> 13
    printf("\t%%%d = zext i1 %%%d to i32\n", llvm_var_counter, llvm_var_counter - 1);//13 -> 13
    return llvm_var_counter++;
}

bool is_logical(ast_node_t* node){
    if(!strcmp(node -> id, "And") || !strcmp(node -> id, "Or"))
        return true;
    return false;
}

int operator_code_generator(ast_node_t *node, const char* assign_type, bool logical){
    ast_node_t* operator = node;
    ast_node_t* op1 = node -> first_child;
    ast_node_t* op2 = op1 -> next_sibling;
    bool double_type = !strcmp(assign_type, "double") ? true: false;
    const char* operation;
    int result = -1, op1_number = -1, op2_number = -1;


    bool tmp_logical = logical;
    bool cast = false;
    if(is_logical(operator) && !tmp_logical){
        tmp_logical = true;
        cast = double_type ? true : false;
    }

    //atualizar double_type por causa dos logical
    double_type = tmp_logical ? false : double_type;


    if(!is_terminal(op1)){
        op1_number = operator_code_generator(op1, assign_type, tmp_logical);
    }

    if(op2 && !is_terminal(op2)){
        op2_number = operator_code_generator(op2, assign_type, tmp_logical);
    }

    if(!strcmp(operator -> id, "Add")){
        operation = double_type ? "fadd" : "add";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, false);
    }
    else if(!strcmp(operator -> id, "Sub")){
        operation = double_type ? "fsub" : "sub";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, false);
    }
    else if(!strcmp(operator -> id, "Mul")){
        operation = double_type ? "fmul" : "mul";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, false);
    }
    else if(!strcmp(operator -> id, "Div")){
        operation = double_type ? "fdiv" : "sdiv";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, false);
    }
    else if(!strcmp(operator -> id, "Sub")){
        operation = double_type ? "fsub" : "sub";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, false);
    }
    else if(!strcmp(operator -> id, "Mod")){
        operation = double_type ? "frem" : "srem";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, false);
    }
    else if (!strcmp(operator -> id, "Eq")) {
        operation = double_type ? "oeq" : "eq";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, true);
    }
    else if(!strcmp(operator -> id, "Ne")){
        operation = double_type ? "une" : "ne";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, true);
    }
    else if(!strcmp(operator -> id, "Le")){
            operation = double_type ? "ole" : "sle";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, true);
    }
    else if(!strcmp(operator -> id, "Ge")){
        operation = double_type ? "oge" : "sge";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, true);
    }
    else if(!strcmp(operator -> id, "Lt")){
        operation = double_type ? "olt" : "slt";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, true);
    }
    else if(!strcmp(operator -> id, "Gt")){
        operation = double_type ? "ogt" : "sgt";
        result = binary_operator_code_generator(operator, operation, op1_number, op2_number, double_type, true);
    }
    else if(!strcmp(operator -> id, "Not")){
        result = unary_operator_code_generator(operator, double_type);
    }
    else if(!strcmp(operator -> id, "Minus")){
        result = unary_operator_code_generator(operator, double_type);
    }
    else if(!strcmp(operator -> id, "Plus")){
        result = unary_operator_code_generator(operator, double_type);
    }
    else if(!strcmp(operator -> id, "BitWiseAnd")){
        operation = "and";
        result = bitwise_operator_code_generator(operator, operation, op1_number, op2_number, double_type);
    }
    else if(!strcmp(operator -> id, "BitWiseOr")){
        operation = "or";
        result = bitwise_operator_code_generator(operator, operation, op1_number, op2_number, double_type);
    }
    else if(!strcmp(operator -> id, "BitWiseXor")){
        operation = "xor";
        result = bitwise_operator_code_generator(operator, operation, op1_number, op2_number, double_type);
    }
    //comma?
    //and
    else if(!strcmp(operator -> id, "And")){
        result = logical_operator_code_generator(operator, op1_number, op2_number, "false");
        if(cast){
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, result);
            result = llvm_var_counter++;
        }
    }
    //não esquecer verificar cast
    //or
    else if(!strcmp(operator -> id, "Or")){
        result = logical_operator_code_generator(operator, op1_number, op2_number, "true");
         if(cast){
            printf("\t%%%d = sitofp i32 %%%d to double\n", llvm_var_counter, result);
            result = llvm_var_counter++;
        }
    }
    return result;
}
//????????????????????????????????????????????????????????????????????????????????????????
//?coloquei isto a ir para operadores e call por aqui
//!falar com o Pedro para esclarecer dúvida
//????????????????????????????????????????????????????????????????????????????????????????
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
        else if(!strcmp(return_value->id, "IntLit") || !strcmp(return_value->id, "Short")){
            printf("\tret %s %s\n", llvm_return_type, return_value->token.value);
        }
        else if(!strcmp(return_value->id, "Call")){
            int result = call_code_generator(return_value, false);
            printf("\tret %s %%%d\n", llvm_return_type, result);
        }
        else{
            int result = operator_code_generator(return_value, "i32", false);
            printf("\tret %s %%%d\n", llvm_return_type, result);
        }

    } else if (!strcmp(llvm_return_type, "double")) {
        if (!strcmp(return_value->id, "ChrLit")) {
            printf("\tret %s %e\n", llvm_return_type, (double)ord(return_value->token.value));
            return;
        }
        else if(!strcmp(return_value->id, "IntLit") || !strcmp(return_value->id, "Short") || !strcmp(return_value->id, "RealLit")){
             printf("\tret %s %e\n", llvm_return_type, strtod(return_value->token.value, NULL));
        }
        else if(!strcmp(return_value->id, "Call")){
            int result = call_code_generator(return_value, true);
            printf("\tret %s %%%d\n", llvm_return_type, result);
        }
        else{
            int result = operator_code_generator(return_value, "double", false);
            printf("\tret %s %%%d\n", llvm_return_type, result);
        }
        

    } else {//!este caso é para quê?
        code_generator(return_value, false);
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
        else if(!strcmp(expr -> id, "Call")){
            bool double_type = false;
            if(!strcmp(type_to_llvm(typespec->id), "double") && strcmp(type_to_llvm(expr -> annotation.type), "double"))
                double_type = true;

            int result = call_code_generator(expr, double_type);
            printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(typespec->id), result, type_to_llvm(typespec->id), llvm_var_counter - 1);

        }
        else{
            int result;
            result = operator_code_generator(expr, type_to_llvm(typespec -> id), false);
            printf("\t%%%d = alloca %s\n", llvm_var_counter++, type_to_llvm(typespec->id));
            //printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(typespec->id), llvm_var_counter - 2, type_to_llvm(typespec->id), llvm_var_counter - 1);
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(typespec->id), result, type_to_llvm(typespec->id), llvm_var_counter - 1);
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
    else if(!strcmp(rhs -> id, "Call")){
        bool double_type = false;
        if(!strcmp(type_to_llvm(lhs -> annotation.type), "double") && strcmp(type_to_llvm(rhs -> annotation.type), "double"))
            double_type = true;
        int result = call_code_generator(rhs, double_type);
        sym_t *lhs_sym = find_symbol(current_table->symlist, lhs->token.value);
        if(!lhs_sym){//global
            printf("\tstore %s %%%d, %s* @%s\n", type_to_llvm(node->annotation.type), result, type_to_llvm(node->annotation.type), lhs->token.value);
        }
        else{//local
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(node->annotation.type), result, type_to_llvm(node->annotation.type), lhs_sym -> llvm_var);
        }

    }
    else{
        int result;
        result = operator_code_generator(rhs, type_to_llvm(lhs -> annotation.type), false);//passar o operador e o tipo da variável onde vai ficar guardado
        sym_t *lhs_sym = find_symbol(current_table->symlist, lhs->token.value);
        if(!lhs_sym){//global
            //printf("\tstore %s %%%d, %s* @%s\n", type_to_llvm(node->annotation.type), llvm_var_counter - 1, type_to_llvm(node->annotation.type), lhs->token.value);
            printf("\tstore %s %%%d, %s* @%s\n", type_to_llvm(node->annotation.type), result, type_to_llvm(node->annotation.type), lhs->token.value);
        }
        else{//local
            //printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(node->annotation.type), llvm_var_counter - 1, type_to_llvm(node->annotation.type), lhs_sym -> llvm_var);
            printf("\tstore %s %%%d, %s* %%%d\n", type_to_llvm(node->annotation.type), result, type_to_llvm(node->annotation.type), lhs_sym -> llvm_var);
        }
        
    }
}

void while_code_generator(ast_node_t *node) { //recebe o no do while
    ast_node_t* condition = node -> first_child;
    ast_node_t* instructions = condition -> next_sibling;
    int condition_result = -1;
    int first_label, second_label;
    //expression = node -> first_child -----> expression dentro do while
    //obter o valor da avaliação da condição do while
    if(is_terminal(condition)){
        condition_result = load_terminal(condition, false);
    }
    else if(!strcmp(condition -> id, "Call")){
        condition_result = call_code_generator(condition, false);
    }
    else{
        condition_result = operator_code_generator(condition, "i32", false);
    }

    //ver se verifica a condição pelo menos a primeira vez
    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, condition_result);
    first_label = current_label++;
    second_label = current_label++;
    printf("\tbr i1 %%%d, label %%label%d, label %%label%d\n", llvm_var_counter - 1, first_label, second_label);
    printf("label%d:\n", first_label);

    code_generator(instructions, false);
    //avaliar a condição outra vez
    if(is_terminal(condition)){
        condition_result = load_terminal(condition, false);
    }
    else if(!strcmp(condition -> id, "Call")){
        condition_result = call_code_generator(condition, false);
    }
    else{
        condition_result = operator_code_generator(condition, "i32", false);
    }

    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, condition_result);
    printf("\tbr i1 %%%d, label %%label%d, label %%label%d\n", llvm_var_counter - 1, first_label, second_label);

    //print second_label
    printf("label%d:\n", second_label);

}

void if_code_generator(ast_node_t *node) { //recebe o no do if
    ast_node_t* condition = node -> first_child;
    ast_node_t* instructions_true = condition -> next_sibling;
    ast_node_t* instructions_false = instructions_true -> next_sibling;
    int condition_result = -1;
    int first_label, second_label, third_label;

    //expression_code_genrator(expression)
    //obter o valor da avaliação da condição do while
    if(is_terminal(condition)){
        condition_result = load_terminal(condition, false);
    }
    else if(!strcmp(condition -> id, "Call")){
        condition_result = call_code_generator(condition, false);
    }
    else{
        condition_result = operator_code_generator(condition, "i32", false);
    }

    printf("\t%%%d = icmp ne i32 %%%d, 0\n", llvm_var_counter++, condition_result);
    first_label = current_label++;
    second_label = current_label++;
    third_label = current_label++;
    printf("\tbr i1 %%%d, label %%label%d, label %%label%d\n", llvm_var_counter - 1, first_label, second_label);
    // statlist_true = expression-> next_sibling ---------> statlist se for true
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não
    printf("label%d:\n", first_label);
    code_generator(instructions_true, true);
    printf("\tbr label %%label%d\n", third_label);

    printf("label%d:\n", second_label);
    code_generator(instructions_false, false);
    printf("\tbr label %%label%d\n", third_label);

    printf("label%d:\n", third_label);

    // statilist_false = statlist_true-> next_sibling --------> statlist se for false
    //pode ser apenas um statement --> verificar se o id deste node é StatList ou não
}

void code_generator(ast_node_t *node, bool is_if) {
    if (!node) return;

    if (!strcmp(node->id, "Program")) {
        printf("declare i32 @putchar(...)\n");
        printf("declare i32 @getchar(...)\n\n");
        code_generator(node->first_child, false);
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
    //está aqui para o caso de se fazer uma call sem ser num store, numa declaration ou return
    if(!strcmp(node -> id, "Call")){
        call_code_generator(node, false);
    }

    if(!strcmp(node -> id, "While")){
        while_code_generator(node);
    }

    if(!strcmp(node -> id, "If")){
        if_code_generator(node);
    }
    if(!strcmp(node -> id, "StatList")){
        code_generator(node -> first_child, false);
    }

    if (node->next_sibling != NULL && !is_if) {
        code_generator(node->next_sibling, false);
    }
}
