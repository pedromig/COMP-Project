declare i32 @putchar(...)
declare i32 @getchar(...)

@a = global double 3.000000e+00

define i32 @main() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca i32
	store i32 3, i32* %3
	%4 = alloca i32
	%5 = load i32, i32* %1
	%6 = load i32, i32* %2
	%7 = add i32 %5, %6
	%8 = load i32, i32* %3
	%9 = add i32 %7, %8
	store i32 %9, i32* %4
	ret i32 0
}

define i32 @f1() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca i32
	store i32 3, i32* %3
	%4 = alloca double
	%5 = load i32, i32* %1
	%6 = sitofp i32 %5 to double
	%7 = load i32, i32* %2
	%8 = sitofp i32 %7 to double
	%9 = fadd double %6, %8
	%10 = load i32, i32* %3
	%11 = sitofp i32 %10 to double
	%12 = fadd double %9, %11
	store double %12, double* %4
	ret i32 0
}

define i32 @f2() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca double
	store double 3.000000e+00, double* %3
	%4 = alloca double
	%5 = load i32, i32* %1
	%6 = sitofp i32 %5 to double
	%7 = load i32, i32* %2
	%8 = sitofp i32 %7 to double
	%9 = fadd double %6, %8
	%10 = load double, double* %3
	%11 = fadd double %9, %10
	store double %11, double* %4
	ret i32 0
}

define i32 @f3() {
	%1 = alloca double
	store double 1.000000e+01, double* %1
	%2 = alloca double
	store double 9.000000e+00, double* %2
	%3 = load double, double* %2
	%4 = add i32 0, 2
	%5 = sitofp i32 %4 to double
	%6 = fcmp olt double %3, %5
	%7 = zext i1 %6 to i32
	%8 = sitofp i32 %7 to double
	%9 = load double, double* %1
	%10 = fcmp oeq double %9, %8
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	ret i32 0
}

define i32 @f4() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %14
	%17 = sitofp i32 %16 to double
	%18 = load i32, i32* %15
	%19 = sitofp i32 %18 to double
	%20 = fcmp oeq double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = alloca double
	store double %22, double* %23
	ret i32 0
}

define i32 @f5() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca double
	store double 1.000000e+00, double* %2
	%3 = alloca i32
	store i32 10, i32* %3
	%4 = alloca double
	store double 1.000000e+01, double* %4
	%5 = load i32, i32* %1
	%6 = load i32, i32* %3
	%7 = icmp ne i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = alloca i32
	store i32 %8, i32* %9
	%10 = load double, double* %2
	%11 = load double, double* %4
	%12 = fcmp une double %10, %11
	%13 = zext i1 %12 to i32
	%14 = sitofp i32 %13 to double
	%15 = alloca double
	store double %14, double* %15
	%16 = load i32, i32* %1
	%17 = load i32, i32* %3
	%18 = icmp sle i32 %16, %17
	%19 = zext i1 %18 to i32
	%20 = alloca i32
	store i32 %19, i32* %20
	%21 = load double, double* %2
	%22 = load double, double* %4
	%23 = fcmp ole double %21, %22
	%24 = zext i1 %23 to i32
	%25 = sitofp i32 %24 to double
	%26 = alloca double
	store double %25, double* %26
	%27 = load i32, i32* %1
	%28 = load i32, i32* %3
	%29 = icmp sge i32 %27, %28
	%30 = zext i1 %29 to i32
	%31 = alloca i32
	store i32 %30, i32* %31
	%32 = load double, double* %2
	%33 = load double, double* %4
	%34 = fcmp oge double %32, %33
	%35 = zext i1 %34 to i32
	%36 = sitofp i32 %35 to double
	%37 = alloca double
	store double %36, double* %37
	%38 = load i32, i32* %1
	%39 = load i32, i32* %3
	%40 = icmp slt i32 %38, %39
	%41 = zext i1 %40 to i32
	%42 = alloca i32
	store i32 %41, i32* %42
	%43 = load double, double* %2
	%44 = load double, double* %4
	%45 = fcmp olt double %43, %44
	%46 = zext i1 %45 to i32
	%47 = sitofp i32 %46 to double
	%48 = alloca double
	store double %47, double* %48
	%49 = load i32, i32* %1
	%50 = load i32, i32* %3
	%51 = icmp sgt i32 %49, %50
	%52 = zext i1 %51 to i32
	%53 = alloca i32
	store i32 %52, i32* %53
	%54 = load double, double* %2
	%55 = load double, double* %4
	%56 = fcmp ogt double %54, %55
	%57 = zext i1 %56 to i32
	%58 = sitofp i32 %57 to double
	%59 = alloca double
	store double %58, double* %59
	ret i32 0
}

