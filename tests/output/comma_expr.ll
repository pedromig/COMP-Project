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
	%4 = load i32, i32* %3
	%5 = icmp ne i32 %4, 0
	br i1 %5, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%6 = add i32 0, 5
	%7 = add i32 0, 10
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%9 = call i32 @f1()
	%10 = call i32 @f2()
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%12 = load i32, i32* %1
	%13 = load i32, i32* %3
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	store i32 2, i32* %1
	store i32 4, i32* %2
	%15 = load i32, i32* %2
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%17 = call i32 @f1()
	store i32 2, i32* %1
	%18 = load i32, i32* %1
	%19 = call i32 @f1()
	store i32 2, i32* %1
	%20 = load i32, i32* %1
	%21 = call i32 @f2()
	store i32 %21, i32* %3
	%22 = load i32, i32* %3
	%23 = call i32 @f1()
	store i32 2, i32* %1
	%24 = load i32, i32* %1
	%25 = call i32 @f1()
	store i32 2, i32* %1
	%26 = load i32, i32* %1
	%27 = call i32 @f2()
	store i32 %27, i32* %3
	%28 = load i32, i32* %3
	store i32 3, i32* %2
	%29 = load i32, i32* %2
	%30 = call i32 @f1()
	store i32 2, i32* %1
	%31 = load i32, i32* %1
	%32 = call i32 @f1()
	store i32 2, i32* %1
	%33 = load i32, i32* %1
	%34 = call i32 @f2()
	store i32 %34, i32* %3
	%35 = load i32, i32* %3
	%36 = call i32 @f1()
	store i32 2, i32* %1
	%37 = load i32, i32* %1
	%38 = call i32 @f1()
	store i32 2, i32* %1
	%39 = load i32, i32* %1
	%40 = call i32 @f2()
	store i32 %40, i32* %3
	%41 = load i32, i32* %3
	store i32 3, i32* %2
	%42 = load i32, i32* %2
	%43 = add i32 0, 1
	%44 = icmp ne i32 %43, 0
	br i1 %44, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	store i32 1, i32* %1
	store i32 2, i32* %3
	%45 = load i32, i32* %3
	%46 = icmp ne i32 %45, 0
	br i1 %46, label %label18, label %label19

label18:
	store i32 1, i32* %1
	store i32 2, i32* %3
	%47 = load i32, i32* %3
	%48 = icmp ne i32 %47, 0
	br i1 %48, label %label18, label %label19

label19:
	%49 = add i32 0, 5
	%50 = add i32 0, 10
	%51 = icmp ne i32 %50, 0
	br i1 %51, label %label20, label %label21

label20:
	%52 = add i32 0, 5
	%53 = add i32 0, 10
	%54 = icmp ne i32 %53, 0
	br i1 %54, label %label20, label %label21

label21:
	%55 = call i32 @f1()
	%56 = call i32 @f2()
	%57 = icmp ne i32 %56, 0
	br i1 %57, label %label22, label %label23

label22:
	%58 = call i32 @f1()
	%59 = call i32 @f2()
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label22, label %label23

label23:
	%61 = load i32, i32* %1
	%62 = load i32, i32* %3
	%63 = icmp ne i32 %62, 0
	br i1 %63, label %label24, label %label25

label24:
	%64 = load i32, i32* %1
	%65 = load i32, i32* %3
	%66 = icmp ne i32 %65, 0
	br i1 %66, label %label24, label %label25

label25:
	store i32 2, i32* %1
	store i32 4, i32* %2
	%67 = load i32, i32* %2
	%68 = icmp ne i32 %67, 0
	br i1 %68, label %label26, label %label27

label26:
	store i32 2, i32* %1
	store i32 4, i32* %2
	%69 = load i32, i32* %2
	%70 = icmp ne i32 %69, 0
	br i1 %70, label %label26, label %label27

