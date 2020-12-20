declare i32 @putchar(...)
declare i32 @getchar(...)

@cc = global i32 0

define void @f() {
	store i32 89, i32* @cc
	ret void
}

define i32 @error_in_C_problem() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 10, i32* %1
	%4 = add i32 0, 5
	%5 = sub i32 0, %4
	store i32 %5, i32* %2
	store i32 0, i32* %3
	%6 = add i32 0, 23
	%7 = add i32 0, 757
	%8 = mul i32 %6, %7
	%9 = add i32 0, 65
	%10 = add i32 %8, %9
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = load i32, i32* %1
	%13 = icmp ne i32 %12, 0
	%14 = xor i1 %13, true
	%15 = zext i1 %14 to i32
	%16 = load i32, i32* %2
	%17 = icmp ne i32 %16, 0
	%18 = xor i1 %17, true
	%19 = zext i1 %18 to i32
	br label %label0

label0:
	%20 = icmp ne i32 %15, 0
	br i1 %20, label %label1, label %label2

label1:
	%21 = icmp ne i32 %19, 0
	br label %label2

label2:
	%22 = phi i1 [ true, %label0 ], [ %21, %label1 ]
	%23 = zext i1 %22 to i32
	%24 = load i32, i32* %3
	%25 = icmp ne i32 %24, 0
	%26 = xor i1 %25, true
	%27 = zext i1 %26 to i32
	br label %label3

label3:
	%28 = icmp ne i32 %23, 0
	br i1 %28, label %label4, label %label5

label4:
	%29 = icmp ne i32 %27, 0
	br label %label5

label5:
	%30 = phi i1 [ true, %label3 ], [ %29, %label4 ]
	%31 = zext i1 %30 to i32
	%32 = add i32 0, 2
	%33 = sub i32 0, %32
	br label %label6

label6:
	%34 = icmp ne i32 %31, 0
	br i1 %34, label %label7, label %label8

label7:
	%35 = icmp ne i32 %33, 0
	br label %label8

label8:
	%36 = phi i1 [ false, %label6 ], [ %35, %label7 ]
	%37 = zext i1 %36 to i32
	%38 = load i32, i32* %2
	%39 = icmp ne i32 %38, 0
	%40 = xor i1 %39, true
	%41 = zext i1 %40 to i32
	%42 = load i32, i32* %1
	%43 = icmp ne i32 %42, 0
	%44 = xor i1 %43, true
	%45 = zext i1 %44 to i32
	br label %label9

label9:
	%46 = icmp ne i32 %41, 0
	br i1 %46, label %label10, label %label11

label10:
	%47 = icmp ne i32 %45, 0
	br label %label11

label11:
	%48 = phi i1 [ true, %label9 ], [ %47, %label10 ]
	%49 = zext i1 %48 to i32
	br label %label12

label12:
	%50 = icmp ne i32 %37, 0
	br i1 %50, label %label13, label %label14

label13:
	%51 = icmp ne i32 %49, 0
	br label %label14

label14:
	%52 = phi i1 [ false, %label12 ], [ %51, %label13 ]
	%53 = zext i1 %52 to i32
	%54 = icmp ne i32 %53, 0
	%55 = xor i1 %54, true
	%56 = zext i1 %55 to i32
	%57 = add i32 0, 65
	%58 = add i32 %56, %57
	%59 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %58)
	%60 = load i32, i32* %2
	%61 = add i32 0, 1
	%62 = add i32 %60, %61
	%63 = load i32, i32* %1
	br label %label15

label15:
	%64 = icmp ne i32 %63, 0
	br i1 %64, label %label16, label %label17

label16:
	%65 = icmp ne i32 %-1, 0
	br label %label17

label17:
	%66 = phi i1 [ false, %label15 ], [ %65, %label16 ]
	%67 = zext i1 %66 to i32
	%68 = load i32, i32* %3
	br label %label18

label18:
	%69 = icmp ne i32 %67, 0
	br i1 %69, label %label19, label %label20

label19:
	%70 = icmp ne i32 %68, 0
	br label %label20

label20:
	%71 = phi i1 [ false, %label18 ], [ %70, %label19 ]
	%72 = zext i1 %71 to i32
	%73 = load i32, i32* %2
	%74 = add i32 0, 4
	%75 = add i32 %73, %74
	%76 = load i32, i32* %1
	%77 = add i32 0, 5
	%78 = sub i32 %76, %77
	br label %label21

label21:
	%79 = icmp ne i32 %-1, 0
	br i1 %79, label %label22, label %label23

label22:
	%80 = icmp ne i32 %-1, 0
	br label %label23

label23:
	%81 = phi i1 [ false, %label21 ], [ %80, %label22 ]
	%82 = zext i1 %81 to i32
	br label %label24

label24:
	%83 = icmp ne i32 %72, 0
	br i1 %83, label %label25, label %label26

label25:
	%84 = icmp ne i32 %82, 0
	br label %label26

label26:
	%85 = phi i1 [ true, %label24 ], [ %84, %label25 ]
	%86 = zext i1 %85 to i32
	%87 = add i32 0, 1
	br label %label27

label27:
	%88 = icmp ne i32 %86, 0
	br i1 %88, label %label28, label %label29

label28:
	%89 = icmp ne i32 %87, 0
	br label %label29

