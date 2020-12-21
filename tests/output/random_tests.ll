declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @oi(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32 100, i32* %7
	%8 = alloca double
	%9 = alloca double
	%10 = alloca double
	store double 4.000000e+00, double* %9
	%11 = load double, double* %8
	%12 = load double, double* %9
	%13 = fadd double %11, %12
	store double %13, double* %10
	ret i32 0
}

define i32 @x() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 2, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %5
	%8 = load i32, i32* %4
	%9 = icmp ne i32 %7, %8
	%10 = zext i1 %9 to i32
	store i32 %10, i32* %1
	ret i32 0
}

define i32 @asd(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 2, i32* %3
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = load i32, i32* %2
	store i32 %8, i32* %7
	%9 = load i32, i32* %7
	%10 = load i32, i32* %3
	%11 = sub i32 %9, %10
	%12 = alloca i32
	store i32 %11, i32* %12
	%13 = load i32, i32* %7
	store i32 %13, i32* %2
	%14 = load i32, i32* %2
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	%16 = load i32, i32* %7
	%17 = load i32, i32* %4
	%18 = add i32 %16, %17
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	%20 = load i32, i32* %6
	%21 = load i32, i32* %5
	%22 = sub i32 %20, %21
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = load i32, i32* %3
	%25 = icmp ne i32 %24, 0
	%26 = xor i1 %25, true
	%27 = zext i1 %26 to i32
	%28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
	%29 = load i32, i32* %7
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = load i32, i32* %3
	%32 = sub i32 0, %31
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = add i32 0, 1
	%35 = add i32 0, 2
	%36 = call i32 @oi(i32 %34, i32 %35)
	%37 = add i32 0, 2
	%38 = add i32 0, 2
	%39 = call i32 @oi(i32 %37, i32 %38)
	%40 = add i32 0, 192
	%41 = add i32 0, 2
	%42 = call i32 @oi(i32 %40, i32 %41)
	ret i32 %42
}

define i32 @xddx(i32, i32, double, i32) {
	%5 = alloca i32
	store i32 %0, i32* %5
	%6 = alloca i32
	store i32 %1, i32* %6
	%7 = alloca double
	store double %2, double* %7
	%8 = alloca i32
	store i32 %3, i32* %8
	%9 = alloca double
	store double 2.400000e+00, double* %9
	%10 = load i32, i32* %5
	%11 = load i32, i32* %8
	%12 = icmp eq i32 %10, %11
	%13 = zext i1 %12 to i32
	%14 = load i32, i32* %5
	%15 = load i32, i32* %8
	%16 = icmp sgt i32 %14, %15
	%17 = zext i1 %16 to i32
	%18 = load i32, i32* %5
	%19 = load i32, i32* %8
	%20 = icmp slt i32 %18, %19
	%21 = zext i1 %20 to i32
	%22 = load i32, i32* %5
	%23 = load i32, i32* %8
	%24 = icmp sge i32 %22, %23
	%25 = zext i1 %24 to i32
	%26 = load i32, i32* %5
	%27 = load i32, i32* %8
	%28 = icmp sle i32 %26, %27
	%29 = zext i1 %28 to i32
	%30 = load i32, i32* %5
	%31 = load i32, i32* %8
	%32 = or i32 %30, %31
	%33 = load i32, i32* %5
	%34 = load i32, i32* %8
	%35 = and i32 %33, %34
	%36 = load i32, i32* %5
	%37 = load i32, i32* %8
	%38 = icmp ne i32 %36, %37
	%39 = zext i1 %38 to i32
	br label %label0

label0:
	%40 = load i32, i32* %5
	%41 = icmp ne i32 %40, 0
	br i1 %41, label %label1, label %label2

label1:
	%42 = load i32, i32* %8
	%43 = icmp ne i32 %42, 0
	br label %label2

label2:
	%44 = phi i1 [ false, %label0 ], [ %43, %label1 ]
	%45 = zext i1 %44 to i32
	br label %label3

label3:
	%46 = load i32, i32* %5
	%47 = icmp ne i32 %46, 0
	br i1 %47, label %label5, label %label4

label4:
	%48 = load i32, i32* %8
	%49 = icmp ne i32 %48, 0
	br label %label5

label5:
	%50 = phi i1 [ true, %label3 ], [ %49, %label4 ]
	%51 = zext i1 %50 to i32
	%52 = load i32, i32* %5
	%53 = load i32, i32* %8
	%54 = xor i32 %52, %53
	%55 = load i32, i32* %5
	%56 = load i32, i32* %8
	%57 = srem i32 %55, %56
	store i32 %57, i32* %5
	%58 = load i32, i32* %5
	%59 = load i32, i32* %8
	%60 = mul i32 %58, %59
	store i32 %60, i32* %5
	%61 = load i32, i32* %5
	%62 = load i32, i32* %8
	%63 = sdiv i32 %61, %62
	store i32 %63, i32* %5
	%64 = load i32, i32* %5
	%65 = icmp ne i32 %64, 0
	%66 = xor i1 %65, true
	%67 = zext i1 %66 to i32
	%68 = load i32, i32* %5
	%69 = load i32, i32* %5
	%70 = sub i32 0, %69
	%71 = load i32, i32* %8
	store i32 %71, i32* %5
	ret i32 0
}

define i32 @statements() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = add i32 0, 1
	%3 = icmp ne i32 %2, 0
	br i1 %3, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	br label %label3

label3:
	%4 = load i32, i32* %1
	%5 = add i32 0, 1
	%6 = icmp eq i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label4, label %label5

label4:
	%9 = load i32, i32* %1
	%10 = add i32 0, 1
	%11 = icmp ne i32 %9, %10
	%12 = zext i1 %11 to i32
	%13 = icmp ne i32 %12, 0
	br label %label5

