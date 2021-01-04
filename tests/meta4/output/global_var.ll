declare i32 @putchar(...)
declare i32 @getchar(...)

@a = global i32 0
@b = global double 0.000000e+00

define i32 @int_global_var() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca i32
	%4 = load i32, i32* @a
	store i32 %4, i32* %3
	%5 = load i32, i32* %1
	store i32 %5, i32* @a
	%6 = add i32 0, 5
	%7 = add i32 0, 4
	%8 = add i32 %6, %7
	store i32 %8, i32* @a
	%9 = load i32, i32* %1
	%10 = load i32, i32* %2
	%11 = add i32 %9, %10
	store i32 %11, i32* @a
	%12 = load i32, i32* @a
	ret i32 %12
	ret i32 0
}

define double @test2() {
	%1 = alloca double
	%2 = load double, double* @b
	store double %2, double* %1
	ret double 0.000000e+00
}

define double @double_global_var() {
	%1 = alloca double
	store double 1.400000e+12, double* %1
	%2 = alloca double
	store double 1.512000e+36, double* %2
	%3 = alloca double
	%4 = load double, double* @b
	store double %4, double* %3
	%5 = alloca double
	%6 = load i32, i32* @a
	%7 = sitofp i32 %6 to double
	store double %7, double* %5
	%8 = load double, double* %1
	store double %8, double* @b
	%9 = fadd double 0.0, 1.240000e+00
	%10 = fadd double 0.0, 1.525000e+01
	%11 = fadd double %9, %10
	store double %11, double* @b
	%12 = load double, double* %1
	%13 = load double, double* %2
	%14 = fadd double %12, %13
	store double %14, double* @b
	%15 = load double, double* @b
	ret double %15
	ret double 0.000000e+00
}

define i32 @test() {
	%1 = add i32 0, 1
	%2 = add i32 0, 1
	%3 = add i32 %1, %2
	store i32 %3, i32* @a
	%4 = load i32, i32* @a
	%5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
	ret i32 0
}

define i32 @main() {
	%1 = call i32 @int_global_var()
	%2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
	%3 = call double @double_global_var()
	ret i32 0
}
