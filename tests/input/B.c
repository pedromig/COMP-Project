int a;
int b = 10 + 5 + 4 * 3;
double c = 5.1;

int main(void)
{
    char d;
    d = 'h';

    putchar(d);
    putchar('\n');

    b = 'F';
    putchar(b);
    putchar('\n');

    a = 10;
    b = -15;
    c = +6.2;

    c = b = a = 1;

    d = '\170'; // 'x'
    putchar(d);
    putchar('\n');

    d = '\60'; // '0'
    putchar(d);
    putchar('\n');

    d = '\0'; // null
    putchar(d);
    putchar('\n');

    return 0;
}