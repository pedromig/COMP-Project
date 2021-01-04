void print_number(int n) {
    int u = 1;
    while (n / u) u = u * 10;
    while (u > 1) {
        putchar('0' + n / (u / 10) - n / u * 10);
        u = u / 10;
    }
}

int main(void) {
    int gang = 'a';
    if (gang > 'a') {
        putchar('l');
        putchar('o');
        putchar('l');
        putchar('\n');
        return 0;
    }
    print_number(13920498);
    putchar('\n');
    if (gang == 'b') {
        gang = (123 * 2, 132 / 4, 213 * 6, 231 * 4, 312 - 2, 321 - (-(-(0))));
    } else {
        gang = 1, 2, 3;
        print_number(gang);
        putchar('\n');
        print_number((12, 34, 56, 78));
        putchar('\n');
    }
    gang = 10;
    while (gang) {
        print_number(gang);
        putchar('\n');
        gang = 0, gang - 1;
    }

    putchar('e');
    putchar('n');
    putchar('d');
    putchar('\n');
}