label5:
	%14 = phi i1 [ false, %label3 ], [ %13, %label4 ]
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label6, label %label7

label6:
	br label %label9

label9:
	%17 = load i32, i32* %1
	%18 = add i32 0, 0
	%19 = icmp ne i32 %17, %18
	%20 = zext i1 %19 to i32
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %label10, label %label11

label10:
	%22 = load i32, i32* %1
	%23 = call i32 @statements()
	%24 = icmp ne i32 %22, %23
	%25 = zext i1 %24 to i32
	%26 = icmp ne i32 %25, 0
	br label %label11

label11:
	%27 = phi i1 [ false, %label9 ], [ %26, %label10 ]
	%28 = zext i1 %27 to i32
	br label %label12

label12:
	%29 = load i32, i32* %1
	%30 = add i32 0, 2
	%31 = srem i32 %29, %30
	%32 = icmp ne i32 %31, 0
	br i1 %32, label %label13, label %label14

label13:
	%33 = load i32, i32* %1
	%34 = add i32 0, 2
	%35 = xor i32 %33, %34
	%36 = icmp ne i32 %35, 0
	br label %label14

label14:
	%37 = phi i1 [ false, %label12 ], [ %36, %label13 ]
	%38 = zext i1 %37 to i32
	br label %label15

label15:
	%39 = icmp ne i32 %28, 0
	br i1 %39, label %label17, label %label16

label16:
	%40 = icmp ne i32 %38, 0
	br label %label17

label17:
	%41 = phi i1 [ true, %label15 ], [ %40, %label16 ]
	%42 = zext i1 %41 to i32
	%43 = icmp ne i32 %42, 0
	br i1 %43, label %label18, label %label19

label18:
	%44 = load i32, i32* %1
	%45 = icmp ne i32 %44, 0
	%46 = xor i1 %45, true
	%47 = zext i1 %46 to i32
	%48 = call i32 @statements()
	%49 = icmp ne i32 %48, 0
	%50 = xor i1 %49, true
	%51 = zext i1 %50 to i32
	%52 = add i32 %47, %51
	%53 = add i32 0, 67
	%54 = icmp ne i32 %52, %53
	%55 = zext i1 %54 to i32
	%56 = icmp ne i32 %55, 0
	br i1 %56, label %label21, label %label22

label21:
	br label %label24

label24:
	%57 = load i32, i32* %1
	%58 = icmp ne i32 %57, 0
	%59 = xor i1 %58, true
	%60 = zext i1 %59 to i32
	%61 = icmp ne i32 %60, 0
	%62 = xor i1 %61, true
	%63 = zext i1 %62 to i32
	%64 = call i32 @statements()
	%65 = mul i32 %63, %64
	%66 = icmp ne i32 %65, 0
	br i1 %66, label %label25, label %label26

label25:
	%67 = add i32 0, 2
	%68 = icmp ne i32 %67, 0
	br label %label26

label26:
	%69 = phi i1 [ false, %label24 ], [ %68, %label25 ]
	%70 = zext i1 %69 to i32
	%71 = add i32 0, 1
	%72 = and i32 %70, %71
	%73 = icmp ne i32 %72, 0
	br i1 %73, label %label27, label %label28

label27:
	br label %label29

label28:
	ret i32 5
	br label %label29

label29:
	ret i32 4
	br label %label23

label22:
	br label %label23

label23:
	ret i32 3
	br label %label20

label19:
	br label %label20

label20:
	ret i32 2
	br label %label8

label7:
	br label %label8

label8:
	ret i32 1
}

define i32 @m(i32, i32, i32) {
	%4 = alloca i32
	store i32 %0, i32* %4
	%5 = alloca i32
	store i32 %1, i32* %5
	%6 = alloca i32
	store i32 %2, i32* %6
	%7 = alloca i32
	store i32 1, i32* %7
	%8 = alloca i32
	store i32 2, i32* %8
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	%12 = alloca i32
	%13 = alloca i32
	%14 = alloca i32
	br label %label0

label0:
	%15 = load i32, i32* %7
	%16 = load i32, i32* %8
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label1, label %label2

label1:
	%20 = load i32, i32* %9
	%21 = load i32, i32* %8
	%22 = icmp sgt i32 %20, %21
	%23 = zext i1 %22 to i32
	%24 = icmp ne i32 %23, 0
	br label %label2

label2:
	%25 = phi i1 [ false, %label0 ], [ %24, %label1 ]
	%26 = zext i1 %25 to i32
	br label %label3

label3:
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label5, label %label4

label4:
	%28 = load i32, i32* %9
	%29 = load i32, i32* %7
	%30 = icmp ne i32 %28, %29
	%31 = zext i1 %30 to i32
	%32 = icmp ne i32 %31, 0
	br label %label5

label5:
	%33 = phi i1 [ true, %label3 ], [ %32, %label4 ]
	%34 = zext i1 %33 to i32
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label6, label %label7

label6:
	ret i32 1
	br label %label8

label7:
	ret i32 0
	br label %label8

label8:
	%38 = add i32 0, 2
	%39 = add i32 0, 1
	%40 = add i32 0, 2
	%41 = icmp ne i32 %40, 0
	br i1 %41, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	ret i32 0
}

define i32 @main() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = load i32, i32* %2
	store i32 %3, i32* %1
	%4 = load i32, i32* %1
	%5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
	%6 = load i32, i32* %2
	store i32 %6, i32* %1
	%7 = load i32, i32* %1
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label0, label %label1

label0:
	%9 = load i32, i32* %2
	store i32 %9, i32* %1
	%10 = load i32, i32* %1
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	br label %label2

label1:
	%12 = add i32 0, 65
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	br label %label2

label2:
	ret i32 0
}
