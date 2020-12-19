declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @f1() {
	ret i32 65
	ret i32 0
}

define i32 @f2() {
	ret i32 66
	ret i32 0
}

define i32 @f3() {
	ret i32 1
}

define i32 @f4() {
	ret i32 2
}

define i32 @f5() {
	ret i32 1
}

define i32 @f6() {
	ret i32 2
}

define double @f7() {
	ret double 1.000000e+00
}

define double @f8() {
	ret double 2.000000e+00
}

define i32 @comma_expr_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca i32
	store i32 3, i32* %3
	store i32 2, i32* %3
	%4 = load i32, i32* %3
	%5 = icmp ne i32 %4, 0
	br i1 %5, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%6 = add i32 0, 10
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%8 = call i32 @f2()
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%10 = load i32, i32* %3
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	store i32 4, i32* %2
	%12 = load i32, i32* %2
	%13 = icmp ne i32 %12, 0
	br i1 %13, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%14 = add i32 0, 1
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	store i32 2, i32* %3
	%16 = load i32, i32* %3
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %label18, label %label19

label18:
	store i32 2, i32* %3
	%18 = load i32, i32* %3
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label18, label %label19

label19:
	%20 = add i32 0, 10
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %label20, label %label21

label20:
	%22 = add i32 0, 10
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label20, label %label21

label21:
	%24 = call i32 @f2()
	%25 = icmp ne i32 %24, 0
	br i1 %25, label %label22, label %label23

label22:
	%26 = call i32 @f2()
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label22, label %label23

label23:
	%28 = load i32, i32* %3
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label24, label %label25

label24:
	%30 = load i32, i32* %3
	%31 = icmp ne i32 %30, 0
	br i1 %31, label %label24, label %label25

label25:
	store i32 4, i32* %2
	%32 = load i32, i32* %2
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label26, label %label27

label26:
	store i32 4, i32* %2
	%34 = load i32, i32* %2
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label26, label %label27

label27:
	%36 = add i32 0, 1
	%37 = icmp ne i32 %36, 0
	br i1 %37, label %label28, label %label29

label28:
	%38 = add i32 0, 1
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @comma_char_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = add i32 0, 10
	%4 = alloca i32
	store i32 %3, i32* %4
	%5 = call i32 @f2()
	%6 = alloca i32
	store i32 %5, i32* %6
	%7 = load i32, i32* %4
	%8 = alloca i32
	store i32 %7, i32* %8
	store i32 2, i32* %1
	store i32 4, i32* %4
	store i32 4, i32* %4
	%9 = load i32, i32* %4
	%10 = alloca i32
	store i32 %9, i32* %10
	store i32 2, i32* %1
	store i32 2, i32* %1
	%11 = load i32, i32* %1
	%12 = call i32 @f2()
	store i32 %12, i32* %2
	%13 = call i32 @f2()
	store i32 %13, i32* %2
	%14 = load i32, i32* %2
	%15 = load i32, i32* %4
	%16 = add i32 0, 3
	%17 = alloca i32
	store i32 %16, i32* %17
	%18 = call i32 @f1()
	%19 = load i32, i32* %6
	store i32 2, i32* %1
	store i32 2, i32* %1
	%20 = load i32, i32* %1
	%21 = add i32 0, 10
	ret i32 %21
}

define i32 @comma_short_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = add i32 0, 10
	%4 = alloca i32
	store i32 %3, i32* %4
	%5 = call i32 @f4()
	%6 = alloca i32
	store i32 %5, i32* %6
	%7 = load i32, i32* %4
	%8 = alloca i32
	store i32 %7, i32* %8
	store i32 2, i32* %1
	store i32 4, i32* %4
	store i32 4, i32* %4
	%9 = load i32, i32* %4
	%10 = alloca i32
	store i32 %9, i32* %10
	store i32 2, i32* %1
	store i32 2, i32* %1
	%11 = load i32, i32* %1
	%12 = call i32 @f4()
	store i32 %12, i32* %2
	%13 = call i32 @f4()
	store i32 %13, i32* %2
	%14 = load i32, i32* %2
	%15 = load i32, i32* %4
	%16 = add i32 0, 3
	%17 = alloca i32
	store i32 %16, i32* %17
	%18 = call i32 @f3()
	%19 = load i32, i32* %6
	store i32 2, i32* %1
	store i32 2, i32* %1
	%20 = load i32, i32* %1
	%21 = add i32 0, 10
	ret i32 %21
}

define i32 @comma_int_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = add i32 0, 10
	%4 = alloca i32
	store i32 %3, i32* %4
	%5 = call i32 @f6()
	%6 = alloca i32
	store i32 %5, i32* %6
	%7 = load i32, i32* %4
	%8 = alloca i32
	store i32 %7, i32* %8
	store i32 2, i32* %1
	store i32 4, i32* %4
	store i32 4, i32* %4
	%9 = load i32, i32* %4
	%10 = alloca i32
	store i32 %9, i32* %10
	store i32 2, i32* %1
	store i32 2, i32* %1
	%11 = load i32, i32* %1
	%12 = call i32 @f6()
	store i32 %12, i32* %2
	%13 = call i32 @f6()
	store i32 %13, i32* %2
	%14 = load i32, i32* %2
	%15 = load i32, i32* %4
	%16 = add i32 0, 3
	%17 = alloca i32
	store i32 %16, i32* %17
	%18 = call i32 @f5()
	%19 = load i32, i32* %6
	store i32 2, i32* %1
	store i32 2, i32* %1
	%20 = load i32, i32* %1
	%21 = add i32 0, 10
	ret i32 %21
}

define double @comma_double_tests() {
	%1 = alloca double
	store double 1.000000e+00, double* %1
	%2 = alloca double
	store double 2.000000e+00, double* %2
	%3 = fadd double 0.0, 1.000000e+01
	%4 = alloca double
	store double %3, double* %4
	%5 = call double @f8()
	%6 = alloca double
	store double %5, double* %6
	%7 = load double, double* %4
	%8 = alloca double
	store double %7, double* %8
	store double 2.100000e+00, double* %1
	store double 4.000000e+00, double* %4
	store double 4.000000e+00, double* %4
	%9 = load double, double* %4
	%10 = alloca double
	store double %9, double* %10
	store double 2.000000e+00, double* %1
	store double 2.000000e+00, double* %1
	%11 = load double, double* %1
	%12 = call double @f8()
	store double %12, double* %2
	%13 = call double @f8()
	store double %13, double* %2
	%14 = load double, double* %2
	%15 = load double, double* %4
	%16 = fadd double 0.0, 3.200000e+00
	%17 = alloca double
	store double %16, double* %17
	%18 = fadd double 0.0, 1.010200e+01
	ret double %18
}

define i32 @main() {
	%1 = alloca double
	store double 1.200000e+19, double* %1
	%2 = alloca double
	store double 0.000000e+00, double* %2
	%3 = call i32 @comma_char_tests()
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = call i32 @comma_short_tests()
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = call i32 @comma_int_tests()
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	ret i32 0
}
