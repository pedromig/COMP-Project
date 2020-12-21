void print_number(int n) {
    int u;
    if (n == 0) {
        putchar('0');
    } 
    else {
        if (n < 0) {
            putchar('-');
            n = -n;
        }
        u = 1;
        while (n / u) u = u * 10;
        while (u > 1) {
            putchar('0' + n / (u / 10) - n / u * 10);
            u = u / 10;
        }
    }
    putchar('\n');
}

int return1(void) {
    putchar('?');
    return 1;
}

int main(void) {
    int a = 1, b = 3, c = 4, d = 2;
    int e = 2;
    int f, g, h;
    f = e * 12;
    g = a * b;
    h = 52;

    print_number(h / g);
    print_number(5 * e / 5);
    print_number(5 * (98 - 4));
    print_number(6 * g - 42);
    print_number((6 * g - 42));
    print_number(5 * (98 - 4) / (6 * g - 42));
    print_number((5 * e / 5) + (23) - 5 * (98 - 4) / (6 * g - 42));
    print_number(((((2)) + b)) * ((5)));
    print_number((d) + (17 * 2 - 30) * (5) + 2 - (8 / f) * 4);
    print_number((67 + 2 * 3 - 67 + 2 / 1 - 7));
    print_number(2 * 3 * 4 / 8 - 5 / 2 * 4 + 6 + 0 / 3 / 7 & 2);
    print_number(5 + 0);
    print_number(((2 + 3) * (1 + 2)) * 4 & 2);
    print_number(((2 + 3) * (1 + 2)) * 4 & -2);
    print_number((a) + (c * b - g) * (e) + a - (c / d) * b);
    print_number((a) + (c * e - g) * (23) + h - (g / h) * f);
    print_number((b) + e + (23 & 1 | 42) - (a / b) * c);
    print_number(e * !e || 1);
    print_number(e * !e && 1);
    print_number((a) + (c || 0 - !g) * (23) && (h = (32 >= 21)) - (g + (23 && !(return1()))) * f);
    print_number((((e * !e || 1) + (e * !e && 1)) || 42) && (+(c || 0 - !(g || g && g)) * (2 * 45 & 3) && (h = 32) - (g / (2 | 3 && return1())) ^ f));
    print_number((a < 0) && return1());
    print_number((a > 0) && return1());
    print_number(h = (21 != 21));
}