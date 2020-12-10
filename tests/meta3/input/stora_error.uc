/* Semantic errors in function definitions */
/* Declarations */
void f1(void);
int f2(double a);
int f3(char a);
void f4(int a, short b, double c);
int f5(char a, int b, int c);
double f6(short a, double b, int c);
double f7(short a, double b, int b);
/* Definitions - different return type */
char f1(void){}
double f2(double a){}
void f3(char a){}
int f4(int A, short B, double C){}
double f5(char d, int e, int f){}
void f6(short d, double e, int f){}
/* Definitions - more arguments */
int f2(int a, int b){}
void f3(char a, char b){}
int f2(int a, int p){}
void f3(char a, char v){}
void f4(int a, short b, double c, char f){}
int f5(char a, int b, int c, double e){}
double f6(short a, double b, int c, char u){}
void f4(int a, short b, double c, char f, double t){}
int f5(char a, int b, int c, double e, char t){}
double f6(short a, double b, int c, char u, short i){}
/* Definitions - fewer arguments */
char f2(void){}
int f3(void){}
void f4(int a, short b){}
int f5(char a, int b){}
double f6(short a, double b){}
void f4(int a){}
int f5(char a){}
double f6(short a){}
/* Definitions - different arguments */
void f1(int a){}
int f2(int a){}
int f3(void){}
void f4(int a, double b, double c){}
int f5(char a, int b, double c){}
/* Definitions - different parameter names - OK */
void f1(void){}
int f2(double a){}
int f3(char c){}
void f4(int d, short e, double f){}
int f5(char d, int e, int f){}
double f6(short d, double e, int f){}
double f7(short d, double e, int f){}
/* Redefinitions */
char f1(void) {}
int f2(int a) {}
void f3(char a) {}
int f4(int A, short B, double C) {}
double f5(char d, int e, int f) {}
void f6(short d, double e, int f) {}
/* Definitions - repeated parameter names */
void F4(int a, short a, double b){}
int G5(char x, char y, char y){}
char H6(int x, char y, int x){}