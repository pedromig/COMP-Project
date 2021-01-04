// Arithmetic, relational and logical expressions

int main(void) {
    putchar((5 && 3) + 'A');
    putchar((0 || 0) + 'A');
    putchar(130 % 85);
    putchar(82 & 81);
    putchar(110 ^ 85);
    putchar(82 | 81);

    putchar((2 != 3) + 'A');
    putchar((2 == 3) + 'A');
    putchar((2 < 3) + 'A');
    putchar((2 > 3) + 'A');
    putchar((2 <= 3) + 'A');
    putchar((2 <= 2) + 'A');
    putchar((2 >= 3) + 'A');
    putchar((2 >= 2) + 'A');

    putchar((+(-2)) + 'A');
    putchar((-(-2)) + 'A');
    putchar(!0 + 'A');

    putchar(5 + 2 + 'A');
    5.2 + 1.3;
    5 + 1.3;
    5.2 + 1;
    putchar(5 - 1 + 'A');
    5.2 - 1.3;
    5 - 1.3;
    5.2 - 1;
    putchar(5 * 3 + 'A');
    5.2 * 1.3;
    5 * 1.3;
    5.2 * 1;
    putchar(15 / 5 + 'A');
    5.2 / 1.3;
    5 / 1.3;
    5.2 / 1;

    char a = 'Z';
}
