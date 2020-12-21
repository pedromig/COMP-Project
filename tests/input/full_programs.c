void print_number(int n) {
    int u = 1;
    while (n / u) u = u * 10;
    char a;
    while (u > 1) {
        a = '0' + n / (u / 10) - n / u * 10;
        putchar(a);
        u = u / 10;
    }
}

int factorial(int n) {
    if (n == 0 || n == 1) return 1;
    return n * factorial(n - 1);
}

int factorial2(int n) {
    int factorial = 1;
    while (n > 1) {
        factorial = factorial * n;
        n = n - 1;
    }
    return factorial;
}

int fibbogucci(int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return (fibbogucci(n - 1) + fibbogucci(n - 2));
    }
}

int fibboprada(int n) {
    n = n + 1;
    if (n == 1) return 0;
    if (n == 2) return 1;
    int prevPrev = 0;
    int prev = 1;
    int currentNumber;
    int i = 2;
    while (i < n) {
        currentNumber = prevPrev + prev;
        prevPrev = prev;
        prev = currentNumber;
        i = i + 1;
    }
    return currentNumber;
}

int bigmod(int a, int p, int m) {
    if (p == 0) return 1;
    int c;
    if (p % 2) {
        return ((a % m) * (bigmod(a, p - 1, m))) % m;
    } else {
        c = bigmod(a, p / 2, m);
        return ((c % m) * (c % m)) % m;
    }
}

// void print_primes(int n) {
//     int i = 3, count, c;

//     if (n >= 1) {
//         putchar('2');
//         putchar(' ');
//     }
//     count = 2;
//     while (count <= n) {
//         c = 2;
//         while (c <= i - 1 && i % c == 0) {
//             if (i % c == 0)
//                 break;
//             c = c + 1;
//         }
//         if (c == i) {
//             print_number(i);
//             putchar(' ');
//             count = count + 1;
//         }
//         i = i + 1;
//     }
// }

int division(int num1, int num2) {
    if (num1 == 0)
        return 0;
    if (num2 == 0)
        return 0;

    short negResult = 0;

    if (num1 < 0) {
        num1 = -num1;
        if (num2 < 0)
            num2 = -num2;
        else
            negResult = 1;
    } else if (num2 < 0) {
        num2 = -num2;
        negResult = 1;
    }

    int quotient = 0;
    while (num1 >= num2) {
        num1 = num1 - num2;
        quotient = quotient + 1;
    }

    if (negResult)
        quotient = -quotient;
    return quotient;
}

int gcd(int n1, int n2);
char gcd2(int, int);

int main(void) {
    print_number(11133);
    putchar('\n');
    print_number(factorial(0));
    putchar('\n');
    print_number(factorial(7));
    putchar('\n');
    print_number(factorial2(5));
    putchar('\n');
    print_number(factorial2(1));
    putchar('\n');
    print_number(fibbogucci(6));
    putchar('\n');
    print_number(fibboprada(20));
    putchar('\n');
    print_number(gcd(13, 4323));
    putchar('\n');
    print_number(gcd2(1111, 111));
    putchar('\n');
    print_number(bigmod(3, 3, 5));
    putchar('\n');
    // print_primes(15);
    // putchar('\n');
    print_number(division(13, 2));
}

int gcd(int n1, int n2) {
    if (n2 != 0) {
        return -(-gcd(n2, n1 % n2));
    } else
        return n1;
}

char gcd2(int a, int b) {
    int temp;
    while (b != 0) {
        temp = a % b;

        a = b;
        b = temp;
    }
    return a;
}