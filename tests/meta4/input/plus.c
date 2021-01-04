void print_equality(double a, double b) {
    if (a == b) {
        putchar('y');
        putchar('e');
        putchar('s');
    } else {
        putchar('n');
        putchar('o');
    }
    putchar('\n');
}

int main(void){
    print_equality(1.0, +1.0);
    print_equality(1.0, +(-(-1.0)));
    print_equality('A', +(+'A'));
    print_equality(-4.2, +(+(-(4.2 + 0.2 - 0.2))));
}