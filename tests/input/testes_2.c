double a = 3;

int main(void) {
    int a = 1;
    int b = 2;
    int c = 3;
    int d;
    d = a + b + c;
    return 0;
}

int f1(void) {
    int a = 1;
    int b = 2;
    int c = 3;
    double d;
    d = a + b + c;
    return 0;
}

int f2(void) {
    int a = 1;
    int b = 2;
    double c = 3;
    double d;
    d = a + b + c;
    return 0;
}

int f3(void) {
    double b = 10;
    double c = 9;
    double a = b == c < 2;
    return 0;
}

int f4(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c == d;
    return 0;
}

int f5(void) {
    int um = 1;
    double um_ponto = 1.0;
    int dez = 10;
    double dez_ponto = 10.0;
    int a = um != dez;
    double b = um_ponto != dez_ponto;
    int c = um <= dez;
    double d = um_ponto <= dez_ponto;
    int e = um >= dez;
    double f = um_ponto >= dez_ponto;
    int g = um < dez;
    double h = um_ponto < dez_ponto;
    int i = um > dez;
    double j = um_ponto > dez_ponto;
    return 0;
}

//
// int f6(void){
//   int a;
//   a = (1,2,3,4,5);
//   return a;
// }

int f7(void) {
    int a;
    a = -1;
    int b = 1 - -1;
    double c = -1 + 2;
    return 0;
}

int f8(void) {
    int t = 10;
    int b = !10;
    int a = !t;
    double c = !t;
    return 0;
}

int f9(void) {
    double t = 10;
    double a = !10;
    return 0;
}

int f10(void) {
    int a = 10;
    int b = +a;
    double c = 10.0;
    double d = +c;
    return 0;
}
//
// int f11(void){
//   int a = !4;
//   double b = !4.0;
//   return 0;
// }

int f12(void) {
    int a;
    a = -1;
    int b = -1 - -1;
    double c = -1 + 2;
    return 0;
}

int f13(void) {
    int d = 10;
    int u = 1;
    int a = u && d;
    return 0;
}

int f14(void) {
    int d = 10;
    int u = 1;
    if (u && d) {
    }
    return 0;
}

int f15(void) {
    double d = 10;
    double u = 1;
    // if (u && d) {
    //     d = 2;
    // }
    return 0;
}

int f16(void) {
    int d = 10;
    int v = 20;
    int a = d & v;
    return 0;
}

int f17(void) {
    double d = 10;
    double v = 20;
    //   double a = d & v;
    return 0;
}

int f18(int a, double b) {
    int i = 1;
    double d = 2;
    a = f18(i, d);
    b = 3;
    return 0;
}

int f20(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c == d == b;
    return 0;
}

int f21(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c == d == 2;
    return 0;
}
//ovelha negra....
int f22(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c == d > 2;
    return 0;
}

int f23(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c > d == 2;
    return 0;
}

int f24(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c > d > a;
    return 0;
}

int f25(void) {
    int a = 1 == 10;
    double b = 1 == 10;
    int c = 2;
    int d = 3;
    double e = c == d >= 2;
    return 0;
}

int f26(void) {
    char a = getchar();
    int b = putchar(a);
    return 0;
}

int f27(void) {
    int d = 10;
    int v = 20;
    int a = d | v;
    return 0;
}

int f28(void) {
    int d = 10;
    int v = 20;
    double a = d & v;
    return 0;
}

int f29(void) {
    int d = 10;
    int v = 20;
    double a = d & 30;
    return 0;
}

int f30(void) {
    int d = 10;
    int v = 20;
    double a = d ^ 30;
    return 0;
}

int f31(void) {
    int a;
    int u = 1;
    int d = 10;
    if (u < d && d > 10) {
        a = 10;
    } else {
        a = 20;
    }
    return 0;
}

int f32(int v) {
    int u = 1;
    int d = 10;
    int a = u < d && d > 10;
    return 0;
}

int f33(int v) {
    int u = 1;
    int d = 10;
    int a = u < d && d > 10 && u > 10;
    return 0;
}

int f34(void) {
    int u = 1;
    int d = 10;
    int a = u < d || d > 10;
    return 0;
}

int f35(void) {
    int u = 1;
    int d = 10;
    int a = u < d || d > 10 || u > 10;
    return 0;
}

int f36(void) {
    int u = 1;
    int d = 10;
    int a = u < d && d > 10 || u > 10;
    return 0;
}

int f37(void) {
    int u = 1;
    int d = 10;
    double a = u < d && d > 10 || u > 10;
    return 0;
}

double aux(int i, double d) {
    double a = i + d;
    return 0;
}

int f38(void) {
    int i = 1;
    int d = 2;
    double l = aux(i, d);
    return 0;
}

int f19(int a, double b) {
    int i = 1;
    int d = 2;
    double l = aux(i, d);
    b = 3;
    return 0;
}

int aux1(int i, int d) {
    int a = i + d;
    return a;
}

int f39(void) {
    int i = 65;
    int d = 10;
    int l = aux1(i, d);
    putchar(l);
    return 0;
}

int f40(void) {
    char a = 'a';
    return putchar(a);
}

int aux2(int i, int d) {
    return i + d;
}

int f41(void) {
    int i = 65;
    int d = 10;
    int l = aux2(i, d);
    putchar(l);
    return 0;
}

int aux3(int i, int d) {
    return i - d;
}

int f42(void) {
    int i = 65;
    int d = 10;
    aux3(i, d);
    return 0;
}

int aux4(void) {
    return 10;
}

int f43(void) {
    int i = 65;
    int l = aux4() + i + aux4();
    putchar(l);
    return 0;
}

int f44(void) {
    int a = 1;
    int b = 2;
    if (a < b) {
        putchar('A');
    } else {
        putchar('B');
    }
    return 0;
}

int f45(void) {
    int a = 1;
    int b = 2;
    if (a < b) {
        putchar('A');
        a = 'A';
    } else {
        putchar('B');
        b = 'B';
    }
    return 0;
}

int f46(void) {
    int a = 1;
    int b = 2;
    if (a < b) {
        putchar('A');
    } else {
    }
    return 0;
}

int f47(void) {
    int a = 1;
    int b = 2;
    if (a == b) {
        putchar('A');
    } else {
        putchar('B');
    }
    return 0;
}

int f48(void) {
    int i = 0;
    int aux = 0;

    while (i < 10) {
        aux = i % 2;
        if (aux == 0) {
            putchar('P');
        } else {
            putchar('I');
        }
        i = i + 1;
    }
    putchar('\n');
    return 0;
}

int f49(void) {
    int i = 0, aux = 0;

    while (i < 10) {
        aux = i % 2;
        if (aux == 0) {
            putchar('P');
        } else {
            putchar('I');
        }
        i = i + 1;
    }
    putchar('\n');
    return 0;
}

int f50(void) {
    int i = 0, e = 0, aux;
    while (i < 10) {
        while (e < 10) {
            aux = i + 65;
            putchar(aux);
            e = e + 1;
        }
        putchar('\n');
        e = 0;
        i = i + 1;
    }
}

int f51(void) {
    int a = (10 < 1 && 1 > 10) || 1 == 10;
    return 0;
}

int f52(void) {
    int a = 10 < 1 && (1 > 10 || 1 == 10);
    return 0;
}