define i32 @f7() {
	%1 = alloca i32
	%2 = add i32 0, 1
	%3 = sub i32 0, %2
	store i32 %3, i32* %1
	%4 = add i32 0, 1
	%5 = sub i32 0, %4
	%6 = add i32 0, 1
	%7 = sub i32 %6, %5
	%8 = alloca i32
	store i32 %7, i32* %8
	%9 = add i32 0, 1
	%10 = sitofp i32 %9 to double
	%11 = fsub double 0.0, %10
	%12 = add i32 0, 2
	%13 = sitofp i32 %12 to double
	%14 = fadd double %11, %13
	%15 = alloca double
	store double %14, double* %15
	ret i32 0
}

define i32 @f8() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = add i32 0, 10
	%3 = icmp ne i32 %2, 0
	%4 = xor i1 %3, true
	%5 = zext i1 %4 to i32
	%6 = alloca i32
	store i32 %5, i32* %6
	%7 = load i32, i32* %1
	%8 = icmp ne i32 %7, 0
	%9 = xor i1 %8, true
	%10 = zext i1 %9 to i32
	%11 = alloca i32
	store i32 %10, i32* %11
	%12 = load i32, i32* %1
	%13 = icmp ne i32 %12, 0
	%14 = xor i1 %13, true
	%15 = zext i1 %14 to i32
	%16 = sitofp i32 %15 to double
	%17 = alloca double
	store double %16, double* %17
	ret i32 0
}

define i32 @f9() {
	%1 = alloca double
	store double 1.000000e+01, double* %1
	%2 = add i32 0, 10
	%3 = icmp ne i32 %2, 0
	%4 = xor i1 %3, true
	%5 = zext i1 %4 to i32
	%6 = sitofp i32 %5 to double
	%7 = alloca double
	store double %6, double* %7
	ret i32 0
}

define i32 @f10() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = load i32, i32* %1
	%3 = alloca i32
	store i32 %2, i32* %3
	%4 = alloca double
	store double 1.000000e+01, double* %4
	%5 = load double, double* %4
	%6 = alloca double
	store double %5, double* %6
	ret i32 0
}

define i32 @f12() {
	%1 = alloca i32
	%2 = add i32 0, 1
	%3 = sub i32 0, %2
	store i32 %3, i32* %1
	%4 = add i32 0, 1
	%5 = sub i32 0, %4
	%6 = add i32 0, 1
	%7 = sub i32 0, %6
	%8 = sub i32 %5, %7
	%9 = alloca i32
	store i32 %8, i32* %9
	%10 = add i32 0, 1
	%11 = sitofp i32 %10 to double
	%12 = fsub double 0.0, %11
	%13 = add i32 0, 2
	%14 = sitofp i32 %13 to double
	%15 = fadd double %12, %14
	%16 = alloca double
	store double %15, double* %16
	ret i32 0
}

define i32 @f13() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 1, i32* %2
	%3 = load i32, i32* %2
	%4 = load i32, i32* %1
	br label %label0

label0:
	%5 = icmp ne i32 %3, 0
	br i1 %5, label %label1, label %label2

label1:
	%6 = icmp ne i32 %4, 0
	br label %label2

label2:
	%7 = phi i1 [ false, %label0 ], [ %6, %label1 ]
	%8 = zext i1 %7 to i32
	%9 = alloca i32
	store i32 %8, i32* %9
	ret i32 0
}

define i32 @f14() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 1, i32* %2
	%3 = load i32, i32* %2
	%4 = load i32, i32* %1
	br label %label0

label0:
	%5 = icmp ne i32 %3, 0
	br i1 %5, label %label1, label %label2

