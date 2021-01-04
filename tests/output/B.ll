declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	%2 = add i32 0, 10
	%3 = add i32 0, 5
	%4 = add i32 %2, %3
	%5 = add i32 0, 4
	%6 = add i32 0, 3
	%7 = mul i32 %5, %6
	%8 = add i32 %4, %7
	%9 = alloca i32
	store i32 %8, i32* %9
	%10 = alloca double
	store double 5.100000e+00, double* %10
	%11 = alloca i32
	store i32 104, i32* %11
	%12 = load i32, i32* %11
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	%14 = add i32 0, 10
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	store i32 70, i32* %9
	%16 = load i32, i32* %9
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	%18 = add i32 0, 10
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	store i32 10, i32* %1
	%20 = add i32 0, 15
	%21 = sub i32 0, %20
	store i32 %21, i32* %9
	%22 = fadd double 0.0, 6.200000e+00
	store double %22, double* %10
	store i32 1, i32* %1
	%23 = load i32, i32* %1
	store i32 1, i32* %1
	%24 = load i32, i32* %1
	store i32 %24, i32* %9
	%25 = load i32, i32* %9
	%26 = sitofp i32 %25 to double
	store double %26, double* %10
	store i32 120, i32* %11
	%27 = load i32, i32* %11
	%28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
	%29 = add i32 0, 10
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	store i32 48, i32* %11
	%31 = load i32, i32* %11
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = add i32 0, 10
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	store i32 0, i32* %11
	%35 = load i32, i32* %11
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	%37 = add i32 0, 10
	%38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
	ret i32 0
}
