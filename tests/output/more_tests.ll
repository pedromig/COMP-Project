declare i32 @putchar(...)
declare i32 @getchar(...)

@cc = global i32 0

define void @f() {
	store i32 89, i32* @cc
	ret void
}

define i32 @main() {
	store i32 70, i32* @cc
	%1 = alloca double
	store double 1.200000e+00, double* %1
	%2 = alloca double
	store double 1.500000e+00, double* %2
	%3 = fadd double 0.0, 1.500000e+00
	%4 = fadd double 0.0, 1.200000e+00
	%5 = fdiv double %3, %4
	%6 = alloca double
	store double %5, double* %6
	%7 = add i32 0, 0
	%8 = add i32 0, 12
	%9 = and i32 %7, %8
	%10 = alloca i32
	store i32 %9, i32* %10
	%11 = alloca i32
	store i32 65, i32* %11
	%12 = load i32, i32* %11
	%13 = alloca i32
	store i32 %12, i32* %13
	%14 = load i32, i32* %11
	%15 = sub i32 0, %14
	%16 = sub i32 0, %15
	%17 = alloca i32
	store i32 %16, i32* %17
	%18 = add i32 0, 1
	%19 = add i32 0, 2
	%20 = mul i32 %18, %19
	%21 = add i32 0, 4
	%22 = or i32 %21, %20
	%23 = alloca i32
	store i32 %22, i32* %23
	%24 = load i32, i32* %10
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	%26 = alloca i32
	store i32 67, i32* %26
	%27 = add i32 0, 1
	%28 = icmp ne i32 %27, 0
	br i1 %28, label %label0, label %label1

label0:
	%29 = load i32, i32* %26
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = add i32 0, 88
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = load i32, i32* @cc
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	br label %label2

label1:
	%35 = load i32, i32* %26
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	%37 = add i32 0, 31
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label3, label %label4

label3:
	%39 = add i32 0, 66
	%40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %39)
	br label %label5

label4:
	br label %label5

label5:
	br label %label2

label2:
	%41 = load i32, i32* %26
	%42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
	ret i32 0
}