label27:
	%71 = call i32 @f1()
	store i32 2, i32* %1
	%72 = load i32, i32* %1
	%73 = call i32 @f1()
	store i32 2, i32* %1
	%74 = load i32, i32* %1
	%75 = call i32 @f2()
	store i32 %75, i32* %3
	%76 = load i32, i32* %3
	%77 = call i32 @f1()
	store i32 2, i32* %1
	%78 = load i32, i32* %1
	%79 = call i32 @f1()
	store i32 2, i32* %1
	%80 = load i32, i32* %1
	%81 = call i32 @f2()
	store i32 %81, i32* %3
	%82 = load i32, i32* %3
	store i32 3, i32* %2
	%83 = load i32, i32* %2
	%84 = call i32 @f1()
	store i32 2, i32* %1
	%85 = load i32, i32* %1
	%86 = call i32 @f1()
	store i32 2, i32* %1
	%87 = load i32, i32* %1
	%88 = call i32 @f2()
	store i32 %88, i32* %3
	%89 = load i32, i32* %3
	%90 = call i32 @f1()
	store i32 2, i32* %1
	%91 = load i32, i32* %1
	%92 = call i32 @f1()
	store i32 2, i32* %1
	%93 = load i32, i32* %1
	%94 = call i32 @f2()
	store i32 %94, i32* %3
	%95 = load i32, i32* %3
	store i32 3, i32* %2
	%96 = load i32, i32* %2
	%97 = add i32 0, 1
	%98 = icmp ne i32 %97, 0
	br i1 %98, label %label28, label %label29

