int cc;

void f(void) {
    cc = 'Y';
}

int main(void) {

    cc = 'F';
    double x = 1.2;
    double y = 1.5;
    double z = 1.5 / 1.2;

    int g = 0 & 12;
    int zz = 65;
    int c = +(+zz);
    int d = -(-zz);
    int e = 4 | 1 * 2;
    
    putchar(g);

    int a = 67;
    if ((f(), a = 65, 1)) {
        putchar(a);
        putchar('X');
        putchar(cc);
    } else {
        putchar(a);
        if ((1, 2, 31)) {
            putchar('B');
        }
    }
    putchar(a);
    return 0;
}