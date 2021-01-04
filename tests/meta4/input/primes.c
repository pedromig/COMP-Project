void primes(int low, int high) {
    int i, flag, stop;

    while (low < high) {
        flag = 0;

        if (low <= 1) {
            low = low + 1;

        } else {
            i = 2;
            stop = 0;
            while (i <= low / 2 && !stop) {
                if (low % i == 0) {
                    flag = 1;
                    stop = 1;
                }
                i = i + 1;
            }

            if (flag == 0) {
                putchar('0' + low);
            }
            low = low + 1;
        }
    }
    return;
}

int main(void) {
    primes(1, 50);
    -5.5;
}