label1:
	%6 = icmp ne i32 %4, 0
	br label %label2

label2:
	%7 = phi i1 [ false, %label0 ], [ %6, %label1 ]
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	ret i32 0
}

define i32 @f15() {
	%1 = alloca double
	store double 1.000000e+01, double* %1
	%2 = alloca double
	store double 1.000000e+00, double* %2
	ret i32 0
}

define i32 @f16() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 20, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = and i32 %3, %4
	%6 = alloca i32
	store i32 %5, i32* %6
	ret i32 0
}

define i32 @f17() {
	%1 = alloca double
	store double 1.000000e+01, double* %1
	%2 = alloca double
	store double 2.000000e+01, double* %2
	ret i32 0
}

define i32 @f18(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = alloca i32
	store i32 1, i32* %5
	%6 = alloca double
	store double 2.000000e+00, double* %6
	%7 = load i32, i32* %5
	%8 = load double, double* %6
	%9 = call i32 @f18(i32 %7, double %8)
	store i32 %9, i32* %3
	store double 3.000000e+00, double* %4
	ret i32 0
}

define i32 @f20() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %14
	%17 = sitofp i32 %16 to double
	%18 = load i32, i32* %15
	%19 = sitofp i32 %18 to double
	%20 = fcmp oeq double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = load double, double* %13
	%24 = fcmp oeq double %22, %23
	%25 = zext i1 %24 to i32
	%26 = sitofp i32 %25 to double
	%27 = alloca double
	store double %26, double* %27
	ret i32 0
}

define i32 @f21() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %14
	%17 = sitofp i32 %16 to double
	%18 = load i32, i32* %15
	%19 = sitofp i32 %18 to double
	%20 = fcmp oeq double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = add i32 0, 2
	%24 = sitofp i32 %23 to double
	%25 = fcmp oeq double %22, %24
	%26 = zext i1 %25 to i32
	%27 = sitofp i32 %26 to double
	%28 = alloca double
	store double %27, double* %28
	ret i32 0
}

define i32 @f22() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %15
	%17 = sitofp i32 %16 to double
	%18 = add i32 0, 2
	%19 = sitofp i32 %18 to double
	%20 = fcmp ogt double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = load i32, i32* %14
	%24 = sitofp i32 %23 to double
	%25 = fcmp oeq double %24, %22
	%26 = zext i1 %25 to i32
	%27 = sitofp i32 %26 to double
	%28 = alloca double
	store double %27, double* %28
	ret i32 0
}

define i32 @f23() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %14
	%17 = sitofp i32 %16 to double
	%18 = load i32, i32* %15
	%19 = sitofp i32 %18 to double
	%20 = fcmp ogt double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = add i32 0, 2
	%24 = sitofp i32 %23 to double
	%25 = fcmp oeq double %22, %24
	%26 = zext i1 %25 to i32
	%27 = sitofp i32 %26 to double
	%28 = alloca double
	store double %27, double* %28
	ret i32 0
}

define i32 @f24() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %14
	%17 = sitofp i32 %16 to double
	%18 = load i32, i32* %15
	%19 = sitofp i32 %18 to double
	%20 = fcmp ogt double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = load i32, i32* %5
	%24 = sitofp i32 %23 to double
	%25 = fcmp ogt double %22, %24
	%26 = zext i1 %25 to i32
	%27 = sitofp i32 %26 to double
	%28 = alloca double
	store double %27, double* %28
	ret i32 0
}

define i32 @f25() {
	%1 = add i32 0, 1
	%2 = add i32 0, 10
	%3 = icmp eq i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = alloca i32
	store i32 %4, i32* %5
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	%8 = add i32 0, 10
	%9 = sitofp i32 %8 to double
	%10 = fcmp oeq double %7, %9
	%11 = zext i1 %10 to i32
	%12 = sitofp i32 %11 to double
	%13 = alloca double
	store double %12, double* %13
	%14 = alloca i32
	store i32 2, i32* %14
	%15 = alloca i32
	store i32 3, i32* %15
	%16 = load i32, i32* %15
	%17 = sitofp i32 %16 to double
	%18 = add i32 0, 2
	%19 = sitofp i32 %18 to double
	%20 = fcmp oge double %17, %19
	%21 = zext i1 %20 to i32
	%22 = sitofp i32 %21 to double
	%23 = load i32, i32* %14
	%24 = sitofp i32 %23 to double
	%25 = fcmp oeq double %24, %22
	%26 = zext i1 %25 to i32
	%27 = sitofp i32 %26 to double
	%28 = alloca double
	store double %27, double* %28
	ret i32 0
}

