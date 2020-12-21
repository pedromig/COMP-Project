int return1(void) {
    return 1;
}

int main(void) {
    int a;
    a = 0, 1, 2, 3;
    putchar('a' + a);
    a = (0, 1, 2, 3);
    putchar('a' + a);
    putchar('a' + ((1, 2, 3), (1, 2)));
    putchar('a' + (3, 2, return1()));
    putchar('a' + (3, 2, return1(), 0));
    putchar('a' + ((a = return1()), a));
}