int fibonacci(int n) {
    if (n <= 1)
        return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int fibonacci_seq(int n) {
    int n1 = 0, n2 = 1, n3 = 0;
    int i = 2;
    while (i < n) {
        n3 = n1 + n2;
        putchar(' ');
        putchar(n3);
        n1 = n2;
        n2 = n3;
        i = i + 1;
    }
    return 0;
}

int main(void) {
    int a = 20;

    putchar(fibonacci_seq(a));
    putchar('\n');
    putchar(fibonacci_seq(a));
    return 0;
}
