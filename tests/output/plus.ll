declare i32 @putchar(...)
declare i32 @getchar(...)


define void @print_equality(double, double) {
	%3 = alloca double
	store double %0, double* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = load double, double* %3
	%6 = load double, double* %4
	%7 = fcmp oeq double %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	%10 = add i32 0, 121
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 101
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	%14 = add i32 0, 115
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	br label %label2

label1:
	%16 = add i32 0, 110
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	%18 = add i32 0, 111
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	br label %label2

label2:
	%20 = add i32 0, 10
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	ret void
}

define i32 @main() {
	%1 = fadd double 0.0, 1.000000e+00
	%2 = fadd double 0.0, 1.000000e+00
	call void @print_equality(double %1, double %2)
	%3 = fadd double 0.0, 1.000000e+00
	%4 = fadd double 0.0, 1.000000e+00
	%5 = fsub double 0.0, %4
	%6 = fsub double 0.0, %5
	call void @print_equality(double %3, double %6)
	%7 = add i32 0, 65
	%8 = sitofp i32 %7 to double
	%9 = add i32 0, 65
	%10 = sitofp i32 %9 to double
	call void @print_equality(double %8, double %10)
	%11 = fadd double 0.0, 4.200000e+00
	%12 = fsub double 0.0, %11
	%13 = fadd double 0.0, 4.200000e+00
	%14 = fadd double 0.0, 2.000000e-01
	%15 = fadd double %13, %14
	%16 = fadd double 0.0, 2.000000e-01
	%17 = fsub double %15, %16
	%18 = fsub double 0.0, %17
	call void @print_equality(double %12, double %18)
	ret i32 0
}
