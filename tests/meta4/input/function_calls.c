char a(char x) {
    return x;
}

short b(short x) {
    return x;
}

int c(int x) {
    return x;
}

double d(double x) {
    return x;
}

int e(int x, short y) {
    return x + y + c(12);
}

double f(double x, char y) {
    return d(x) + a(y);
}

double g(double x, double y) {
    return x * y + b(10);
}

double h(void) {
    return g(g(c(1), d(1.7)), f(f(1.6, 'A'), a('X')));
}

int main(void) {
    g(c(1), d(1.7));
    g(g(c(1), d(1.7)), f(f(1.6, 'A'), a('X')));
    return 0;
}