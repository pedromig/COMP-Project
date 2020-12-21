int main(void) {
    int a = 65, b = 68;
    char c = 76;
    int d = (b = b + 10 && 65 || 0) || 12;
    putchar(c);
    putchar('0' + d);
    return 0;
}