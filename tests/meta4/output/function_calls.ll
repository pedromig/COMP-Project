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
	%9 = sitofp i32 %8 to double
	%10 = fadd double %6, %9
	ret double %10
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
	%10 = sitofp i32 %9 to double
	%11 = fadd double %7, %10
	ret double %11
}

define double @h() {
	%1 = add i32 0, 1
	%2 = call i32 @c(i32 %1)
	%3 = sitofp i32 %2 to double
	%4 = fadd double 0.0, 1.700000e+00
	%5 = call double @d(double %4)
	%6 = call double @g(double %3, double %5)
	%7 = fadd double 0.0, 1.600000e+00
	%8 = add i32 0, 65
	%9 = call double @f(double %7, i32 %8)
	%10 = add i32 0, 88
	%11 = call i32 @a(i32 %10)
	%12 = call double @f(double %9, i32 %11)
	%13 = call double @g(double %6, double %12)
	ret double %13
}

define i32 @main() {
	%1 = add i32 0, 1
	%2 = call i32 @c(i32 %1)
	%3 = sitofp i32 %2 to double
	%4 = fadd double 0.0, 1.700000e+00
	%5 = call double @d(double %4)
	%6 = call double @g(double %3, double %5)
	%7 = add i32 0, 1
	%8 = call i32 @c(i32 %7)
	%9 = sitofp i32 %8 to double
	%10 = fadd double 0.0, 1.700000e+00
	%11 = call double @d(double %10)
	%12 = call double @g(double %9, double %11)
	%13 = fadd double 0.0, 1.600000e+00
	%14 = add i32 0, 65
	%15 = call double @f(double %13, i32 %14)
	%16 = add i32 0, 88
	%17 = call i32 @a(i32 %16)
	%18 = call double @f(double %15, i32 %17)
	%19 = call double @g(double %12, double %18)
	ret i32 0
}