define i32 @f26() {
	%1 = call i32 (...) @getchar()
	%2 = alloca i32
	store i32 %1, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = alloca i32
	store i32 %4, i32* %5
	ret i32 0
}

define i32 @f27() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 20, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = or i32 %3, %4
	%6 = alloca i32
	store i32 %5, i32* %6
	ret i32 0
}

define i32 @f28() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 20, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = and i32 %3, %4
	%6 = sitofp i32 %5 to double
	%7 = alloca double
	store double %6, double* %7
	ret i32 0
}

define i32 @f29() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 20, i32* %2
	%3 = load i32, i32* %1
	%4 = add i32 0, 30
	%5 = and i32 %3, %4
	%6 = sitofp i32 %5 to double
	%7 = alloca double
	store double %6, double* %7
	ret i32 0
}

define i32 @f30() {
	%1 = alloca i32
	store i32 10, i32* %1
	%2 = alloca i32
	store i32 20, i32* %2
	%3 = load i32, i32* %1
	%4 = add i32 0, 30
	%5 = xor i32 %3, %4
	%6 = sitofp i32 %5 to double
	%7 = alloca double
	store double %6, double* %7
	ret i32 0
}

define i32 @f31() {
	%1 = alloca i32
	%2 = alloca i32
	store i32 1, i32* %2
	%3 = alloca i32
	store i32 10, i32* %3
	%4 = load i32, i32* %2
	%5 = load i32, i32* %3
	%6 = icmp slt i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = load i32, i32* %3
	%9 = add i32 0, 10
	%10 = icmp sgt i32 %8, %9
	%11 = zext i1 %10 to i32
	br label %label0

label0:
	%12 = icmp ne i32 %7, 0
	br i1 %12, label %label1, label %label2

label1:
	%13 = icmp ne i32 %11, 0
	br label %label2

label2:
	%14 = phi i1 [ false, %label0 ], [ %13, %label1 ]
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label3, label %label4

label3:
	store i32 10, i32* %1
	br label %label5

label4:
	store i32 20, i32* %1
	br label %label5

label5:
	ret i32 0
}

define i32 @f32(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 1, i32* %3
	%4 = alloca i32
	store i32 10, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = icmp slt i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = load i32, i32* %4
	%10 = add i32 0, 10
	%11 = icmp sgt i32 %9, %10
	%12 = zext i1 %11 to i32
	br label %label0

label0:
	%13 = icmp ne i32 %8, 0
	br i1 %13, label %label1, label %label2

label1:
	%14 = icmp ne i32 %12, 0
	br label %label2

label2:
	%15 = phi i1 [ false, %label0 ], [ %14, %label1 ]
	%16 = zext i1 %15 to i32
	%17 = alloca i32
	store i32 %16, i32* %17
	ret i32 0
}

define i32 @f33(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 1, i32* %3
	%4 = alloca i32
	store i32 10, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = icmp slt i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = load i32, i32* %4
	%10 = add i32 0, 10
	%11 = icmp sgt i32 %9, %10
	%12 = zext i1 %11 to i32
	br label %label0

label0:
	%13 = icmp ne i32 %8, 0
	br i1 %13, label %label1, label %label2

label1:
	%14 = icmp ne i32 %12, 0
	br label %label2

label2:
	%15 = phi i1 [ false, %label0 ], [ %14, %label1 ]
	%16 = zext i1 %15 to i32
	%17 = load i32, i32* %3
	%18 = add i32 0, 10
	%19 = icmp sgt i32 %17, %18
	%20 = zext i1 %19 to i32
	br label %label3

label3:
	%21 = icmp ne i32 %16, 0
	br i1 %21, label %label4, label %label5

label4:
	%22 = icmp ne i32 %20, 0
	br label %label5

label5:
	%23 = phi i1 [ false, %label3 ], [ %22, %label4 ]
	%24 = zext i1 %23 to i32
	%25 = alloca i32
	store i32 %24, i32* %25
	ret i32 0
}

