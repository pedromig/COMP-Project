void and (void) {
    putchar('0' + (0 && 0));
    putchar('0' + (0 && 1));
    putchar('0' + (1 && 0));
    putchar('0' + (1 && 1));

    putchar('0' + (0 && 0));
    putchar('0' + (0 && 100));
    putchar('0' + (100 && 0));
    putchar('0' + (100 && 100));
}

void nand(void) {
    putchar('0' + !(0 && 0));
    putchar('0' + !(0 && 1));
    putchar('0' + !(1 && 0));
    putchar('0' + !(1 && 1));

    putchar('0' + !(0 && 0));
    putchar('0' + !(0 && 100));
    putchar('0' + !(100 && 0));
    putchar('0' + !(100 && 100));
}

void or (void) {
    putchar('0' + (0 || 0));
    putchar('0' + (0 || 1));
    putchar('0' + (1 || 0));
    putchar('0' + (1 || 1));

    putchar('0' + (0 || 0));
    putchar('0' + (0 || 100));
    putchar('0' + (100 || 0));
    putchar('0' + (100 || 100));
}

void nor(void) {
    putchar('0' + !(0 || 0));
    putchar('0' + !(0 || 1));
    putchar('0' + !(1 || 0));
    putchar('0' + !(1 || 1));

    putchar('0' + !(0 || 0));
    putchar('0' + !(0 || 100));
    putchar('0' + !(100 || 0));
    putchar('0' + !(100 || 100));
}

void n_or_and_or(void) {
    putchar('0' + !(0 || 0 && 0));
    putchar('0' + !(0 || 1 && 0));
    putchar('0' + !(1 || 0 && 0));
    putchar('0' + !(1 || 1 && 0));
    putchar('0' + !(0 || 0 && 1));
    putchar('0' + !(0 || 1 && 1));
    putchar('0' + !(1 || 0 && 1));
    putchar('0' + !(1 || 1 && 1));
    putchar('0' + !(0 || 0 && 0 || 0));
    putchar('0' + !(0 || 1 && 0 || 0));
    putchar('0' + !(1 || 0 && 0 || 0));
    putchar('0' + !(1 || 1 && 0 || 0));
    putchar('0' + !(0 || 0 && 1 || 0));
    putchar('0' + !(0 || 1 && 1 || 0));
    putchar('0' + !(1 || 0 && 1 || 0));
    putchar('0' + !(1 || 1 && 1 || 0));
    putchar('0' + !(0 || 0 && 0 || 1));
    putchar('0' + !(0 || 1 && 0 || 1));
    putchar('0' + !(1 || 0 && 0 || 1));
    putchar('0' + !(1 || 1 && 0 || 1));
    putchar('0' + !(0 || 0 && 1 || 1));
    putchar('0' + !(0 || 1 && 1 || 1));
    putchar('0' + !(1 || 0 && 1 || 1));
    putchar('0' + !(1 || 1 && 1 || 1));

    putchar('0' + !(0 || 0));
    putchar('0' + !(0 || 100));
    putchar('0' + !(100 || 0));
    putchar('0' + !(100 || 100));
}

void test_continue_end(void) {
    int a = 'w';
    0 && (a = 'w');
    putchar(a);
    1 && (a = 'o');
    putchar(a);
    0 || (a = 'r');
    putchar(a);
    a = 'k';
    1 || (a = 'r');
    putchar(a);
    0 || 1 && (a = 's');
    putchar(a);
}

int main(void) {
    putchar('t');
    putchar('a');
    putchar('b');
    putchar('e');
    putchar('l');
    putchar('a');
    putchar(' ');
    putchar('d');
    putchar('e');
    putchar(' ');
    putchar('v');
    putchar('e');
    putchar('r');
    putchar('d');
    putchar('a');
    putchar('d');
    putchar('e');
    putchar(':');
    putchar('\n');

    and();
    putchar('\n');

    or ();
    putchar('\n');

    nand();
    putchar('\n');

    nor();
    putchar('\n');

    n_or_and_or();
    putchar('\n');

    test_continue_end();
    putchar('\n');
}