
int a;
double b;

// we dont do this here!
//int a = 1 + 1;

int int_global_var(void) {
    int x = 1, y = 2;
    int z = a;

    a = x;
    a = 5 + 4;
    a = x + y;

    return a;
}

double test2(void) {
    double d = b;
    return 0;
}
double double_global_var(void) {
    double x = 1.4e12, y = 15.12e35;
    double d = b;
    double dd = a;

    b = x;
    b = 1.24 + 15.25;
    b = x + y;
    return b;
}

int test(void) {
    a = 1 + 1;
    putchar(a);
    return 0;
}

int main(void) {
    putchar(int_global_var());
    double_global_var();
    return 0;
}