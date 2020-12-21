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
	%4 = load i32, i32* %1
	store i32 2, i32* %3
	%5 = load i32, i32* %3
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%7 = add i32 0, 5
	%8 = add i32 0, 10
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%10 = call i32 @f1()
	%11 = call i32 @f2()
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%13 = load i32, i32* %1
	%14 = load i32, i32* %3
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	store i32 2, i32* %1
	%16 = load i32, i32* %1
	store i32 4, i32* %2
	%17 = load i32, i32* %2
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%19 = call i32 @f1()
	store i32 2, i32* %1
	%20 = load i32, i32* %1
	%21 = call i32 @f2()
	store i32 %21, i32* %3
	%22 = load i32, i32* %3
	store i32 3, i32* %2
	%23 = load i32, i32* %2
	%24 = add i32 0, 1
	%25 = icmp ne i32 %24, 0
	br i1 %25, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	store i32 1, i32* %1
	%26 = load i32, i32* %1
	store i32 2, i32* %3
	%27 = load i32, i32* %3
	%28 = icmp ne i32 %27, 0
	br i1 %28, label %label18, label %label19

label18:
	store i32 1, i32* %1
	%29 = load i32, i32* %1
	store i32 2, i32* %3
	%30 = load i32, i32* %3
	%31 = icmp ne i32 %30, 0
	br i1 %31, label %label18, label %label19

label19:
	%32 = add i32 0, 5
	%33 = add i32 0, 10
	%34 = icmp ne i32 %33, 0
	br i1 %34, label %label20, label %label21

label20:
	%35 = add i32 0, 5
	%36 = add i32 0, 10
	%37 = icmp ne i32 %36, 0
	br i1 %37, label %label20, label %label21

label21:
	%38 = call i32 @f1()
	%39 = call i32 @f2()
	%40 = icmp ne i32 %39, 0
	br i1 %40, label %label22, label %label23

label22:
	%41 = call i32 @f1()
	%42 = call i32 @f2()
	%43 = icmp ne i32 %42, 0
	br i1 %43, label %label22, label %label23

label23:
	%44 = load i32, i32* %1
	%45 = load i32, i32* %3
	%46 = icmp ne i32 %45, 0
	br i1 %46, label %label24, label %label25

label24:
	%47 = load i32, i32* %1
	%48 = load i32, i32* %3
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label24, label %label25

label25:
	store i32 2, i32* %1
	%50 = load i32, i32* %1
	store i32 4, i32* %2
	%51 = load i32, i32* %2
	%52 = icmp ne i32 %51, 0
	br i1 %52, label %label26, label %label27

label26:
	store i32 2, i32* %1
	%53 = load i32, i32* %1
	store i32 4, i32* %2
	%54 = load i32, i32* %2
	%55 = icmp ne i32 %54, 0
	br i1 %55, label %label26, label %label27

label27:
	%56 = call i32 @f1()
	store i32 2, i32* %1
	%57 = load i32, i32* %1
	%58 = call i32 @f2()
	store i32 %58, i32* %3
	%59 = load i32, i32* %3
	store i32 3, i32* %2
	%60 = load i32, i32* %2
	%61 = add i32 0, 1
	%62 = icmp ne i32 %61, 0
	br i1 %62, label %label28, label %label29

label28:
	%63 = call i32 @f1()
	store i32 2, i32* %1
	%64 = load i32, i32* %1
	%65 = call i32 @f2()
	store i32 %65, i32* %3
	%66 = load i32, i32* %3
	store i32 3, i32* %2
	%67 = load i32, i32* %2
	%68 = add i32 0, 1
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @comma_char_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = load i32, i32* %2
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 5
	%8 = add i32 0, 10
	%9 = alloca i32
	store i32 %8, i32* %9
	%10 = load i32, i32* %9
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = call i32 @f1()
	%13 = call i32 @f2()
	%14 = alloca i32
	store i32 %13, i32* %14
	%15 = load i32, i32* %14
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = load i32, i32* %1
	%18 = load i32, i32* %9
	%19 = alloca i32
	store i32 %18, i32* %19
	%20 = load i32, i32* %1
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	%22 = load i32, i32* %9
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = load i32, i32* %19
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	store i32 2, i32* %1
	%26 = load i32, i32* %1
	store i32 4, i32* %9
	%27 = load i32, i32* %9
	%28 = alloca i32
	store i32 %27, i32* %28
	%29 = load i32, i32* %1
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = load i32, i32* %9
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = load i32, i32* %28
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	%35 = call i32 @f1()
	store i32 2, i32* %1
	%36 = load i32, i32* %1
	%37 = call i32 @f2()
	store i32 %37, i32* %2
	%38 = load i32, i32* %2
	%39 = load i32, i32* %9
	%40 = add i32 0, 3
	%41 = alloca i32
	store i32 %40, i32* %41
	%42 = load i32, i32* %41
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	%44 = load i32, i32* %1
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	%46 = load i32, i32* %9
	%47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
	%48 = load i32, i32* %2
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	%50 = load i32, i32* %1
	%51 = call i32 @f1()
	%52 = load i32, i32* %14
	store i32 2, i32* %1
	%53 = load i32, i32* %1
	%54 = add i32 0, 10
	ret i32 %54
}

