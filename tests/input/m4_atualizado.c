double le_double(void)
{
    return 1 + 1;
}
int g = 10;
int global = 1 + 1;
int w1(void)
{
    int a = 1;
    if (a)
    {
    }
    return 1;
}
int w2(void)
{
    return 0;
}
int w(void)
{
    int a = 1;
    int b = 10;
    while (a != b)
    {
        a = a + 1;
        while (a != b)
        {
            a = a + 1;
            while (a != b)
            {
                a = a + 1;
            }
        }
    }
    return 1;
}

int relf(void)
{
    int a = 2, b = 3;
    putchar(97);

    return 100;
}
int aaa = 1;
int meeeh(void)
{
    int a;
    int b = !aaa;
    double d = aaa % 2;
    putchar(987);
    return 100;
}
int g1 = 0, g2 = 0, g3;
int flow(void)
{
}
int flow2(int a, int b)
{
    putchar(98);
    if (a == 1)
    {
        putchar(99);
        b = 3;
        if (b == a)
        {
            putchar(100);
            a = 1;
            if (b == a)
            {
                putchar(101);
                a = 1;
            }
            putchar(102);
        }
        putchar(103);
    }
    putchar(104);
    return 0;
}

int shapo(void)
{
    int a;
    if (a + a)
    {
        a = 1;
        relf();
        if (a)
        {
            meeeh();
        }
    }
    putchar(40);
    int f = (meeeh() && relf()) || (g && aaa);
    return 100;
}

int AND(void)
{
    int b = (aaa) || ((meeeh()) && shapo() && (meeeh()) && shapo());
    int c = (aaa) || ((meeeh()) && shapo() && (meeeh()) && shapo());
    (aaa) || ((meeeh()) && shapo()) || ((meeeh()) && shapo());
    int aa = relf() & meeeh();
    int bb = relf() && meeeh();
    return 1;
}

void OR(void)
{
    int c = (aaa) || ((meeeh()) && shapo());
    int a = relf() | meeeh();
    int bb = relf() || meeeh();
    relf() && meeeh();
    int bbb = relf() || meeeh();
    relf() || meeeh();
    relf() || meeeh();
    relf() || meeeh();
    relf() || meeeh();
    (relf() || meeeh()) + (relf() || meeeh());
    relf() || meeeh();
    int bbbb = relf() || meeeh();
}
void XOR(void)
{
    int a = relf() ^ meeeh();
    int b = relf() || meeeh();
    relf() && meeeh();
    while (a == relf())
    {
        a = 2;
    }
}
void rel(void)
{
    int a;
    if (relf() == meeeh())
    {
    }
}

int f1(int a, double d);

int f2(int i)
{
    int a, b;
    a = 1;
    b = a + 1;
    return 105;
}

int f3(int a, double d)
{
    return 105 + a;
}

int boo(int b)
{
    putchar(b);
    return b;
}

int factorial(int n)
{
    if (n <= 1)
        return 1;
    else
        return n * factorial(n - 1);
}

int mod(int a, int b)
{
    if (a > b)
        return mod(a - b, b);
    else
        return a;
}

void printint(int n)
{
    if (n < 0)
    {
        putchar('-');
        n = -n;
    }
    if (n / 10 != 0)
        printint(n / 10);
    putchar((n % 10) + '0');
}

int prime(int number)
{
    int loop = 2;

    while (loop < number)
    {
        if ((number % loop) == 0)
        {
            return 0;
        }
        loop = loop + 1;
    }
    return 1;
}

void primes(int max)
{
    int b = 5;

    while (b <= max)
    {
        if (prime(b))
            printint(b);
        b = b + 1;
    }
}

int a = 2;
short f10s(void);
// int b;

int ffff(int a, int b)
{
    if (a >= b)
        if ((a == b && b == 6))
            return 63;
        else
            return 62;
    else
        return 61;
    return 99;
}
int maind(void);

