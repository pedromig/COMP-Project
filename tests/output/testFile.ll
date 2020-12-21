declare i32 @putchar(...)
declare i32 @getchar(...)

@d = global i32 0
@globalDouble = global double 2.000000e+00

define i32 @func(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	store i32 3, i32* %3
	%5 = load i32, i32* %3
	%6 = add i32 0, 3
	%7 = mul i32 %5, %6
	ret i32 %7
}

define void @notTest() {
	%1 = alloca i32
	%2 = load i32, i32* %1
	%3 = icmp ne i32 %2, 0
	%4 = xor i1 %3, true
	%5 = zext i1 %4 to i32
	store i32 %5, i32* %1
	%6 = alloca double
	%7 = load i32, i32* %1
	%8 = icmp ne i32 %7, 0
	%9 = xor i1 %8, true
	%10 = zext i1 %9 to i32
	%11 = sitofp i32 %10 to double
	store double %11, double* %6
	ret void
}

define void @declarationTests() {
	%1 = alloca i32
	%2 = alloca double
	%3 = load i32, i32* %1
	%4 = sitofp i32 %3 to double
	store double %4, double* %2
	%5 = alloca double
	store double 2.000000e+00, double* %5
	%6 = alloca double
	store double 9.700000e+01, double* %6
	%7 = alloca i32
	store i32 97, i32* %7
	%8 = alloca double
	store double 2.200000e+00, double* %8
	%9 = add i32 0, 1
	%10 = fadd double 0.0, 2.200000e+00
	%11 = sitofp i32 %9 to double
	%12 = fadd double %11, %10
	%13 = alloca double
	store double %12, double* %13
	%14 = fadd double 0.0, 2.200000e+00
	%15 = add i32 0, 1
	%16 = sitofp i32 %15 to double
	%17 = fadd double %14, %16
	%18 = alloca double
	store double %17, double* %18
	%19 = add i32 0, 9
	%20 = fadd double 0.0, 9.900000e+00
	%21 = sitofp i32 %19 to double
	%22 = fadd double %21, %20
	store double %22, double* %13
	%23 = add i32 0, 6
	%24 = fadd double 0.0, 6.600000e+00
	%25 = sitofp i32 %23 to double
	%26 = fadd double %25, %24
	store double %26, double* %13
	ret void
}

define void @uselessFunction(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	ret void
}

define void @arithmeticTests() {
	%1 = alloca double
	store double 9.000000e+01, double* %1
	%2 = alloca i32
	store i32 50, i32* %2
	%3 = alloca double
	%4 = fadd double 0.0, 2.000000e+00
	%5 = add i32 0, 1
	%6 = sitofp i32 %5 to double
	%7 = fadd double %4, %6
	store double %7, double* %3
	%8 = add i32 0, 3
	%9 = add i32 0, 4
	%10 = add i32 %8, %9
	%11 = add i32 0, 5
	%12 = add i32 0, 3
	%13 = add i32 %11, %12
	call void @uselessFunction(i32 %10, i32 %13)
	%14 = add i32 0, 1
	%15 = add i32 0, 2
	%16 = mul i32 %14, %15
	%17 = add i32 0, 3
	%18 = add i32 0, 4
	%19 = mul i32 %17, %18
	%20 = add i32 %16, %19
	%21 = sitofp i32 %20 to double
	store double %21, double* %3
	%22 = add i32 0, 7
	%23 = load i32, i32* %2
	%24 = mul i32 %22, %23
	%25 = load double, double* %1
	%26 = sitofp i32 %24 to double
	%27 = fadd double %25, %26
	store double %27, double* %3
	%28 = add i32 0, 1
	%29 = add i32 0, 7
	%30 = mul i32 %28, %29
	%31 = load i32, i32* %2
	%32 = add i32 0, 3
	%33 = mul i32 %31, %32
	%34 = add i32 0, 4
	%35 = mul i32 %33, %34
	%36 = add i32 %30, %35
	%37 = add i32 0, 2
	%38 = add i32 %36, %37
	%39 = add i32 0, 3
	%40 = add i32 0, 4
	%41 = mul i32 %39, %40
	%42 = add i32 %38, %41
	%43 = add i32 0, 2
	%44 = add i32 %42, %43
	%45 = sitofp i32 %44 to double
	store double %45, double* %3
	%46 = add i32 0, 1
	%47 = add i32 0, 2
	%48 = mul i32 %46, %47
	%49 = add i32 0, 3
	%50 = add i32 0, 4
	%51 = mul i32 %49, %50
	%52 = add i32 %48, %51
	%53 = sitofp i32 %52 to double
	store double %53, double* %1
	%54 = alloca i32
	%55 = load i32, i32* %2
	store i32 %55, i32* %54
	%56 = add i32 0, 2
	%57 = add i32 0, 2
	%58 = mul i32 %56, %57
	%59 = alloca i32
	store i32 %58, i32* %59
	%60 = fadd double 0.0, 2.200000e+00
	%61 = load double, double* %3
	%62 = fmul double %60, %61
	%63 = add i32 0, 1
	%64 = sitofp i32 %63 to double
	%65 = fadd double %62, %64
	%66 = alloca double
	store double %65, double* %66
	%67 = load double, double* %1
	store double %67, double* %3
	%68 = load double, double* %3
	store double %68, double* %66
	ret void
}

