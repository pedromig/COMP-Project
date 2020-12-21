int getint(void) {
    int read = 0, sign = 1;
    char c = '4';
    if (c == '-')
        sign = -1;
    while (c != '\n') {
        if (c != '-')
            read = read * 10 + c - '0';
        c = '\n';
    }
    return sign * read;
}

void putint(int n) {
    if (n < 0) {
        putchar('-');
        n = -n;
    }
    if (n / 10) {
        putint(n / 10);
    }
    putchar(n % 10 + '0');
}

int main(void) {
    int i = 1;
    while (i != 0) {
        i = getint();
        putint(i);
        putchar('\n');
        i = 0;
    }
}