int main(void)
{
    putchar(7);
    primes((ffff(1, 10), 10));
    putchar(mod(197, 100));
    putchar(mod(97, 100));
    putchar(factorial(5));
    putchar(factorial(6));
    putchar(factorial(7));
    int a = boo(41) || boo(42);
    rel();
    a = '\12';
    char e = ',';
    int i = f3(1, 1.1);
    short s = 1 + '\n' + 1 + (i = 101);
    char c = 1 + 1 + 1 + 90;
    double d = 1 % 5 + 1 * 1.1;
    double ddd = 1.1 + 1 * 1.1;
    double exp = 2e2 + (boo(41) && boo(40) && boo(41) || boo(210));
    d = f2(1 + 1);
    // i = f2(1 + 1 + 1 + 1);
    d = 1;
    // i = 1;
    s = 1;
    c = 1;
    int inteiro = 1 + 3 * -+-+-(33 & (2 && +-+-+-boo(72))) + 4 + 6 + 43 + 'a' * 'r';
    int rr;
    rr = 97;
    putchar(rr);
    a = 99;
    putchar(a);
    i = -i;
    putchar((a = 100));
    f1(10, 3);
    boo(99);
    putchar(inteiro);
    putchar(boo(99) + 10);
    putchar('\060');
    putchar('\60');
    putchar(f2(1));
    putchar(f3(-1, 1.1));
    putchar('\n' * 9);
    putchar('\t');
    putchar('\'');
    putchar('\"');
    putchar('\\');
    putchar(a);
    putchar(e + !0);
    putchar(i + !1);
    putchar('\100');
    putchar(97 % 140);
    putchar('\n');
    putchar(60 + e - (1 == 1));
    putchar(97 + (1 <= 1.1) * (2 & 1) + (10 | 5) - (2 ^ 10));
    putchar(97 + (boo(70) && boo(80)));
    double dd = a * a;
    putchar(96 + ((boo(40) && boo(40)) && (boo(51) || (boo(52) && (boo(51) || boo(92))))));
    putchar('1');
    putchar(011710);
    putchar(2 + 3 - +-4 + 1 + 'A' % 90);
    putchar(2 + 3 - +4 + 1 + 'A');
    putchar((boo(104), relf(), 97));
    maind();

    int b = 0;
    b = b * -1;

    if ((g2 + g1) != 1)
    {
        g3 = 1;
        if (meeeh() != (relf() && g1 && aaa))
        {
            putchar(101);
            g3 = 1;
        }
        else
        {
            putchar(102);
        }
        putchar(103);
        g3 = 1;
        if (meeeh() != (relf() && g1 && aaa))
        {
            putchar(104);
            g3 = 1;
        }
        else
        {
            putchar(105);
        }
        putchar(106);
    }
    else
    {

        putchar(107);
        g2 = 1;
    }
    (boo(10) && boo(20) && boo(30) && boo(10) && boo(40));
    while (b < 10)
    {
        b = b + 1;

        if (b < 5)
        {
            putchar(66);
        }
        else
            putchar(99);

        putchar(97);
    }
    while (((boo(90) + 1 && (boo(30) && boo(60))), b < 10))
    {
        b = b + 1;

        if (b < 5)
        {
            return 1;
        }
        else
            putchar(99);

        putchar(97);
    }
    while (((boo(90) + 1 && (boo(30) && boo(60))), b < 10))
    {
        b = b + 1;

        if (b < 5)
        {
            putchar(99);
        }
        else
            return 1;

        putchar(97);
    }
    a = 2;
    if (a & 1)
    {
        putchar(67);
    }
    putchar(67);
    putchar(108);
    putchar(0141);
    putchar(10);
    putchar(0141);
    putchar(f1(97, 1.1));
    putchar(f10s());

    return 0;
}

int f1(int a, double d)
{

    putchar(boo(90));
    return 98;
}

int f10(int a)
{
    putchar(80);
    return 0;
}
short f10s(void)
{
    int i = 1;
    short s = 10;
    char c = 97;
    double d = 2, d2 = 20.0;

    if (d > d2)
    {
        putchar(100);
        return f1((i >= 1) && f1(1, d) & 2, d);
    }
    else
    {
        f10(!1);
    }
    putchar(10);
    while (d < d2)
    {
        if (i % 2)
            putchar(99);
        else
        {
            putchar(100);
        }
        i = i + 1;
        d = d + 1;
    }

    return 66;
}
int f10c(void)
{
}
int falala(int a)
{
    a = 1 + 1;
}

int factorial_(int n)
{
    if (n <= 1)
        return 1;
    else
        return n * factorial_(n - 1);
}

int aa;
double ff = 1;
void void_f_(void) {}
int f1_(void);
int f2_(void);
int f4_(void);
int f5_(void);
int f6_(void);
double f7_(void);
short f8_(void);

int f3_(void)
{
    int a, b;
    double d, e;

    return 99;
}

int params_(int a, double d, char c, short s)
{
    putchar(a);

    return 103;
}
int maind(void)
{

    short s;
    int a = 97, b;
    double d = 1.1;

    putchar((a && (a && params_(1, 1, 1, 1))) + 99);
    putchar(a);
    putchar(putchar('\n'));
    putchar('\141');
    putchar('\t');
    putchar('\'');
    putchar('\"');
    putchar(0141);
    putchar(98 % 50 + -1);
    putchar(1 + 1 + 1 * 4 + (3 == 4) + (4 < 8) * 4 + (5 != 6));
    params_(1 + 1 + 1 * 160 / 2 + -1, 1 + 1 * 2 * 2.2, 1, 1);
    void_f_();
    f3_();
    f2_();
    f4_();
    f5_();
    f6_();
    f7_();
    f8_();

    if (1)
    {
        if (0)
        {
            return 1;
            return 1;
            aa;
            putchar(98);
        }
        else
        {
            putchar(99);
        }
    }
    else
    {
        putchar(66);
    }
}

int f1_(void)
{
    int a;
    a = -a;
    short s;
    s = -s;
    double d;
    d = -d;
    char c;
    c = -c;
    return 0;
}

int f2_(void)
{

    int a, b;
    double d;
    d = b | a;
    d = b & a;
    d = b ^ a;
    putchar((90 | 80) & (7 ^ 100));

    return 101;
}

int f4_(void)
{
    // int a = 1;
    !(0 || f2_());
    !f2_();
    putchar(!0 + 99);
    putchar(!1 + 99);
    // a + a;
    // 1 + 1;

    return 99;
}
int f5_(void)
{
    int a = 100;
    a = 97 * 5 % 223 + !0;
    // putchar(a);

    return 65;
}

int f6_(void)
{
    a = 10;
    putchar((a && f5_()) == (f5_() && f5_()));
    putchar(f5_());
    putchar(f5_());

    return 1;
}

double f7_(void)
{
    if (a)
    {
        a = 1;
    }
    putchar(98);
    return 10;
}

short f8_(void)
{

    int d = 0;
    while (d < 10)
    {
        putchar(98);
        d = d + 1;
    }
}