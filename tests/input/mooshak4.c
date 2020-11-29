int A0, A1, A2, A3, A4;
short B1, B2, B3, B4;
char C0, C1, C2, C3, C4;
double D1, D2, D3, D4;
char argc; int argv; /* so para confundir */
int main(void) {
    /* char,int + char,int */
    C0+C0+C0;
    C0+A0+C0+A0;
    C0+A0+'a'+2;
    /* short, short + int*/
    B1 + B2;
    B1+A1+A0;
    B1+B2+B3;
    B1 + B2 + B3 + 1;
    A0+B1+A0;
    A0+B2+A0;
    A0+B3+A0;
    A0+B4+A0;
    A0+C1+A0;
    A0+C2+A0;
    A0+C3+A0;
    A0+C4+A0;
    //short + integer
    B1 + B2;
    B1 + C0;
    B1 + C0 + A0;
    B1 + C0 + 1;
    B1 + 'a' + 1;
    //double
    D1 + D2 + D3;
    D1 + A0 + A1;
    D1 + B1 + A0;
    D1 + 'a' + B1;
    D1 + 1.0e-10;
    D1 + 1 + .1e-10;
}