define i32 @f34() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = load i32, i32* %2
	%8 = add i32 0, 10
	%9 = icmp sgt i32 %7, %8
	%10 = zext i1 %9 to i32
	br label %label0

label0:
	%11 = icmp ne i32 %6, 0
	br i1 %11, label %label1, label %label2

label1:
	%12 = icmp ne i32 %10, 0
	br label %label2

label2:
	%13 = phi i1 [ true, %label0 ], [ %12, %label1 ]
	%14 = zext i1 %13 to i32
	%15 = alloca i32
	store i32 %14, i32* %15
	ret i32 0
}

define i32 @f35() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = load i32, i32* %2
	%8 = add i32 0, 10
	%9 = icmp sgt i32 %7, %8
	%10 = zext i1 %9 to i32
	br label %label0

label0:
	%11 = icmp ne i32 %6, 0
	br i1 %11, label %label1, label %label2

label1:
	%12 = icmp ne i32 %10, 0
	br label %label2

label2:
	%13 = phi i1 [ true, %label0 ], [ %12, %label1 ]
	%14 = zext i1 %13 to i32
	%15 = load i32, i32* %1
	%16 = add i32 0, 10
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	br label %label3

label3:
	%19 = icmp ne i32 %14, 0
	br i1 %19, label %label4, label %label5

label4:
	%20 = icmp ne i32 %18, 0
	br label %label5

label5:
	%21 = phi i1 [ true, %label3 ], [ %20, %label4 ]
	%22 = zext i1 %21 to i32
	%23 = alloca i32
	store i32 %22, i32* %23
	ret i32 0
}

define i32 @f36() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = load i32, i32* %2
	%8 = add i32 0, 10
	%9 = icmp sgt i32 %7, %8
	%10 = zext i1 %9 to i32
	br label %label0

label0:
	%11 = icmp ne i32 %6, 0
	br i1 %11, label %label1, label %label2

label1:
	%12 = icmp ne i32 %10, 0
	br label %label2

label2:
	%13 = phi i1 [ false, %label0 ], [ %12, %label1 ]
	%14 = zext i1 %13 to i32
	%15 = load i32, i32* %1
	%16 = add i32 0, 10
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	br label %label3

label3:
	%19 = icmp ne i32 %14, 0
	br i1 %19, label %label4, label %label5

label4:
	%20 = icmp ne i32 %18, 0
	br label %label5

label5:
	%21 = phi i1 [ true, %label3 ], [ %20, %label4 ]
	%22 = zext i1 %21 to i32
	%23 = alloca i32
	store i32 %22, i32* %23
	ret i32 0
}

define i32 @f37() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = load i32, i32* %2
	%8 = add i32 0, 10
	%9 = icmp sgt i32 %7, %8
	%10 = zext i1 %9 to i32
	br label %label0

label0:
	%11 = icmp ne i32 %6, 0
	br i1 %11, label %label1, label %label2

label1:
	%12 = icmp ne i32 %10, 0
	br label %label2

label2:
	%13 = phi i1 [ false, %label0 ], [ %12, %label1 ]
	%14 = zext i1 %13 to i32
	%15 = load i32, i32* %1
	%16 = add i32 0, 10
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	br label %label3

label3:
	%19 = icmp ne i32 %14, 0
	br i1 %19, label %label4, label %label5

label4:
	%20 = icmp ne i32 %18, 0
	br label %label5

label5:
	%21 = phi i1 [ true, %label3 ], [ %20, %label4 ]
	%22 = zext i1 %21 to i32
	%23 = sitofp i32 %22 to double
	%24 = alloca double
	store double %23, double* %24
	ret i32 0
}

define double @aux(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = load i32, i32* %3
	%6 = sitofp i32 %5 to double
	%7 = load double, double* %4
	%8 = fadd double %6, %7
	%9 = alloca double
	store double %8, double* %9
	ret double 0.000000e+00
}

