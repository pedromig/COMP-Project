void print_equality(double a, double b) {
    if (a == b) {
        putchar('y');
        putchar('e');
        putchar('s');
    } else {
        putchar('n');
        putchar('o');
    }
    putchar('\n');
}

int main(void) {
    double a = 1.2, b = 1.3, c = 1.4, d = 1.2;
    double e = 1.7976931348623157e+2;
    double f, g, h;
    f = e * 12;
    g = a * b;
    h = 52;
    double i = h / g;
    double j = (5 * e / 5) + (23) - 5 * (98 - 4) / (6 * g - 42);
    double k = ((((2)) + b)) * ((5));
    double l = (d) + (17 * 2 - 30) * (5) + 2 - (8 / f) * 4;
    double m = (67 + 2 * 3 - 67 + 2 / 1 - 7);
    double n = 2 * 3 * 4 / 8 - 5 / 2 * 4 + 6 + 0 / 3 / 7 & 2;
    double o = 5.0005 + 0.0095;
    double p = 5.0005 + 0.0095;
    double q = ((2 + 3) * (1 + 2)) * 4 & 2, r = ((2 + 3) * (1 + 2)) * 4 & -2;
    double s = (a) + (c * e - g) * (i) + k - (m / o) * q;
    double t = (a) + (c * e - g) * (i) + k - (m / o) * q;
    double u = (b) + l + (23 & 1 | 42) - (n / p) * s;

    putchar('a');
    putchar(' ');
    print_equality(a, 1.200000);
    putchar('b');
    putchar(' ');
    print_equality(b, 1.300000);
    putchar('c');
    putchar(' ');
    print_equality(c, 1.400000);
    putchar('d');
    putchar(' ');
    print_equality(d, 1.200000);
    putchar('e');
    putchar(' ');
    print_equality(e, 179.769313);
    putchar('f');
    putchar(' ');
    print_equality(f, 2157.231762);
    putchar('g');
    putchar(' ');
    print_equality(g, 1.560000);
    putchar('h');
    putchar(' ');
    print_equality(h, 52.000000);
    putchar('i');
    putchar(' ');
    print_equality(i, 33.333333);
    putchar('j');
    putchar(' ');
    print_equality(j, 217.168823);
    putchar('k');
    putchar(' ');
    print_equality(k, 16.500000);
    putchar('l');
    putchar(' ');
    print_equality(l, 23.185166);
    putchar('m');
    putchar(' ');
    print_equality(m, 1.000000);
    putchar('n');
    putchar(' ');
    print_equality(n, 0.000000);
    putchar('o');
    putchar(' ');
    print_equality(o, 5.010000);
    putchar('p');
    putchar(' ');
    print_equality(p, 5.010000);
    putchar('q');
    putchar(' ');
    print_equality(q, 0.000000);
    putchar('r');
    putchar(' ');
    print_equality(r, 60.000000);
    putchar('s');
    putchar(' ');
    print_equality(s, 8354.934629);
    putchar('t');
    putchar(' ');
    print_equality(t, 8354.934629);
    putchar('u');
    putchar(' ');
    print_equality(u, 67.485166);

    // putchar('\n');
    // putchar('D');
    // putchar('\n');
    // d = a + b;
    // d = c - d;
    // d = e / f;
    // d = g * h;

    // d = i + j + k;
    // d = l - m - n;
    // d = o / c / d;
    // d = r * a * b;

    // d = u - a + b;
    // d = c + d - e;
    // d = f * g / h;
    // d = i / j * k;
}