

char f1(void) {
    return 'A';
}

char f2(void) {
    return 'B';
}

short f3(void) {
    return 1;
}

short f4(void) {
    return 2;
}

int f5(void) {
    return 1;
}

int f6(void) {
    return 2;
}

double f7(void) {
    return 1.0;
}

double f8(void) {
    return 2.0;
}

int comma_expr_tests(void) {
    int a = 1, b = 2, x = 3;
    if ((a = 1, x = 2))
        ;
    if ((5, 10))
        ;
    if ((f1(), f2()))
        ;
    if (a, x)
        ;
    if ((a = 2, b = 4))
        ;
    if (((f1(), a = 2, x = f2(), b = 3, 1)))
        ;

    while ((a = 1, x = 2))
        ;
    while ((5, 10))
        ;
    while ((f1(), f2()))
        ;
    while (a, x)
        ;
    while ((a = 2, b = 4))
        ;
    while (((f1(), a = 2, x = f2(), b = 3, 1)))
        ;
    return 0;
}

char comma_char_tests(void) {
    char a = 1, x = 2;
    char b = (5, 10);
    char c = (f1(), f2());
    char d = (a, b);
    char e = (a = 2, b = 4);
    char f = (f1(), a = 2, x = f2(), b, 3);
    return (a, f1(), c, a = 2, 10);
}

short comma_short_tests(void) {
    short a = 1, x = 2;
    short b = (5, 10);
    short c = (f3(), f4());
    short d = (a, b);
    short e = (a = 2, b = 4);
    short f = (f3(), a = 2, x = f4(), b, 3);
    return (a, f3(), c, a = 2, 10);
}

int comma_int_tests(void) {
    int a = 1, x = 2;
    int b = (5, 10);
    int c = (f5(), f6());
    int d = (a, b);
    int e = (a = 2, b = 4);
    int f = (f5(), a = 2, x = f6(), b, 3);
    return (a, f5(), c, a = 2, 10);
}

double comma_double_tests(void) {
    double a = 1, x = 2;
    double b = (5.0, 10.0);
    double c = (f7(), f8());
    double d = (a, b);
    double e = (a = 2.1, b = 4.0);
    double f = (f7(), a = 2, x = f8(), b, 3.2);
    return (a, f7(), c, a = 2.0, 10.102);
}

int main(void) {
    double a = 1.2e19;
    double x = 0.0e20;

    putchar(comma_char_tests());
    putchar(comma_short_tests());
    putchar(comma_int_tests());
}
