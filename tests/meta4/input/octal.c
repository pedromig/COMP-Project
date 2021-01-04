int main(void) {
    char a, b;
    int c;
    a = 10;
    b = -5;
    c = 0;

    putchar(027 * 01365 + 'A');
    putchar(a + 'A');
    putchar(c + 'A');
    putchar(!2 + '0');
    putchar(!0 + '0');
    putchar(!((!a || !b || !c) && -2 && (!b || !a)) + 'A');
    putchar((a && (b = b + 1) && c || (b = b + 4) && (a = a - 5) || 1 || (c = -1)) + 'A');
    putchar(a + '0');
    putchar(a + 'A');
    
    int d = 8;
    putchar((d = d - 5) + '0');
    putchar(d + '0');
}