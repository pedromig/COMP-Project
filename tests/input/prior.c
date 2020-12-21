int main(void)
{
    // output: 2.00 2.14
    int counter = 0;
    int a = 3;
    int b = 5;
    int d = 'A';
    while (counter < 10)
    {
        d = 'A';
        a = counter;
        if (a & b)
        {
            putchar('a');
        }
        d = d + 1;
        if (a | b)
        {
            putchar('b');
        }
        d = d + 1;
        if (a ^ b)
        {
            putchar('c');
        }
        d = d + 1;
        if (a && b)
        {
            putchar('d');
        }
        d = d + 1;
        if (a * b)
        {
            putchar('e');
        }
        d = d + 1;
        if (a, b)
        {
            putchar('f');
        }
        d = d + 1;
        if (a / b)
        {
            putchar('g');
        }
        d = d + 1;
        if (a == b)
        {
            putchar('h');
        }
        d = d + 1;
        if (a >= b)
        {
            putchar('i');
        }
        d = d + 1;
        if (a > b)
        {
            putchar('j');
        }
        d = d + 1;
        if (a <= b)
        {
            putchar('k');
        }
        d = d + 1;
        if (a < b)
        {
            putchar('l');
        }
        d = d + 1;
        if (a - b)
        {
            putchar('m');
        }
        d = d + 1;
        if (a % b)
        {
            putchar('n');
        }
        d = d + 1;
        if (a != b)
        {
            putchar('o');
        }
        d = d + 1;
        if (a || b)
        {
            putchar('p');
        }
        d = d + 1;
        if (a && b)
        {
            putchar('q');
        }
        counter = counter + 1;
        putchar(10);
    }
}