define i32 @comma_short_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = load i32, i32* %2
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 5
	%8 = add i32 0, 10
	%9 = alloca i32
	store i32 %8, i32* %9
	%10 = load i32, i32* %9
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = call i32 @f3()
	%13 = call i32 @f4()
	%14 = alloca i32
	store i32 %13, i32* %14
	%15 = load i32, i32* %14
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = load i32, i32* %1
	%18 = load i32, i32* %9
	%19 = alloca i32
	store i32 %18, i32* %19
	%20 = load i32, i32* %1
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	%22 = load i32, i32* %9
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = load i32, i32* %19
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	store i32 2, i32* %1
	%26 = load i32, i32* %1
	store i32 4, i32* %9
	%27 = load i32, i32* %9
	%28 = alloca i32
	store i32 %27, i32* %28
	%29 = load i32, i32* %1
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = load i32, i32* %9
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = load i32, i32* %28
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	%35 = call i32 @f3()
	store i32 2, i32* %1
	%36 = load i32, i32* %1
	%37 = call i32 @f4()
	store i32 %37, i32* %2
	%38 = load i32, i32* %2
	%39 = load i32, i32* %9
	%40 = add i32 0, 3
	%41 = alloca i32
	store i32 %40, i32* %41
	%42 = load i32, i32* %41
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	%44 = load i32, i32* %1
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	%46 = load i32, i32* %9
	%47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
	%48 = load i32, i32* %2
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	%50 = load i32, i32* %1
	%51 = call i32 @f3()
	%52 = load i32, i32* %14
	store i32 2, i32* %1
	%53 = load i32, i32* %1
	%54 = add i32 0, 10
	ret i32 %54
}

define i32 @comma_int_tests() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = load i32, i32* %2
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 5
	%8 = add i32 0, 10
	%9 = alloca i32
	store i32 %8, i32* %9
	%10 = load i32, i32* %9
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = call i32 @f5()
	%13 = call i32 @f6()
	%14 = alloca i32
	store i32 %13, i32* %14
	%15 = load i32, i32* %14
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = load i32, i32* %1
	%18 = load i32, i32* %9
	%19 = alloca i32
	store i32 %18, i32* %19
	%20 = load i32, i32* %1
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	%22 = load i32, i32* %9
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = load i32, i32* %19
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	store i32 2, i32* %1
	%26 = load i32, i32* %1
	store i32 4, i32* %9
	%27 = load i32, i32* %9
	%28 = alloca i32
	store i32 %27, i32* %28
	%29 = load i32, i32* %1
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = load i32, i32* %9
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = load i32, i32* %28
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	%35 = call i32 @f5()
	store i32 2, i32* %1
	%36 = load i32, i32* %1
	%37 = call i32 @f6()
	store i32 %37, i32* %2
	%38 = load i32, i32* %2
	%39 = load i32, i32* %9
	%40 = add i32 0, 3
	%41 = alloca i32
	store i32 %40, i32* %41
	%42 = load i32, i32* %41
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	%44 = load i32, i32* %1
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	%46 = load i32, i32* %9
	%47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
	%48 = load i32, i32* %2
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	%50 = load i32, i32* %1
	%51 = call i32 @f5()
	%52 = load i32, i32* %14
	store i32 2, i32* %1
	%53 = load i32, i32* %1
	%54 = add i32 0, 10
	ret i32 %54
}

define double @comma_double_tests() {
	%1 = alloca double
	store double 1.000000e+00, double* %1
	%2 = alloca double
	store double 2.000000e+00, double* %2
	%3 = fadd double 0.0, 5.000000e+00
	%4 = fadd double 0.0, 1.000000e+01
	%5 = alloca double
	store double %4, double* %5
	%6 = call double @f7()
	%7 = call double @f8()
	%8 = alloca double
	store double %7, double* %8
	%9 = load double, double* %1
	%10 = load double, double* %5
	%11 = alloca double
	store double %10, double* %11
	store double 2.100000e+00, double* %1
	%12 = load double, double* %1
	store double 4.000000e+00, double* %5
	%13 = load double, double* %5
	%14 = alloca double
	store double %13, double* %14
	%15 = call double @f7()
	store double 2.000000e+00, double* %1
	%16 = load double, double* %1
	%17 = call double @f8()
	store double %17, double* %2
	%18 = load double, double* %2
	%19 = load double, double* %5
	%20 = fadd double 0.0, 3.200000e+00
	%21 = alloca double
	store double %20, double* %21
	%22 = load double, double* %1
	%23 = call double @f7()
	%24 = load double, double* %8
	store double 2.000000e+00, double* %1
	%25 = load double, double* %1
	%26 = fadd double 0.0, 1.010200e+01
	ret double %26
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
