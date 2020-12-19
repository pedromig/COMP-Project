
char aa(char a) { return a; }
short bb(short b) { return b; }
int cc(int c) { return c; }
double dd(double d) { return d; }

int ee(char a) {
    return aa(a);
}

int ff(short a) {
    return bb(a);
}

char gg(int a) {
    return cc(a);
}

short hh(char a) {
    return aa(a);
}

double ii(double x) {
    return dd(x);
}

double jj(char a) {
    return aa(a);
}

double kk(int a) {
    return cc(a);
}

void ll(int a) {
    return;
}

int main(void) {
    return 0;
}