define void @errorTestingLogicalOps() {
	%1 = alloca double
	%2 = alloca i32
	ret void
}

define void @relationalOperationsTest() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp eq i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 97
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label2

label1:
	br label %label2

label2:
	%10 = load i32, i32* %1
	%11 = load i32, i32* %1
	%12 = icmp eq i32 %10, %11
	%13 = zext i1 %12 to i32
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label3, label %label4

label3:
	%15 = add i32 0, 98
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	br label %label5

label4:
	br label %label5

label5:
	%17 = load i32, i32* %2
	%18 = load i32, i32* %2
	%19 = icmp ne i32 %17, %18
	%20 = zext i1 %19 to i32
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %label6, label %label7

label6:
	%22 = add i32 0, 99
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	br label %label8

label7:
	br label %label8

label8:
	%24 = load i32, i32* %1
	%25 = load i32, i32* %2
	%26 = icmp ne i32 %24, %25
	%27 = zext i1 %26 to i32
	%28 = icmp ne i32 %27, 0
	br i1 %28, label %label9, label %label10

label9:
	%29 = add i32 0, 100
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	br label %label11

label10:
	br label %label11

label11:
	%31 = load i32, i32* %1
	%32 = load i32, i32* %1
	%33 = icmp slt i32 %31, %32
	%34 = zext i1 %33 to i32
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label12, label %label13

label12:
	%36 = add i32 0, 101
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	br label %label14

label13:
	br label %label14

label14:
	%38 = load i32, i32* %2
	%39 = load i32, i32* %1
	%40 = icmp slt i32 %38, %39
	%41 = zext i1 %40 to i32
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label15, label %label16

label15:
	%43 = add i32 0, 102
	%44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
	br label %label17

label16:
	br label %label17

label17:
	%45 = load i32, i32* %1
	%46 = load i32, i32* %1
	%47 = icmp sle i32 %45, %46
	%48 = zext i1 %47 to i32
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label18, label %label19

label18:
	%50 = add i32 0, 103
	%51 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %50)
	br label %label20

label19:
	br label %label20

label20:
	%52 = load i32, i32* %2
	%53 = load i32, i32* %1
	%54 = icmp sgt i32 %52, %53
	%55 = zext i1 %54 to i32
	%56 = icmp ne i32 %55, 0
	br i1 %56, label %label21, label %label22

label21:
	%57 = add i32 0, 104
	%58 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %57)
	br label %label23

label22:
	br label %label23

label23:
	%59 = load i32, i32* %1
	%60 = load i32, i32* %2
	%61 = icmp sgt i32 %59, %60
	%62 = zext i1 %61 to i32
	%63 = icmp ne i32 %62, 0
	br i1 %63, label %label24, label %label25

label24:
	%64 = add i32 0, 105
	%65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
	br label %label26

label25:
	br label %label26

label26:
	%66 = load i32, i32* %2
	%67 = load i32, i32* %1
	%68 = icmp sge i32 %66, %67
	%69 = zext i1 %68 to i32
	%70 = icmp ne i32 %69, 0
	br i1 %70, label %label27, label %label28

label27:
	%71 = add i32 0, 106
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	br label %label29

label28:
	br label %label29

label29:
	%73 = load i32, i32* %1
	%74 = load i32, i32* %1
	%75 = icmp sge i32 %73, %74
	%76 = zext i1 %75 to i32
	%77 = icmp ne i32 %76, 0
	br i1 %77, label %label30, label %label31

label30:
	%78 = add i32 0, 107
	%79 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %78)
	br label %label32

label31:
	br label %label32

label32:
	%80 = add i32 0, 10
	%81 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %80)
	ret void
}

define void @whileAndIfChains() {
	%1 = alloca i32
	store i32 5, i32* %1
	%2 = alloca i32
	%3 = load i32, i32* %1
	%4 = add i32 0, 10
	%5 = icmp sle i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	store i32 1, i32* %2
	%8 = load i32, i32* %2
	%9 = add i32 0, 2
	%10 = icmp eq i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label2, label %label3

label2:
	br label %label4

label3:
	%13 = load i32, i32* %1
	%14 = add i32 0, 7
	%15 = icmp eq i32 %13, %14
	%16 = zext i1 %15 to i32
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %label5, label %label6

label5:
	%18 = add i32 0, 10
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	%20 = add i32 0, 65
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	%22 = add i32 0, 66
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = add i32 0, 67
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	%26 = add i32 0, 10
	%27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
	br label %label7

label6:
	br label %label7

label7:
	br label %label4

label4:
	%28 = load i32, i32* %1
	%29 = add i32 0, 1
	%30 = add i32 %28, %29
	store i32 %30, i32* %1
	%31 = load i32, i32* %1
	%32 = add i32 0, 10
	%33 = icmp sle i32 %31, %32
	%34 = zext i1 %33 to i32
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label0, label %label1

label1:
	ret void
}

