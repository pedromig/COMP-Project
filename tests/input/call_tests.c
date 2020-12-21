int fabio = 80;
// int renata = fabio +2;

int a(void){
    putchar(fabio +2);
    putchar('\n');
    putchar(fabio);
    putchar('\n');
    fabio = fabio + 5;
    return fabio;
    return 5;
    return 'a';
}

int b(void){
    putchar(fabio);
    putchar('\n');
}

void c(void){

}

void d(int a){
    return;
    return;
    return;
    return;
    fabio = 20;
}

int e(int a){
    putchar(a);
    putchar('\n');
    a = a + 5;
    putchar(a);
    putchar('\n');
    return a;
}

double f(int a){

}

int main(void){
    d(5);
    int var;
    double d_var;

    var = a();
    var = b();
    //var = c();
    d(1);
    c();
    d_var = e(100);
    d_var = f(2);
    //d_var = d(2);
    a();
    b();
    c();
    d('a');
    var = e(100);
    putchar(var);
    f('a');
}