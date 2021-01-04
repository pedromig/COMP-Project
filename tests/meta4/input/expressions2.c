int yaya = 52;

void print_number(int n) {
    if (n == 0) putchar('0');
    int u = 1;
    while (n / u) u = u * 10;
    while (u > 1) {
        putchar('0' + n / (u / 10) - n / u * 10);
        u = u / 10;
    }
}

int main(void) {
    int expr = 3 * 42 >= 84;
    print_number(expr);
    putchar('\n');
    expr = (43 * 1 / 3) + 98 - 12 + (-(-(-(11))));
    print_number(expr);
    print_number(expr);
    print_number(expr);
    putchar('\n');
    print_number(expr);
    putchar('\n');
    expr = expr % 2;
    expr = expr % 1;
    print_number(expr);
    putchar('\n');
    expr = expr % 1;
    expr = 9999;
    print_number(expr != 12);
    print_number(expr < 111);
    print_number(expr <= 111);
    print_number(expr > 111);
    print_number(expr == 111);
    print_number(expr > 1 && expr >= 2 || 42);
    print_number(!(expr <= 111) || 1);
    putchar('\n');
    print_number(expr & 1111);
    putchar('\n');
    print_number(expr | 3242);
    putchar('\n');
    print_number(expr ^ 010101);
    putchar('\n');
    
}