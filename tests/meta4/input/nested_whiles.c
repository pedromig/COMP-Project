void print_number(int n) {
    int u = 1;
    while (n / u) u = u * 10;
    while (u > 1) {
        putchar('0' + n / (u / 10) - n / u * 10);
        u = u / 10;
    }
}

int sum_range_inverse(int min, int max) {
    int sum = 0;
    int i = max;
    while (i >= min) {
        while (i >= min) {
            while (i >= min) {
                sum = sum + i;
                i = i - 1;
            }
            while (i >= min) {
                sum = sum + i;
                i = i - 1;
            }
            sum = sum + i;
            i = i - 1;
        }
        sum = sum + i;
        i = i - 1;
    }
    return sum;
}

int sum_range(int min, int max) {
    int sum = 0;
    int i = min;
    while (i < max) {
        sum = sum + i;
        i = i + 1;
    }
    return sum;
}


int sum_range2(int min, int max) {
    int sum = 0;
    int i = min;
    while (i < max) {
        sum = sum + i;
        i = i + 1;
    }
    return sum;
}


int sum_range3(int min, int max) {
    int sum = 0;
    int i = min;
    while (i < max) {
        sum = sum + i;
        i = i + 1;
    }
    return sum;
}


int sum_range4(int min, int max) {
    int sum = 0;
    int i = min;
    while (i < max) {
        sum = sum + i;
        i = i + 1;
    }
    return sum;
}


int sum_range5(int min, int max) {
    int sum = 0;
    int i = min;
    while (i < max) {
        sum = sum + i;
        i = i + 1;
    }
    return sum_range_inverse(max, sum);
}

int main(void) {
    int min = 100, max = 105;
    int i = min;
    while (i < max) {
        print_number(sum_range(min, i + 1));
        print_number(sum_range2(min, i + 1));
        print_number(sum_range3(min, i + 1));
        print_number(sum_range4(min, i + 1));
        print_number(sum_range5(min, i + 1));
        print_number(sum_range_inverse(min, i + 1));
        putchar('\n');
        i = i + 1;
    }

    int a = 2;
    putchar('A' + (a && a && a));
    putchar('A');
    0 && putchar('F');
    return 0;
    return 0;
}