define i32 @f38() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = sitofp i32 %4 to double
	%6 = call double @aux(i32 %3, double %5)
	%7 = alloca double
	store double %6, double* %7
	ret i32 0
}

define i32 @f19(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = alloca i32
	store i32 1, i32* %5
	%6 = alloca i32
	store i32 2, i32* %6
	%7 = load i32, i32* %5
	%8 = load i32, i32* %6
	%9 = sitofp i32 %8 to double
	%10 = call double @aux(i32 %7, double %9)
	%11 = alloca double
	store double %10, double* %11
	store double 3.000000e+00, double* %4
	ret i32 0
}

define i32 @aux1(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = add i32 %5, %6
	%8 = alloca i32
	store i32 %7, i32* %8
	%9 = load i32, i32* %8
	ret i32 %9
}

define i32 @f39() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = call i32 @aux1(i32 %3, i32 %4)
	%6 = alloca i32
	store i32 %5, i32* %6
	%7 = load i32, i32* %6
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	ret i32 0
}

define i32 @f40() {
	%1 = alloca i32
	store i32 97, i32* %1
	%2 = load i32, i32* %1
	%3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
	ret i32 %3
}

define i32 @aux2(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = add i32 %5, %6
	ret i32 %7
}

define i32 @f41() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = call i32 @aux2(i32 %3, i32 %4)
	%6 = alloca i32
	store i32 %5, i32* %6
	%7 = load i32, i32* %6
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	ret i32 0
}

define i32 @aux3(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = sub i32 %5, %6
	ret i32 %7
}

define i32 @f42() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = call i32 @aux3(i32 %3, i32 %4)
	ret i32 0
}

define i32 @aux4() {
	ret i32 10
}

define i32 @f43() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = call i32 @aux4()
	%3 = load i32, i32* %1
	%4 = add i32 %2, %3
	%5 = call i32 @aux4()
	%6 = add i32 %4, %5
	%7 = alloca i32
	store i32 %6, i32* %7
	%8 = load i32, i32* %7
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	ret i32 0
}

define i32 @f44() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 65
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label2

label1:
	%10 = add i32 0, 66
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	br label %label2

label2:
	ret i32 0
}

define i32 @f45() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 65
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	store i32 65, i32* %1
	br label %label2

label1:
	%10 = add i32 0, 66
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	store i32 66, i32* %2
	br label %label2

label2:
	ret i32 0
}

define i32 @f46() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 65
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label2

label1:
	br label %label2

label2:
	ret i32 0
}

define i32 @f47() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp eq i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 65
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label2

label1:
	%10 = add i32 0, 66
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	br label %label2

label2:
	ret i32 0
}

define i32 @f48() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = load i32, i32* %1
	%4 = add i32 0, 10
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = load i32, i32* %1
	%9 = add i32 0, 2
	%10 = srem i32 %8, %9
	store i32 %10, i32* %2
	%11 = load i32, i32* %2
	%12 = add i32 0, 0
	%13 = icmp eq i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label2, label %label3

label2:
	%16 = add i32 0, 80
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	br label %label4

label3:
	%18 = add i32 0, 73
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	br label %label4

label4:
	%20 = load i32, i32* %1
	%21 = add i32 0, 1
	%22 = add i32 %20, %21
	store i32 %22, i32* %1
	%23 = load i32, i32* %1
	%24 = add i32 0, 10
	%25 = icmp slt i32 %23, %24
	%26 = zext i1 %25 to i32
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label0, label %label1

label1:
	%28 = add i32 0, 10
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	ret i32 0
}

define i32 @f49() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = load i32, i32* %1
	%4 = add i32 0, 10
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = load i32, i32* %1
	%9 = add i32 0, 2
	%10 = srem i32 %8, %9
	store i32 %10, i32* %2
	%11 = load i32, i32* %2
	%12 = add i32 0, 0
	%13 = icmp eq i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label2, label %label3

label2:
	%16 = add i32 0, 80
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	br label %label4

label3:
	%18 = add i32 0, 73
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	br label %label4

label4:
	%20 = load i32, i32* %1
	%21 = add i32 0, 1
	%22 = add i32 %20, %21
	store i32 %22, i32* %1
	%23 = load i32, i32* %1
	%24 = add i32 0, 10
	%25 = icmp slt i32 %23, %24
	%26 = zext i1 %25 to i32
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label0, label %label1

