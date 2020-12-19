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
	store i32 1, i32* %1
	store i32 2, i32* %3
	%4 = add i32 0, (null)
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
	store i32 2, i32* %1
	store i32 4, i32* %2
	%12 = add i32 0, (null)
	%13 = icmp ne i32 %12, 0
	br i1 %13, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	store i32 2, i32* %1
	%14 = add i32 0, (null)
	%15 = call i32 @f2()
	store i32 %15, i32* %3
	%16 = add i32 0, (null)
	store i32 3, i32* %2
	%17 = add i32 0, (null)
	%18 = add i32 0, 1
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	store i32 1, i32* %1
	store i32 2, i32* %3
	%20 = add i32 0, (null)
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %label18, label %label19

label18:
	store i32 1, i32* %1
	store i32 2, i32* %3
	%22 = add i32 0, (null)
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label18, label %label19

label19:
	%24 = add i32 0, 10
	%25 = icmp ne i32 %24, 0
	br i1 %25, label %label20, label %label21

label20:
	%26 = add i32 0, 10
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label20, label %label21

label21:
	%28 = call i32 @f2()
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label22, label %label23

label22:
	%30 = call i32 @f2()
	%31 = icmp ne i32 %30, 0
	br i1 %31, label %label22, label %label23

label23:
	%32 = load i32, i32* %3
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label24, label %label25

label24:
	%34 = load i32, i32* %3
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label24, label %label25

label25:
	store i32 2, i32* %1
	store i32 4, i32* %2
	%36 = add i32 0, (null)
	%37 = icmp ne i32 %36, 0
	br i1 %37, label %label26, label %label27

label26:
	store i32 2, i32* %1
	store i32 4, i32* %2
	%38 = add i32 0, (null)
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %label26, label %label27

label27:
	store i32 2, i32* %1
	%40 = add i32 0, (null)
	%41 = call i32 @f2()
	store i32 %41, i32* %3
	%42 = add i32 0, (null)
	store i32 3, i32* %2
	%43 = add i32 0, (null)
	%44 = add i32 0, 1
	%45 = icmp ne i32 %44, 0
	br i1 %45, label %label28, label %label29

label28:
	store i32 2, i32* %1
	%46 = add i32 0, (null)
	%47 = call i32 @f2()
	store i32 %47, i32* %3
	%48 = add i32 0, (null)
	store i32 3, i32* %2
	%49 = add i32 0, (null)
	%50 = add i32 0, 1
	%51 = icmp ne i32 %50, 0
	br i1 %51, label %label28, label %label29

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
	%9 = add i32 0, (null)
	%10 = alloca i32
	store i32 %9, i32* %10
	store i32 2, i32* %1
	%11 = add i32 0, (null)
	%12 = call i32 @f2()
	store i32 %12, i32* %2
	%13 = add i32 0, (null)
	%14 = load i32, i32* %4
	%15 = add i32 0, 3
	%16 = alloca i32
	store i32 %15, i32* %16
	%17 = call i32 @f1()
	%18 = load i32, i32* %6
	store i32 2, i32* %1
	%19 = add i32 0, (null)
	%20 = add i32 0, 10
	ret i32 %20
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
	%9 = add i32 0, (null)
	%10 = alloca i32
	store i32 %9, i32* %10
	store i32 2, i32* %1
	%11 = add i32 0, (null)
	%12 = call i32 @f4()
	store i32 %12, i32* %2
	%13 = add i32 0, (null)
	%14 = load i32, i32* %4
	%15 = add i32 0, 3
	%16 = alloca i32
	store i32 %15, i32* %16
	%17 = call i32 @f3()
	%18 = load i32, i32* %6
	store i32 2, i32* %1
	%19 = add i32 0, (null)
	%20 = add i32 0, 10
	ret i32 %20
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
	%9 = add i32 0, (null)
	%10 = alloca i32
	store i32 %9, i32* %10
	store i32 2, i32* %1
	%11 = add i32 0, (null)
	%12 = call i32 @f6()
	store i32 %12, i32* %2
	%13 = add i32 0, (null)
	%14 = load i32, i32* %4
	%15 = add i32 0, 3
	%16 = alloca i32
	store i32 %15, i32* %16
	%17 = call i32 @f5()
	%18 = load i32, i32* %6
	store i32 2, i32* %1
	%19 = add i32 0, (null)
	%20 = add i32 0, 10
	ret i32 %20
}

define double @comma_double_tests() {
	%1 = alloca double
	store double 1.000000e+00, double* %1
	%2 = alloca double
	store double 2.000000e+00, double* %2
	%3 = fadd double 0.0, 1.000000e+01
	%4 = sitofp i32 %3 to double
	%5 = alloca double
	store double %4, double* %5
	%6 = call double @f8()
	%7 = sitofp i32 %6 to double
	%8 = alloca double
	store double %7, double* %8
	%9 = load double, double* %5
	%10 = sitofp i32 %9 to double
	%11 = alloca double
	store double %10, double* %11
	store double 2.100000e+00, double* %1
	store double 4.000000e+00, double* %5
	%12 = add i32 0, (null)
	%13 = alloca double
	store double %12, double* %13
	store double 2.000000e+00, double* %1
	%14 = add i32 0, (null)
	%15 = call double @f8()
	store double %15, double* %2
	%16 = add i32 0, (null)
	%17 = load double, double* %5
	%18 = fadd double 0.0, 3.200000e+00
	%19 = alloca double
	store double %18, double* %19
	%20 = call double @f7()
	%21 = load double, double* %8
	store double 2.000000e+00, double* %1
	%22 = add i32 0, (null)
	%23 = fadd double 0.0, 1.010200e+01
	ret double %23
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