label29:
	%90 = phi i1 [ true, %label27 ], [ %89, %label28 ]
	%91 = zext i1 %90 to i32
	%92 = add i32 0, 1
	%93 = sub i32 0, %92
	br label %label30

label30:
	%94 = icmp ne i32 %91, 0
	br i1 %94, label %label31, label %label32

label31:
	%95 = icmp ne i32 %-1, 0
	br label %label32

label32:
	%96 = phi i1 [ true, %label30 ], [ %95, %label31 ]
	%97 = zext i1 %96 to i32
	%98 = add i32 0, 65
	%99 = add i32 %97, %98
	%100 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %99)
	%101 = load i32, i32* %1
	%102 = add i32 0, 65
	%103 = add i32 %101, %102
	%104 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %103)
	ret i32 0
}

define i32 @error_in_D_problem() {
	%1 = alloca i32
	store i32 5, i32* %1
	%2 = load i32, i32* %1
	%3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
	%4 = alloca i32
	store i32 3, i32* %4
	%5 = load i32, i32* %4
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = load i32, i32* %1
	%8 = add i32 0, 1
	%9 = add i32 %7, %8
	store i32 %9, i32* %1
	%10 = load i32, i32* %1
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 2
	%13 = load i32, i32* %1
	%14 = mul i32 %12, %13
	store i32 %14, i32* %1
	%15 = load i32, i32* %1
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = load i32, i32* %4
	%18 = add i32 0, 1
	%19 = add i32 %17, %18
	%20 = load i32, i32* %1
	%21 = load i32, i32* %4
	%22 = add i32 %20, %21
	%23 = load i32, i32* %4
	%24 = add i32 0, 1
	%25 = add i32 %23, %24
	store i32 %25, i32* %4
	%26 = load i32, i32* %1
	%27 = load i32, i32* %4
	%28 = add i32 %26, %27
	store i32 %28, i32* %1
	%29 = load i32, i32* %1
	%30 = add i32 0, 2
	%31 = load i32, i32* %4
	%32 = mul i32 %30, %31
	%33 = load i32, i32* %4
	%34 = add i32 0, 1
	%35 = add i32 %33, %34
	%36 = load i32, i32* %1
	%37 = load i32, i32* %4
	%38 = add i32 %36, %37
	%39 = load i32, i32* %4
	%40 = add i32 0, 1
	%41 = add i32 %39, %40
	store i32 %41, i32* %4
	%42 = load i32, i32* %1
	%43 = load i32, i32* %4
	%44 = add i32 %42, %43
	store i32 %44, i32* %1
	%45 = load i32, i32* %1
	%46 = add i32 0, 2
	%47 = load i32, i32* %4
	%48 = mul i32 %46, %47
	store i32 %48, i32* %4
	%49 = load i32, i32* %4
	%50 = add i32 0, 5
	%51 = sub i32 %49, %50
	%52 = alloca i32
	store i32 %51, i32* %52
	%53 = load i32, i32* %1
	%54 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %53)
	%55 = load i32, i32* %4
	%56 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %55)
	%57 = load i32, i32* %52
	%58 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %57)
	ret i32 0
}

define i32 @nand(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	br label %label0

label0:
	%7 = icmp ne i32 %5, 0
	br i1 %7, label %label1, label %label2

label1:
	%8 = icmp ne i32 %6, 0
	br label %label2

label2:
	%9 = phi i1 [ false, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	ret i32 %13
}

define i32 @nor(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	br label %label0

label0:
	%7 = icmp ne i32 %5, 0
	br i1 %7, label %label1, label %label2

label1:
	%8 = icmp ne i32 %6, 0
	br label %label2

label2:
	%9 = phi i1 [ true, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	ret i32 %13
}

define i32 @random_tests() {
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
	call void @f()
	store i32 65, i32* %26
	%27 = load i32, i32* %26
	call void @f()
	store i32 65, i32* %26
	%28 = load i32, i32* %26
	%29 = add i32 0, 1
	%30 = icmp ne i32 %29, 0
	br i1 %30, label %label0, label %label1

label0:
	%31 = load i32, i32* %26
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = add i32 0, 88
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	%35 = load i32, i32* @cc
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	br label %label2

label1:
	%37 = load i32, i32* %26
	%38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
	%39 = add i32 0, 1
	%40 = add i32 0, 2
	%41 = add i32 0, 1
	%42 = add i32 0, 2
	%43 = add i32 0, 31
	%44 = icmp ne i32 %43, 0
	br i1 %44, label %label3, label %label4

label3:
	%45 = add i32 0, 66
	%46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %45)
	br label %label5

label4:
	br label %label5

label5:
	br label %label2

label2:
	%47 = load i32, i32* %26
	%48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
	ret i32 0
}

define i32 @main() {
	%1 = call i32 @error_in_C_problem()
	%2 = add i32 0, 10
	%3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
	%4 = call i32 @error_in_D_problem()
	%5 = add i32 0, 10
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 65
	%8 = add i32 0, 66
	%9 = call i32 @nand(i32 %7, i32 %8)
	%10 = add i32 0, 65
	%11 = add i32 0, 66
	%12 = call i32 @nor(i32 %10, i32 %11)
	%13 = call i32 @random_tests()
	ret i32 0
}