label1:
	%28 = add i32 0, 10
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	ret i32 0
}

define i32 @f50() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = alloca i32
	%4 = load i32, i32* %1
	%5 = add i32 0, 10
	%6 = icmp slt i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label0, label %label1

label0:
	%9 = load i32, i32* %2
	%10 = add i32 0, 10
	%11 = icmp slt i32 %9, %10
	%12 = zext i1 %11 to i32
	%13 = icmp ne i32 %12, 0
	br i1 %13, label %label2, label %label3

label2:
	%14 = load i32, i32* %1
	%15 = add i32 0, 65
	%16 = add i32 %14, %15
	store i32 %16, i32* %3
	%17 = load i32, i32* %3
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = load i32, i32* %2
	%20 = add i32 0, 1
	%21 = add i32 %19, %20
	store i32 %21, i32* %2
	%22 = load i32, i32* %2
	%23 = add i32 0, 10
	%24 = icmp slt i32 %22, %23
	%25 = zext i1 %24 to i32
	%26 = icmp ne i32 %25, 0
	br i1 %26, label %label2, label %label3

label3:
	%27 = add i32 0, 10
	%28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
	store i32 0, i32* %2
	%29 = load i32, i32* %1
	%30 = add i32 0, 1
	%31 = add i32 %29, %30
	store i32 %31, i32* %1
	%32 = load i32, i32* %1
	%33 = add i32 0, 10
	%34 = icmp slt i32 %32, %33
	%35 = zext i1 %34 to i32
	%36 = icmp ne i32 %35, 0
	br i1 %36, label %label0, label %label1

label1:
	ret i32 0
}

define i32 @f51() {
	%1 = add i32 0, 10
	%2 = add i32 0, 1
	%3 = icmp slt i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = add i32 0, 1
	%6 = add i32 0, 10
	%7 = icmp sgt i32 %5, %6
	%8 = zext i1 %7 to i32
	br label %label0

label0:
	%9 = icmp ne i32 %4, 0
	br i1 %9, label %label1, label %label2

label1:
	%10 = icmp ne i32 %8, 0
	br label %label2

label2:
	%11 = phi i1 [ false, %label0 ], [ %10, %label1 ]
	%12 = zext i1 %11 to i32
	%13 = add i32 0, 1
	%14 = add i32 0, 10
	%15 = icmp eq i32 %13, %14
	%16 = zext i1 %15 to i32
	br label %label3

label3:
	%17 = icmp ne i32 %12, 0
	br i1 %17, label %label4, label %label5

label4:
	%18 = icmp ne i32 %16, 0
	br label %label5

label5:
	%19 = phi i1 [ true, %label3 ], [ %18, %label4 ]
	%20 = zext i1 %19 to i32
	%21 = alloca i32
	store i32 %20, i32* %21
	ret i32 0
}

define i32 @f52() {
	%1 = add i32 0, 10
	%2 = add i32 0, 1
	%3 = icmp slt i32 %1, %2
	%4 = zext i1 %3 to i32
	%5 = add i32 0, 1
	%6 = add i32 0, 10
	%7 = icmp sgt i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = add i32 0, 1
	%10 = add i32 0, 10
	%11 = icmp eq i32 %9, %10
	%12 = zext i1 %11 to i32
	br label %label0

label0:
	%13 = icmp ne i32 %8, 0
	br i1 %13, label %label1, label %label2

label1:
	%14 = icmp ne i32 %12, 0
	br label %label2

label2:
	%15 = phi i1 [ true, %label0 ], [ %14, %label1 ]
	%16 = zext i1 %15 to i32
	br label %label3

label3:
	%17 = icmp ne i32 %4, 0
	br i1 %17, label %label4, label %label5

label4:
	%18 = icmp ne i32 %16, 0
	br label %label5

label5:
	%19 = phi i1 [ false, %label3 ], [ %18, %label4 ]
	%20 = zext i1 %19 to i32
	%21 = alloca i32
	store i32 %20, i32* %21
	ret i32 0
}
