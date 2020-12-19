
char aa(char a) { return a; }
short bb(short b) { return b; }
int cc(int c) { return c; }
double dd(double d) { return d; }

int arithmetic(double a, double b, double c) {
    double d = 1.2;

    d = a + b;
    d = a - b;
    d = a / b;
    d = a * b;

    d = a + b + c;
    d = a - b - c;
    d = a / b / c;
    d = a * b * c;

    d = a - b + c;
    d = a + b - c;
    d = a * b / c;
    d = a / b * c;
}

int arithmetic1(int a, int b, int c) {
    double d = 1.3;

    d = a + b;
    d = a - b;
    d = a / b;
    d = a * b;

    d = a + b + c;
    d = a - b - c;
    d = a / b / c;
    d = a * b * c;

    d = a - b + c;
    d = a + b - c;
    d = a * b / c;
    d = a / b * c;
}

int arithmetic2(int a, int b, int c) {

    int d = 12;

    d = a + b;
    d = a - b;
    d = a / b;
    d = a * b;

    d = a + b + c;
    d = a - b - c;
    d = a / b / c;
    d = a * b * c;

    d = a - b + c;
    d = a + b - c;
    d = a * b / c;
    d = a / b * c;

    if (a + b)
        ;
    if (a - b)
        ;
    if (a / b)
        ;
    if (a * b)
        ;
    if (d = a + b)
        ;
    if (d = a - b)
        ;
    if (d = a * b)
        ;
    if (d = a / b)
        ;

    while (a + b)
        ;
    while (a - b)
        ;
    while (a / b)
        ;
    while (a * b)
        ;
    while (d = a + b)
        ;
    while (d = a - b)
        ;
    while (d = a * b)
        ;
    while (d = a / b)
        ;
}

int arithmetic3(void) {
    int a = 1, b = 2;
    double c = 1.41, d = 151.2;

    c = d + c;
    c = c + c;
    a = b + a;
    a = a + a;

    a = a + '\010';
    a = b + '\'' + '\102';

    double x = a + b + c + d;
    x = x + a;
    x = x * d * a;
    double y = c * c + a + c * d;

    if (a == (y = a)) {
        if (a + d != arithmetic3() + arithmetic3()) {

        } else {
            while (1) {
            }
        }
    } else {
        while (1) {
            if (1) {

            } else {
            }
        }
    }

    if (putchar('\00'))
        ;

    if (0 + b != 0 + d) {
        a = a + a;
        if (0 + b == 0 + d) {
            c = c + c;
        } else {
            c = c + c;
        }
    } else {
        a = a + 1;
    }
    return !!a;
}

int just_adds(char a, char b, short c, short d, int e, int f, double g, double h) {
    a = a + a;
    putchar(a);
    a = a + b;
    putchar(a);
    b = a + b;
    putchar(b);
    b = b + b;
    putchar(b);
    a = a + c;
    putchar(a);
    a = a + d;
    putchar(a);
    a = a + e;
    putchar(a);
    a = a + f;
    putchar(a);
    c = c + a;
    putchar(c);
    d = a + b;
    putchar(d);
    e = c + a;
    putchar(e);
    g = a + a;
    g = c + a;
    g = a + e;
    h = a + h;
    h = h + h;
    g = d + e;

    a = aa(a) + bb(b);
    putchar(a);
    b = cc(e) + aa(a);
    putchar(b);
    a = bb(c) + cc(e);
    putchar(a);
    a = aa(aa(a) + aa(a)) + bb(b) + cc(a);
    putchar(a);

    if (a + b) {
        if (b + c) {
            if (a + c) {
                if (a + d + e) {
                    return aa(a);
                }
                return bb(b);
            }
            return cc(c);
        }
        return '\123';
    }

    if ((a = (a + b)))
        ;
    putchar(a);
    if ((a = (e + c)))
        ;
    putchar(a);
    if ((a = ((a == b) + (e <= g))))
        ;
    putchar(a);
    if ((b = (b != a + a)))
        ;
    putchar(b);
    if ((c = (a + b)))
        ;
    putchar(c);
    if ((e = (c + d)))
        ;
    putchar(e);
    while ((e = (g != h)))
        ;
    putchar(a);
    while ((a = (a + b)))
        ;
    putchar(a);
    while ((a = (e + c)))
        ;
    putchar(a);
    while ((a = ((a == b) + (e <= g))))
        ;
    putchar(a);
    while ((b = (b != a + a)))
        ;
    putchar(b);
    while ((c = (a + b)))
        ;
    putchar(c);
    while ((e = (c + d)))
        ;
    return '\'';
}


int relational(double a, double b) {
    if (a == b)
        ;
    if (a > b)
        ;
    if (a < b)
        ;
    if (a >= b)
        ;
    if (a <= b)
        ;
    if (a != b)
        ;

    while (a == b)
        ;
    while (a > b)
        ;
    while (a < b)
        ;
    while (a >= b)
        ;
    while (a <= b)
        ;
    while (a != b)
        ;
    return 0;
}

int relational2(int a, int b) {
    if (a == b)
        ;
    if (a > b)
        ;
    if (a < b)
        ;
    if (a >= b)
        ;
    if (a <= b)
        ;
    if (a != b)
        ;

    while (a == b)
        ;
    while (a > b)
        ;
    while (a < b)
        ;
    while (a >= b)
        ;
    while (a <= b)
        ;
    while (a != b)
        ;
    return 0;
}

int relational3(double a, double b, double c) {
    if (a == b == c)
        ;
    if (a > b > c)
        ;
    if (a < b < c)
        ;
    if ((a >= b) >= c)
        ;
    if (a <= (b <= c))
        ;
    if (a != (b != c))
        ;

    while (a == b == c)
        ;
    while (a > b > c)
        ;
    while (a < b < c)
        ;
    while ((a >= b) >= c)
        ;
    while (a <= (b <= c))
        ;
    while (a != (b != c))
        ;
    return 0;
}

int relational4(int a, int b, int c) {
    if (a == b == c)
        ;
    if (a > b > c)
        ;
    if (a < b < c)
        ;
    if ((a >= b) >= c)
        ;
    if (a <= (b <= c))
        ;
    if (a != (b != c))
        ;

    while (a == b == c)
        ;
    while (a > b > c)
        ;
    while (a < b < c)
        ;
    while ((a >= b) >= c)
        ;
    while (a <= (b <= c))
        ;
    while (a != (b != c))
        ;
    return 0;
}

int relational5(int a, double b, int c) {
    if (a == b == c)
        ;
    if (a > b > c)
        ;
    if (a < b < c)
        ;
    if ((a >= b) >= c)
        ;
    if (a <= (b <= c))
        ;
    if (a != (b != c))
        ;

    while (a == b == c)
        ;
    while (a > b > c)
        ;
    while (a < b < c)
        ;
    while ((a >= b) >= c)
        ;
    while (a <= (b <= c))
        ;
    while (a != (b != c))
        ;
    return 0;
}

int relational6(double a, double b, double c) {
    if (a == b == c)
        ;
    if (a > b > c)
        ;
    if (a < b < c)
        ;
    if ((a >= b) >= c)
        ;
    if (a <= (b <= c))
        ;
    if (a != (b != c))
        ;

    while (a == b == c)
        ;
    while (a > b > c)
        ;
    while (a < b < c)
        ;
    while ((a >= b) >= c)
        ;
    while (a <= (b <= c))
        ;
    while (a != (b != c))
        ;
    return 0;
}

int main(void) {
    return 0;
}
