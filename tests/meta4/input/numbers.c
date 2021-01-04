void print_number(int n) {
    if (n == 0) {
        putchar('0');
        return;
    }
    int u = 1;
    while (n / u) u = u * 10;
    while (u > 1) {
        putchar('0' + n / (u / 10) - n / u * 10);
        u = u / 10;
    }
}

int main(void) {
    int n = 1;
    while (n <= 100) {
        print_number(n);
        putchar('\n');
        n = n + 1;
    }
    return 0;
}