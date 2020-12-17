declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @a(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define i32 @b(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define i32 @c(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define double @d(double) {
	%2 = alloca double
	store double %0, double* %2
	%3 = load double, double* %2
	ret double %3
}

define i32 @e(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = add i32 %5, %6
	%8 = add i32 0, 12
	%9 = call i32 @c(i32 %8)
	%10 = add i32 %7, %9
	ret i32 %10
}

define double @f(double, i32) {
	%3 = alloca double
	store double %0, double* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load double, double* %3
	%6 = call double @d(double %5)
	%7 = load i32, i32* %4
	%8 = call i32 @a(i32 %7)
	%9 = fadd double %6, %8
	ret double %9
}

define double @g(double, double) {
	%3 = alloca double
	store double %0, double* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = load double, double* %3
	%6 = load double, double* %4
	%7 = fmul double %5, %6
	%8 = add i32 0, 10
	%9 = call i32 @b(i32 %8)
	%10 = fadd double %7, %9
	ret double %10
}

define double @h() {
	%1 = add i32 0, 1
	%2 = call i32 @c(i32 %1)
	%3 = fadd double 0.0, 1.700000e+00
	%4 = call double @d(double %3)
	%5 = call double @g(double %2, double %4)
	%6 = fadd double 0.0, 1.600000e+00
	%7 = add i32 0, 65
	%8 = call double @f(double %6, i32 %7)
	%9 = add i32 0, 88
	%10 = call i32 @a(i32 %9)
	%11 = call double @f(double %8, i32 %10)
	%12 = call double @g(double %5, double %11)
	ret double %12
}

define i32 @main() {
	%1 = add i32 0, 1
	%2 = call i32 @c(i32 %1)
	%3 = fadd double 0.0, 1.700000e+00
	%4 = call double @d(double %3)
	%5 = call double @g(double %2, double %4)
	%6 = add i32 0, 1
	%7 = call i32 @c(i32 %6)
	%8 = fadd double 0.0, 1.700000e+00
	%9 = call double @d(double %8)
	%10 = call double @g(double %7, double %9)
	%11 = fadd double 0.0, 1.600000e+00
	%12 = add i32 0, 65
	%13 = call double @f(double %11, i32 %12)
	%14 = add i32 0, 88
	%15 = call i32 @a(i32 %14)
	%16 = call double @f(double %13, i32 %15)
	%17 = call double @g(double %10, double %16)
	ret i32 0
}
