int A0, A1, A2, A3, A4;
short B1, B2, B3, B4;
char C0, C1, C2, C3, C4;
double D1, D2, D3, D4;
double X0, X2, X3, X4;
double Y1, Y2, Y3, Y4;
double Z0, Z2, Z3, Z4;
char argc; int argv; /* so para confundir */
void f(void);
void g0(void);
char g1(void);
double g2(void);
void g0(void) {
    double a0;
    a0 = g2();
    return f();
}
char g1(void) {
    char a;
    a = g1();
    return a+1;
}
double g2(void) {
    char a;
    a = 0;
    return (0,a);
}
void f(void) {
    int A0, A1, A2, A3, A4;
    short B1, B2, B3, B4;
    char C0, C1, C2, C3, C4;
    double D1, D2, D3, D4;
    double X0, X2, X3, X4;
    double Y1, Y2, Y3, Y4;
    double Z0, Z2, Z3, Z4;
    return;
}
int main(void) {
    char a, b, c, m;
    double p;
    a = 3;
    if(a) {b=1; c=2;} else {c=1;}
    if(m+5) {b=1; c=2;} else {c=1; b=2;}
    while(a==0) {b=1; a = a + 1;}
    while (a != 0)
    {
        b = 1;
        a = a + 1;
    }
    while(1) {c=2;}
    while(a>=0) {b=1; c=2;}
    while (a <= 0)
    {
        b = 1;
        c = 2;
    }
    while(p < m+10) {b=1; c=2;}
    return a+b+c;
}