define void @intAndDouble(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	ret void
}

define i32 @scopeLimitTesting() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = load i32, i32* %1
	%3 = icmp ne i32 %2, 0
	br i1 %3, label %label0, label %label1

label0:
	%4 = load i32, i32* %1
	%5 = icmp ne i32 %4, 0
	br i1 %5, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	ret i32 3
	br label %label2

label1:
	br label %label2

label2:
	%7 = load i32, i32* %1
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label6, label %label7

label6:
	%9 = load i32, i32* %1
	%10 = icmp ne i32 %9, 0
	br i1 %10, label %label8, label %label9

label8:
	br label %label10

label9:
	br label %label10

label10:
	%11 = load i32, i32* %1
	%12 = add i32 0, 1
	%13 = sub i32 %11, %12
	store i32 %13, i32* %1
	%14 = load i32, i32* %1
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label6, label %label7

label7:
	ret i32 0
}

define void @moreIntToDoubleConversionTests() {
	%1 = add i32 0, 3
	%2 = add i32 0, 3
	%3 = sitofp i32 %2 to double
	%4 = alloca double
	store double %3, double* %4
	%5 = add i32 0, 1
	%6 = add i32 0, 1
	%7 = sitofp i32 %6 to double
	store double %7, double* %4
	ret void
}

define void @andOrTesting() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = add i32 0, 10
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	br label %label0

label0:
	%5 = load i32, i32* %1
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label1, label %label2

label1:
	%7 = load i32, i32* %2
	%8 = icmp ne i32 %7, 0
	br label %label2

label2:
	%9 = phi i1 [ false, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label3, label %label4

label3:
	%12 = add i32 0, 97
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	br label %label5

label4:
	br label %label5

label5:
	br label %label6

label6:
	%14 = load i32, i32* %1
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label7, label %label8

label7:
	%16 = load i32, i32* %1
	%17 = icmp ne i32 %16, 0
	br label %label8

label8:
	%18 = phi i1 [ false, %label6 ], [ %17, %label7 ]
	%19 = zext i1 %18 to i32
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label9, label %label10

label9:
	%21 = add i32 0, 98
	%22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
	br label %label11

label10:
	br label %label11

label11:
	br label %label12

label12:
	%23 = load i32, i32* %2
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label13, label %label14

label13:
	%25 = load i32, i32* %2
	%26 = icmp ne i32 %25, 0
	br label %label14

label14:
	%27 = phi i1 [ false, %label12 ], [ %26, %label13 ]
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label15, label %label16

label15:
	%30 = add i32 0, 99
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	br label %label17

label16:
	br label %label17

label17:
	br label %label18

label18:
	%32 = load i32, i32* %1
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label20, label %label19

label19:
	%34 = load i32, i32* %2
	%35 = icmp ne i32 %34, 0
	br label %label20

label20:
	%36 = phi i1 [ true, %label18 ], [ %35, %label19 ]
	%37 = zext i1 %36 to i32
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label21, label %label22

label21:
	%39 = add i32 0, 100
	%40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %39)
	br label %label23

label22:
	br label %label23

label23:
	br label %label24

label24:
	%41 = load i32, i32* %1
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label26, label %label25

label25:
	%43 = load i32, i32* %1
	%44 = icmp ne i32 %43, 0
	br label %label26

label26:
	%45 = phi i1 [ true, %label24 ], [ %44, %label25 ]
	%46 = zext i1 %45 to i32
	%47 = icmp ne i32 %46, 0
	br i1 %47, label %label27, label %label28

label27:
	%48 = add i32 0, 101
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	br label %label29

label28:
	br label %label29

label29:
	br label %label30

label30:
	%50 = load i32, i32* %2
	%51 = icmp ne i32 %50, 0
	br i1 %51, label %label32, label %label31

label31:
	%52 = load i32, i32* %2
	%53 = icmp ne i32 %52, 0
	br label %label32

label32:
	%54 = phi i1 [ true, %label30 ], [ %53, %label31 ]
	%55 = zext i1 %54 to i32
	%56 = icmp ne i32 %55, 0
	br i1 %56, label %label33, label %label34

label33:
	%57 = add i32 0, 102
	%58 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %57)
	br label %label35

label34:
	br label %label35

label35:
	%59 = add i32 0, 10
	%60 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %59)
	ret void
}

define i32 @main() {
	call void @whileAndIfChains()
	call void @relationalOperationsTest()
	call void @andOrTesting()
	%1 = add i32 0, 1
	%2 = add i32 0, 1
	%3 = sitofp i32 %2 to double
	call void @intAndDouble(i32 %1, double %3)
	call void @errorTestingLogicalOps()
	store i32 98, i32* @d
	%4 = add i32 0, 97
	%5 = fadd double 0.0, 0.000000e+00
	%6 = call i32 @func(i32 %4, double %5)
	ret i32 0
}
