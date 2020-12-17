int factorial(int number) {
    int answer = 1;
    while (number != 0) {
        answer = answer * number;
        number = number - 1;
    }
    return answer;
}

int recursive_factorial(int number) {
    if (number == 0) {
        return 1;
    }
    return number * recursive_factorial(number - 1);
}

int tail_recursive_factorial(int number, int k) {
    if (number == 0) {
        return 1;
    }
    return tail_recursive_factorial(number - 1, k * number);
}

void i_have_no_life_xD(void) {
    putchar('#');
    putchar('#');
    putchar('\t');
    putchar('F');
    putchar('A');
    putchar('C');
    putchar('T');
    putchar('O');
    putchar('R');
    putchar('I');
    putchar('A');
    putchar('L');
    putchar('S');
    putchar('\t');
    putchar('#');
    putchar('#');
    putchar('\n');
}

int main(void) {

    i_have_no_life_xD();

    int i = 5;

    putchar(recursive_factorial(i));
    putchar('\n');
    putchar(tail_recursive_factorial(i, 1));
    putchar('\n');
    putchar(factorial(i));

    return 0;
}
