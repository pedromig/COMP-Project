int main(void) {
    int a = 1;

    if(1);

    if (a) {
        putchar('a');
    }

    if (1) {
        if (0) {
            putchar('a');
        } else {
            if (2 < 0) {
                putchar('b');
            }
            putchar('b');
        }
    }

    if (1 + 2) {
        putchar('a');
    }

    if (0) {
        putchar('a');
    } else {
        putchar('b');
    }
}
