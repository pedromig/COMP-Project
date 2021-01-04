declare i32 @putchar(...)
declare i32 @getchar(...)

@fabio = global i32 80

define i32 @a() {
	%1 = load i32, i32* @fabio
	%2 = add i32 0, 2
	%3 = add i32 %1, %2
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = add i32 0, 10
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = load i32, i32* @fabio
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	%9 = add i32 0, 10
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	%11 = load i32, i32* @fabio
	%12 = add i32 0, 5
	%13 = add i32 %11, %12
	store i32 %13, i32* @fabio
	%14 = load i32, i32* @fabio
	ret i32 %14
	ret i32 5
	ret i32 97
	ret i32 0
}

define i32 @b() {
	%1 = load i32, i32* @fabio
	%2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
	%3 = add i32 0, 10
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	ret i32 0
}

define void @c() {
	ret void
}

define void @d(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	ret void
	ret void
	ret void
	ret void
	store i32 20, i32* @fabio
	ret void
}

define i32 @e(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = add i32 0, 10
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = load i32, i32* %2
	%8 = add i32 0, 5
	%9 = add i32 %7, %8
	store i32 %9, i32* %2
	%10 = load i32, i32* %2
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 10
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	%14 = load i32, i32* %2
	ret i32 %14
}

define double @f(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	ret double 0.000000e+00
}

define i32 @main() {
	%1 = add i32 0, 5
	call void @d(i32 %1)
	%2 = alloca i32
	%3 = alloca double
	%4 = call i32 @a()
	store i32 %4, i32* %2
	%5 = call i32 @b()
	store i32 %5, i32* %2
	%6 = add i32 0, 1
	call void @d(i32 %6)
	call void @c()
	%7 = add i32 0, 100
	%8 = call i32 @e(i32 %7)
	%9 = sitofp i32 %8 to double
	store double %9, double* %3
	%10 = add i32 0, 2
	%11 = call double @f(i32 %10)
	store double %11, double* %3
	%12 = call i32 @a()
	%13 = call i32 @b()
	call void @c()
	%14 = add i32 0, 97
	call void @d(i32 %14)
	%15 = add i32 0, 100
	%16 = call i32 @e(i32 %15)
	store i32 %16, i32* %2
	%17 = load i32, i32* %2
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = add i32 0, 97
	%20 = call double @f(i32 %19)
	ret i32 0
}