label28:
	%99 = call i32 @f1()
	store i32 2, i32* %1
	%100 = load i32, i32* %1
	%101 = call i32 @f1()
	store i32 2, i32* %1
	%102 = load i32, i32* %1
	%103 = call i32 @f2()
	store i32 %103, i32* %3
	%104 = load i32, i32* %3
	%105 = call i32 @f1()
	store i32 2, i32* %1
	%106 = load i32, i32* %1
	%107 = call i32 @f1()
	store i32 2, i32* %1
	%108 = load i32, i32* %1
	%109 = call i32 @f2()
	store i32 %109, i32* %3
	%110 = load i32, i32* %3
	store i32 3, i32* %2
	%111 = load i32, i32* %2
	%112 = call i32 @f1()
	store i32 2, i32* %1
	%113 = load i32, i32* %1
	%114 = call i32 @f1()
	store i32 2, i32* %1
	%115 = load i32, i32* %1
	%116 = call i32 @f2()
	store i32 %116, i32* %3
	%117 = load i32, i32* %3
	%118 = call i32 @f1()
	store i32 2, i32* %1
	%119 = load i32, i32* %1
	%120 = call i32 @f1()
	store i32 2, i32* %1
	%121 = load i32, i32* %1
	%122 = call i32 @f2()
	store i32 %122, i32* %3
	%123 = load i32, i32* %3
	store i32 3, i32* %2
	%124 = load i32, i32* %2
	%125 = add i32 0, 1
	%126 = icmp ne i32 %125, 0
	br i1 %126, label %label28, label %label29

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
	store i32 4, i32* %9
	%26 = load i32, i32* %9
	%27 = alloca i32
	store i32 %26, i32* %27
	%28 = load i32, i32* %1
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	%30 = load i32, i32* %9
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = load i32, i32* %27
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = call i32 @f1()
	store i32 2, i32* %1
	%35 = load i32, i32* %1
	%36 = call i32 @f1()
	store i32 2, i32* %1
	%37 = load i32, i32* %1
	%38 = call i32 @f2()
	store i32 %38, i32* %2
	%39 = load i32, i32* %2
	%40 = call i32 @f1()
	store i32 2, i32* %1
	%41 = load i32, i32* %1
	%42 = call i32 @f1()
	store i32 2, i32* %1
	%43 = load i32, i32* %1
	%44 = call i32 @f2()
	store i32 %44, i32* %2
	%45 = load i32, i32* %2
	%46 = load i32, i32* %9
	%47 = call i32 @f1()
	store i32 2, i32* %1
	%48 = load i32, i32* %1
	%49 = call i32 @f1()
	store i32 2, i32* %1
	%50 = load i32, i32* %1
	%51 = call i32 @f2()
	store i32 %51, i32* %2
	%52 = load i32, i32* %2
	%53 = call i32 @f1()
	store i32 2, i32* %1
	%54 = load i32, i32* %1
	%55 = call i32 @f1()
	store i32 2, i32* %1
	%56 = load i32, i32* %1
	%57 = call i32 @f2()
	store i32 %57, i32* %2
	%58 = load i32, i32* %2
	%59 = load i32, i32* %9
	%60 = add i32 0, 3
	%61 = alloca i32
	store i32 %60, i32* %61
	%62 = load i32, i32* %61
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	%64 = load i32, i32* %1
	%65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
	%66 = load i32, i32* %9
	%67 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %66)
	%68 = load i32, i32* %2
	%69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
	%70 = load i32, i32* %1
	%71 = call i32 @f1()
	%72 = load i32, i32* %1
	%73 = call i32 @f1()
	%74 = load i32, i32* %14
	%75 = load i32, i32* %1
	%76 = call i32 @f1()
	%77 = load i32, i32* %1
	%78 = call i32 @f1()
	%79 = load i32, i32* %14
	store i32 2, i32* %1
	%80 = load i32, i32* %1
	%81 = add i32 0, 10
	ret i32 %81
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
	store i32 4, i32* %9
	%26 = load i32, i32* %9
	%27 = alloca i32
	store i32 %26, i32* %27
	%28 = load i32, i32* %1
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	%30 = load i32, i32* %9
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = load i32, i32* %27
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = call i32 @f3()
	store i32 2, i32* %1
	%35 = load i32, i32* %1
	%36 = call i32 @f3()
	store i32 2, i32* %1
	%37 = load i32, i32* %1
	%38 = call i32 @f4()
	store i32 %38, i32* %2
	%39 = load i32, i32* %2
	%40 = call i32 @f3()
	store i32 2, i32* %1
	%41 = load i32, i32* %1
	%42 = call i32 @f3()
	store i32 2, i32* %1
	%43 = load i32, i32* %1
	%44 = call i32 @f4()
	store i32 %44, i32* %2
	%45 = load i32, i32* %2
	%46 = load i32, i32* %9
	%47 = call i32 @f3()
	store i32 2, i32* %1
	%48 = load i32, i32* %1
	%49 = call i32 @f3()
	store i32 2, i32* %1
	%50 = load i32, i32* %1
	%51 = call i32 @f4()
	store i32 %51, i32* %2
	%52 = load i32, i32* %2
	%53 = call i32 @f3()
	store i32 2, i32* %1
	%54 = load i32, i32* %1
	%55 = call i32 @f3()
	store i32 2, i32* %1
	%56 = load i32, i32* %1
	%57 = call i32 @f4()
	store i32 %57, i32* %2
	%58 = load i32, i32* %2
	%59 = load i32, i32* %9
	%60 = add i32 0, 3
	%61 = alloca i32
	store i32 %60, i32* %61
	%62 = load i32, i32* %61
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	%64 = load i32, i32* %1
	%65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
	%66 = load i32, i32* %9
	%67 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %66)
	%68 = load i32, i32* %2
	%69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
	%70 = load i32, i32* %1
	%71 = call i32 @f3()
	%72 = load i32, i32* %1
	%73 = call i32 @f3()
	%74 = load i32, i32* %14
	%75 = load i32, i32* %1
	%76 = call i32 @f3()
	%77 = load i32, i32* %1
	%78 = call i32 @f3()
	%79 = load i32, i32* %14
	store i32 2, i32* %1
	%80 = load i32, i32* %1
	%81 = add i32 0, 10
	ret i32 %81
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
	store i32 4, i32* %9
	%26 = load i32, i32* %9
	%27 = alloca i32
	store i32 %26, i32* %27
	%28 = load i32, i32* %1
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	%30 = load i32, i32* %9
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = load i32, i32* %27
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = call i32 @f5()
	store i32 2, i32* %1
	%35 = load i32, i32* %1
	%36 = call i32 @f5()
	store i32 2, i32* %1
	%37 = load i32, i32* %1
	%38 = call i32 @f6()
	store i32 %38, i32* %2
	%39 = load i32, i32* %2
	%40 = call i32 @f5()
	store i32 2, i32* %1
	%41 = load i32, i32* %1
	%42 = call i32 @f5()
	store i32 2, i32* %1
	%43 = load i32, i32* %1
	%44 = call i32 @f6()
	store i32 %44, i32* %2
	%45 = load i32, i32* %2
	%46 = load i32, i32* %9
	%47 = call i32 @f5()
	store i32 2, i32* %1
	%48 = load i32, i32* %1
	%49 = call i32 @f5()
	store i32 2, i32* %1
	%50 = load i32, i32* %1
	%51 = call i32 @f6()
	store i32 %51, i32* %2
	%52 = load i32, i32* %2
	%53 = call i32 @f5()
	store i32 2, i32* %1
	%54 = load i32, i32* %1
	%55 = call i32 @f5()
	store i32 2, i32* %1
	%56 = load i32, i32* %1
	%57 = call i32 @f6()
	store i32 %57, i32* %2
	%58 = load i32, i32* %2
	%59 = load i32, i32* %9
	%60 = add i32 0, 3
	%61 = alloca i32
	store i32 %60, i32* %61
	%62 = load i32, i32* %61
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	%64 = load i32, i32* %1
	%65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
	%66 = load i32, i32* %9
	%67 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %66)
	%68 = load i32, i32* %2
	%69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
	%70 = load i32, i32* %1
	%71 = call i32 @f5()
	%72 = load i32, i32* %1
	%73 = call i32 @f5()
	%74 = load i32, i32* %14
	%75 = load i32, i32* %1
	%76 = call i32 @f5()
	%77 = load i32, i32* %1
	%78 = call i32 @f5()
	%79 = load i32, i32* %14
	store i32 2, i32* %1
	%80 = load i32, i32* %1
	%81 = add i32 0, 10
	ret i32 %81
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
	store double 4.000000e+00, double* %5
	%12 = load double, double* %5
	%13 = alloca double
	store double %12, double* %13
	%14 = call double @f7()
	store double 2.000000e+00, double* %1
	%15 = load double, double* %1
	%16 = call double @f7()
	store double 2.000000e+00, double* %1
	%17 = load double, double* %1
	%18 = call double @f8()
	store double %18, double* %2
	%19 = load double, double* %2
	%20 = call double @f7()
	store double 2.000000e+00, double* %1
	%21 = load double, double* %1
	%22 = call double @f7()
	store double 2.000000e+00, double* %1
	%23 = load double, double* %1
	%24 = call double @f8()
	store double %24, double* %2
	%25 = load double, double* %2
	%26 = load double, double* %5
	%27 = call double @f7()
	store double 2.000000e+00, double* %1
	%28 = load double, double* %1
	%29 = call double @f7()
	store double 2.000000e+00, double* %1
	%30 = load double, double* %1
	%31 = call double @f8()
	store double %31, double* %2
	%32 = load double, double* %2
	%33 = call double @f7()
	store double 2.000000e+00, double* %1
	%34 = load double, double* %1
	%35 = call double @f7()
	store double 2.000000e+00, double* %1
	%36 = load double, double* %1
	%37 = call double @f8()
	store double %37, double* %2
	%38 = load double, double* %2
	%39 = load double, double* %5
	%40 = fadd double 0.0, 3.200000e+00
	%41 = alloca double
	store double %40, double* %41
	%42 = load double, double* %1
	%43 = call double @f7()
	%44 = load double, double* %1
	%45 = call double @f7()
	%46 = load double, double* %8
	%47 = load double, double* %1
	%48 = call double @f7()
	%49 = load double, double* %1
	%50 = call double @f7()
	%51 = load double, double* %8
	store double 2.000000e+00, double* %1
	%52 = load double, double* %1
	%53 = load double, double* %1
	%54 = call double @f7()
	%55 = load double, double* %1
	%56 = call double @f7()
	%57 = load double, double* %8
	%58 = load double, double* %1
	%59 = call double @f7()
	%60 = load double, double* %1
	%61 = call double @f7()
	%62 = load double, double* %8
	store double 2.000000e+00, double* %1
	%63 = load double, double* %1
	%64 = fadd double 0.0, 1.010200e+01
	ret double %64
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
