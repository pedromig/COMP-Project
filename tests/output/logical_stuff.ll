declare i32 @putchar(...)
declare i32 @getchar(...)


define void @and() {
	br label %label0

label0:
	%1 = add i32 0, 0
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label1, label %label2

label1:
	%3 = add i32 0, 0
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ false, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	%7 = add i32 0, 48
	%8 = add i32 %7, %6
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label3

label3:
	%10 = add i32 0, 0
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label4, label %label5

label4:
	%12 = add i32 0, 1
	%13 = icmp ne i32 %12, 0
	br label %label5

label5:
	%14 = phi i1 [ false, %label3 ], [ %13, %label4 ]
	%15 = zext i1 %14 to i32
	%16 = add i32 0, 48
	%17 = add i32 %16, %15
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	br label %label6

label6:
	%19 = add i32 0, 1
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label7, label %label8

label7:
	%21 = add i32 0, 0
	%22 = icmp ne i32 %21, 0
	br label %label8

label8:
	%23 = phi i1 [ false, %label6 ], [ %22, %label7 ]
	%24 = zext i1 %23 to i32
	%25 = add i32 0, 48
	%26 = add i32 %25, %24
	%27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
	br label %label9

label9:
	%28 = add i32 0, 1
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label10, label %label11

label10:
	%30 = add i32 0, 1
	%31 = icmp ne i32 %30, 0
	br label %label11

label11:
	%32 = phi i1 [ false, %label9 ], [ %31, %label10 ]
	%33 = zext i1 %32 to i32
	%34 = add i32 0, 48
	%35 = add i32 %34, %33
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	br label %label12

label12:
	%37 = add i32 0, 0
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label13, label %label14

label13:
	%39 = add i32 0, 0
	%40 = icmp ne i32 %39, 0
	br label %label14

label14:
	%41 = phi i1 [ false, %label12 ], [ %40, %label13 ]
	%42 = zext i1 %41 to i32
	%43 = add i32 0, 48
	%44 = add i32 %43, %42
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	br label %label15

label15:
	%46 = add i32 0, 0
	%47 = icmp ne i32 %46, 0
	br i1 %47, label %label16, label %label17

label16:
	%48 = add i32 0, 100
	%49 = icmp ne i32 %48, 0
	br label %label17

label17:
	%50 = phi i1 [ false, %label15 ], [ %49, %label16 ]
	%51 = zext i1 %50 to i32
	%52 = add i32 0, 48
	%53 = add i32 %52, %51
	%54 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %53)
	br label %label18

label18:
	%55 = add i32 0, 100
	%56 = icmp ne i32 %55, 0
	br i1 %56, label %label19, label %label20

label19:
	%57 = add i32 0, 0
	%58 = icmp ne i32 %57, 0
	br label %label20

label20:
	%59 = phi i1 [ false, %label18 ], [ %58, %label19 ]
	%60 = zext i1 %59 to i32
	%61 = add i32 0, 48
	%62 = add i32 %61, %60
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	br label %label21

label21:
	%64 = add i32 0, 100
	%65 = icmp ne i32 %64, 0
	br i1 %65, label %label22, label %label23

label22:
	%66 = add i32 0, 100
	%67 = icmp ne i32 %66, 0
	br label %label23

label23:
	%68 = phi i1 [ false, %label21 ], [ %67, %label22 ]
	%69 = zext i1 %68 to i32
	%70 = add i32 0, 48
	%71 = add i32 %70, %69
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	ret void
}

define void @nand() {
	br label %label0

label0:
	%1 = add i32 0, 0
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label1, label %label2

label1:
	%3 = add i32 0, 0
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ false, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	%8 = xor i1 %7, true
	%9 = zext i1 %8 to i32
	%10 = add i32 0, 48
	%11 = add i32 %10, %9
	%12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
	br label %label3

label3:
	%13 = add i32 0, 0
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label4, label %label5

label4:
	%15 = add i32 0, 1
	%16 = icmp ne i32 %15, 0
	br label %label5

label5:
	%17 = phi i1 [ false, %label3 ], [ %16, %label4 ]
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	%20 = xor i1 %19, true
	%21 = zext i1 %20 to i32
	%22 = add i32 0, 48
	%23 = add i32 %22, %21
	%24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
	br label %label6

label6:
	%25 = add i32 0, 1
	%26 = icmp ne i32 %25, 0
	br i1 %26, label %label7, label %label8

label7:
	%27 = add i32 0, 0
	%28 = icmp ne i32 %27, 0
	br label %label8

label8:
	%29 = phi i1 [ false, %label6 ], [ %28, %label7 ]
	%30 = zext i1 %29 to i32
	%31 = icmp ne i32 %30, 0
	%32 = xor i1 %31, true
	%33 = zext i1 %32 to i32
	%34 = add i32 0, 48
	%35 = add i32 %34, %33
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	br label %label9

label9:
	%37 = add i32 0, 1
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label10, label %label11

label10:
	%39 = add i32 0, 1
	%40 = icmp ne i32 %39, 0
	br label %label11

label11:
	%41 = phi i1 [ false, %label9 ], [ %40, %label10 ]
	%42 = zext i1 %41 to i32
	%43 = icmp ne i32 %42, 0
	%44 = xor i1 %43, true
	%45 = zext i1 %44 to i32
	%46 = add i32 0, 48
	%47 = add i32 %46, %45
	%48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
	br label %label12

label12:
	%49 = add i32 0, 0
	%50 = icmp ne i32 %49, 0
	br i1 %50, label %label13, label %label14

label13:
	%51 = add i32 0, 0
	%52 = icmp ne i32 %51, 0
	br label %label14

label14:
	%53 = phi i1 [ false, %label12 ], [ %52, %label13 ]
	%54 = zext i1 %53 to i32
	%55 = icmp ne i32 %54, 0
	%56 = xor i1 %55, true
	%57 = zext i1 %56 to i32
	%58 = add i32 0, 48
	%59 = add i32 %58, %57
	%60 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %59)
	br label %label15

label15:
	%61 = add i32 0, 0
	%62 = icmp ne i32 %61, 0
	br i1 %62, label %label16, label %label17

label16:
	%63 = add i32 0, 100
	%64 = icmp ne i32 %63, 0
	br label %label17

label17:
	%65 = phi i1 [ false, %label15 ], [ %64, %label16 ]
	%66 = zext i1 %65 to i32
	%67 = icmp ne i32 %66, 0
	%68 = xor i1 %67, true
	%69 = zext i1 %68 to i32
	%70 = add i32 0, 48
	%71 = add i32 %70, %69
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	br label %label18

label18:
	%73 = add i32 0, 100
	%74 = icmp ne i32 %73, 0
	br i1 %74, label %label19, label %label20

label19:
	%75 = add i32 0, 0
	%76 = icmp ne i32 %75, 0
	br label %label20

label20:
	%77 = phi i1 [ false, %label18 ], [ %76, %label19 ]
	%78 = zext i1 %77 to i32
	%79 = icmp ne i32 %78, 0
	%80 = xor i1 %79, true
	%81 = zext i1 %80 to i32
	%82 = add i32 0, 48
	%83 = add i32 %82, %81
	%84 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %83)
	br label %label21

label21:
	%85 = add i32 0, 100
	%86 = icmp ne i32 %85, 0
	br i1 %86, label %label22, label %label23

label22:
	%87 = add i32 0, 100
	%88 = icmp ne i32 %87, 0
	br label %label23

label23:
	%89 = phi i1 [ false, %label21 ], [ %88, %label22 ]
	%90 = zext i1 %89 to i32
	%91 = icmp ne i32 %90, 0
	%92 = xor i1 %91, true
	%93 = zext i1 %92 to i32
	%94 = add i32 0, 48
	%95 = add i32 %94, %93
	%96 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %95)
	ret void
}

define void @or() {
	br label %label0

label0:
	%1 = add i32 0, 0
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label2, label %label1

label1:
	%3 = add i32 0, 0
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ true, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	%7 = add i32 0, 48
	%8 = add i32 %7, %6
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label3

label3:
	%10 = add i32 0, 0
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label5, label %label4

label4:
	%12 = add i32 0, 1
	%13 = icmp ne i32 %12, 0
	br label %label5

label5:
	%14 = phi i1 [ true, %label3 ], [ %13, %label4 ]
	%15 = zext i1 %14 to i32
	%16 = add i32 0, 48
	%17 = add i32 %16, %15
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	br label %label6

label6:
	%19 = add i32 0, 1
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label8, label %label7

label7:
	%21 = add i32 0, 0
	%22 = icmp ne i32 %21, 0
	br label %label8

label8:
	%23 = phi i1 [ true, %label6 ], [ %22, %label7 ]
	%24 = zext i1 %23 to i32
	%25 = add i32 0, 48
	%26 = add i32 %25, %24
	%27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
	br label %label9

label9:
	%28 = add i32 0, 1
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label11, label %label10

label10:
	%30 = add i32 0, 1
	%31 = icmp ne i32 %30, 0
	br label %label11

label11:
	%32 = phi i1 [ true, %label9 ], [ %31, %label10 ]
	%33 = zext i1 %32 to i32
	%34 = add i32 0, 48
	%35 = add i32 %34, %33
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	br label %label12

label12:
	%37 = add i32 0, 0
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label14, label %label13

label13:
	%39 = add i32 0, 0
	%40 = icmp ne i32 %39, 0
	br label %label14

label14:
	%41 = phi i1 [ true, %label12 ], [ %40, %label13 ]
	%42 = zext i1 %41 to i32
	%43 = add i32 0, 48
	%44 = add i32 %43, %42
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	br label %label15

label15:
	%46 = add i32 0, 0
	%47 = icmp ne i32 %46, 0
	br i1 %47, label %label17, label %label16

label16:
	%48 = add i32 0, 100
	%49 = icmp ne i32 %48, 0
	br label %label17

label17:
	%50 = phi i1 [ true, %label15 ], [ %49, %label16 ]
	%51 = zext i1 %50 to i32
	%52 = add i32 0, 48
	%53 = add i32 %52, %51
	%54 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %53)
	br label %label18

label18:
	%55 = add i32 0, 100
	%56 = icmp ne i32 %55, 0
	br i1 %56, label %label20, label %label19

label19:
	%57 = add i32 0, 0
	%58 = icmp ne i32 %57, 0
	br label %label20

label20:
	%59 = phi i1 [ true, %label18 ], [ %58, %label19 ]
	%60 = zext i1 %59 to i32
	%61 = add i32 0, 48
	%62 = add i32 %61, %60
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	br label %label21

label21:
	%64 = add i32 0, 100
	%65 = icmp ne i32 %64, 0
	br i1 %65, label %label23, label %label22

label22:
	%66 = add i32 0, 100
	%67 = icmp ne i32 %66, 0
	br label %label23

label23:
	%68 = phi i1 [ true, %label21 ], [ %67, %label22 ]
	%69 = zext i1 %68 to i32
	%70 = add i32 0, 48
	%71 = add i32 %70, %69
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	ret void
}

define void @nor() {
	br label %label0

label0:
	%1 = add i32 0, 0
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label2, label %label1

label1:
	%3 = add i32 0, 0
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ true, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	%8 = xor i1 %7, true
	%9 = zext i1 %8 to i32
	%10 = add i32 0, 48
	%11 = add i32 %10, %9
	%12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
	br label %label3

label3:
	%13 = add i32 0, 0
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label5, label %label4

label4:
	%15 = add i32 0, 1
	%16 = icmp ne i32 %15, 0
	br label %label5

label5:
	%17 = phi i1 [ true, %label3 ], [ %16, %label4 ]
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	%20 = xor i1 %19, true
	%21 = zext i1 %20 to i32
	%22 = add i32 0, 48
	%23 = add i32 %22, %21
	%24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
	br label %label6

label6:
	%25 = add i32 0, 1
	%26 = icmp ne i32 %25, 0
	br i1 %26, label %label8, label %label7

label7:
	%27 = add i32 0, 0
	%28 = icmp ne i32 %27, 0
	br label %label8

label8:
	%29 = phi i1 [ true, %label6 ], [ %28, %label7 ]
	%30 = zext i1 %29 to i32
	%31 = icmp ne i32 %30, 0
	%32 = xor i1 %31, true
	%33 = zext i1 %32 to i32
	%34 = add i32 0, 48
	%35 = add i32 %34, %33
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	br label %label9

label9:
	%37 = add i32 0, 1
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label11, label %label10

label10:
	%39 = add i32 0, 1
	%40 = icmp ne i32 %39, 0
	br label %label11

label11:
	%41 = phi i1 [ true, %label9 ], [ %40, %label10 ]
	%42 = zext i1 %41 to i32
	%43 = icmp ne i32 %42, 0
	%44 = xor i1 %43, true
	%45 = zext i1 %44 to i32
	%46 = add i32 0, 48
	%47 = add i32 %46, %45
	%48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
	br label %label12

label12:
	%49 = add i32 0, 0
	%50 = icmp ne i32 %49, 0
	br i1 %50, label %label14, label %label13

label13:
	%51 = add i32 0, 0
	%52 = icmp ne i32 %51, 0
	br label %label14

label14:
	%53 = phi i1 [ true, %label12 ], [ %52, %label13 ]
	%54 = zext i1 %53 to i32
	%55 = icmp ne i32 %54, 0
	%56 = xor i1 %55, true
	%57 = zext i1 %56 to i32
	%58 = add i32 0, 48
	%59 = add i32 %58, %57
	%60 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %59)
	br label %label15

label15:
	%61 = add i32 0, 0
	%62 = icmp ne i32 %61, 0
	br i1 %62, label %label17, label %label16

label16:
	%63 = add i32 0, 100
	%64 = icmp ne i32 %63, 0
	br label %label17

label17:
	%65 = phi i1 [ true, %label15 ], [ %64, %label16 ]
	%66 = zext i1 %65 to i32
	%67 = icmp ne i32 %66, 0
	%68 = xor i1 %67, true
	%69 = zext i1 %68 to i32
	%70 = add i32 0, 48
	%71 = add i32 %70, %69
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	br label %label18

label18:
	%73 = add i32 0, 100
	%74 = icmp ne i32 %73, 0
	br i1 %74, label %label20, label %label19

label19:
	%75 = add i32 0, 0
	%76 = icmp ne i32 %75, 0
	br label %label20

label20:
	%77 = phi i1 [ true, %label18 ], [ %76, %label19 ]
	%78 = zext i1 %77 to i32
	%79 = icmp ne i32 %78, 0
	%80 = xor i1 %79, true
	%81 = zext i1 %80 to i32
	%82 = add i32 0, 48
	%83 = add i32 %82, %81
	%84 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %83)
	br label %label21

label21:
	%85 = add i32 0, 100
	%86 = icmp ne i32 %85, 0
	br i1 %86, label %label23, label %label22

label22:
	%87 = add i32 0, 100
	%88 = icmp ne i32 %87, 0
	br label %label23

label23:
	%89 = phi i1 [ true, %label21 ], [ %88, %label22 ]
	%90 = zext i1 %89 to i32
	%91 = icmp ne i32 %90, 0
	%92 = xor i1 %91, true
	%93 = zext i1 %92 to i32
	%94 = add i32 0, 48
	%95 = add i32 %94, %93
	%96 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %95)
	ret void
}

define void @n_or_and_or() {
	br label %label0

label0:
	%1 = add i32 0, 0
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label1, label %label2

label1:
	%3 = add i32 0, 0
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ false, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	br label %label3

label3:
	%7 = add i32 0, 0
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label5, label %label4

label4:
	%9 = icmp ne i32 %6, 0
	br label %label5

label5:
	%10 = phi i1 [ true, %label3 ], [ %9, %label4 ]
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	%13 = xor i1 %12, true
	%14 = zext i1 %13 to i32
	%15 = add i32 0, 48
	%16 = add i32 %15, %14
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	br label %label6

label6:
	%18 = add i32 0, 1
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label7, label %label8

label7:
	%20 = add i32 0, 0
	%21 = icmp ne i32 %20, 0
	br label %label8

label8:
	%22 = phi i1 [ false, %label6 ], [ %21, %label7 ]
	%23 = zext i1 %22 to i32
	br label %label9

label9:
	%24 = add i32 0, 0
	%25 = icmp ne i32 %24, 0
	br i1 %25, label %label11, label %label10

label10:
	%26 = icmp ne i32 %23, 0
	br label %label11

label11:
	%27 = phi i1 [ true, %label9 ], [ %26, %label10 ]
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	%30 = xor i1 %29, true
	%31 = zext i1 %30 to i32
	%32 = add i32 0, 48
	%33 = add i32 %32, %31
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	br label %label12

label12:
	%35 = add i32 0, 0
	%36 = icmp ne i32 %35, 0
	br i1 %36, label %label13, label %label14

label13:
	%37 = add i32 0, 0
	%38 = icmp ne i32 %37, 0
	br label %label14

label14:
	%39 = phi i1 [ false, %label12 ], [ %38, %label13 ]
	%40 = zext i1 %39 to i32
	br label %label15

label15:
	%41 = add i32 0, 1
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label17, label %label16

label16:
	%43 = icmp ne i32 %40, 0
	br label %label17

label17:
	%44 = phi i1 [ true, %label15 ], [ %43, %label16 ]
	%45 = zext i1 %44 to i32
	%46 = icmp ne i32 %45, 0
	%47 = xor i1 %46, true
	%48 = zext i1 %47 to i32
	%49 = add i32 0, 48
	%50 = add i32 %49, %48
	%51 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %50)
	br label %label18

label18:
	%52 = add i32 0, 1
	%53 = icmp ne i32 %52, 0
	br i1 %53, label %label19, label %label20

label19:
	%54 = add i32 0, 0
	%55 = icmp ne i32 %54, 0
	br label %label20

label20:
	%56 = phi i1 [ false, %label18 ], [ %55, %label19 ]
	%57 = zext i1 %56 to i32
	br label %label21

label21:
	%58 = add i32 0, 1
	%59 = icmp ne i32 %58, 0
	br i1 %59, label %label23, label %label22

label22:
	%60 = icmp ne i32 %57, 0
	br label %label23

label23:
	%61 = phi i1 [ true, %label21 ], [ %60, %label22 ]
	%62 = zext i1 %61 to i32
	%63 = icmp ne i32 %62, 0
	%64 = xor i1 %63, true
	%65 = zext i1 %64 to i32
	%66 = add i32 0, 48
	%67 = add i32 %66, %65
	%68 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %67)
	br label %label24

label24:
	%69 = add i32 0, 0
	%70 = icmp ne i32 %69, 0
	br i1 %70, label %label25, label %label26

label25:
	%71 = add i32 0, 1
	%72 = icmp ne i32 %71, 0
	br label %label26

label26:
	%73 = phi i1 [ false, %label24 ], [ %72, %label25 ]
	%74 = zext i1 %73 to i32
	br label %label27

label27:
	%75 = add i32 0, 0
	%76 = icmp ne i32 %75, 0
	br i1 %76, label %label29, label %label28

label28:
	%77 = icmp ne i32 %74, 0
	br label %label29

label29:
	%78 = phi i1 [ true, %label27 ], [ %77, %label28 ]
	%79 = zext i1 %78 to i32
	%80 = icmp ne i32 %79, 0
	%81 = xor i1 %80, true
	%82 = zext i1 %81 to i32
	%83 = add i32 0, 48
	%84 = add i32 %83, %82
	%85 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %84)
	br label %label30

label30:
	%86 = add i32 0, 1
	%87 = icmp ne i32 %86, 0
	br i1 %87, label %label31, label %label32

label31:
	%88 = add i32 0, 1
	%89 = icmp ne i32 %88, 0
	br label %label32

label32:
	%90 = phi i1 [ false, %label30 ], [ %89, %label31 ]
	%91 = zext i1 %90 to i32
	br label %label33

label33:
	%92 = add i32 0, 0
	%93 = icmp ne i32 %92, 0
	br i1 %93, label %label35, label %label34

label34:
	%94 = icmp ne i32 %91, 0
	br label %label35

label35:
	%95 = phi i1 [ true, %label33 ], [ %94, %label34 ]
	%96 = zext i1 %95 to i32
	%97 = icmp ne i32 %96, 0
	%98 = xor i1 %97, true
	%99 = zext i1 %98 to i32
	%100 = add i32 0, 48
	%101 = add i32 %100, %99
	%102 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %101)
	br label %label36

label36:
	%103 = add i32 0, 0
	%104 = icmp ne i32 %103, 0
	br i1 %104, label %label37, label %label38

label37:
	%105 = add i32 0, 1
	%106 = icmp ne i32 %105, 0
	br label %label38

label38:
	%107 = phi i1 [ false, %label36 ], [ %106, %label37 ]
	%108 = zext i1 %107 to i32
	br label %label39

label39:
	%109 = add i32 0, 1
	%110 = icmp ne i32 %109, 0
	br i1 %110, label %label41, label %label40

label40:
	%111 = icmp ne i32 %108, 0
	br label %label41

label41:
	%112 = phi i1 [ true, %label39 ], [ %111, %label40 ]
	%113 = zext i1 %112 to i32
	%114 = icmp ne i32 %113, 0
	%115 = xor i1 %114, true
	%116 = zext i1 %115 to i32
	%117 = add i32 0, 48
	%118 = add i32 %117, %116
	%119 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %118)
	br label %label42

label42:
	%120 = add i32 0, 1
	%121 = icmp ne i32 %120, 0
	br i1 %121, label %label43, label %label44

label43:
	%122 = add i32 0, 1
	%123 = icmp ne i32 %122, 0
	br label %label44

label44:
	%124 = phi i1 [ false, %label42 ], [ %123, %label43 ]
	%125 = zext i1 %124 to i32
	br label %label45

label45:
	%126 = add i32 0, 1
	%127 = icmp ne i32 %126, 0
	br i1 %127, label %label47, label %label46

label46:
	%128 = icmp ne i32 %125, 0
	br label %label47

label47:
	%129 = phi i1 [ true, %label45 ], [ %128, %label46 ]
	%130 = zext i1 %129 to i32
	%131 = icmp ne i32 %130, 0
	%132 = xor i1 %131, true
	%133 = zext i1 %132 to i32
	%134 = add i32 0, 48
	%135 = add i32 %134, %133
	%136 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %135)
	br label %label48

label48:
	%137 = add i32 0, 0
	%138 = icmp ne i32 %137, 0
	br i1 %138, label %label49, label %label50

label49:
	%139 = add i32 0, 0
	%140 = icmp ne i32 %139, 0
	br label %label50

label50:
	%141 = phi i1 [ false, %label48 ], [ %140, %label49 ]
	%142 = zext i1 %141 to i32
	br label %label51

label51:
	%143 = add i32 0, 0
	%144 = icmp ne i32 %143, 0
	br i1 %144, label %label53, label %label52

label52:
	%145 = icmp ne i32 %142, 0
	br label %label53

label53:
	%146 = phi i1 [ true, %label51 ], [ %145, %label52 ]
	%147 = zext i1 %146 to i32
	br label %label54

label54:
	%148 = icmp ne i32 %147, 0
	br i1 %148, label %label56, label %label55

label55:
	%149 = add i32 0, 0
	%150 = icmp ne i32 %149, 0
	br label %label56

label56:
	%151 = phi i1 [ true, %label54 ], [ %150, %label55 ]
	%152 = zext i1 %151 to i32
	%153 = icmp ne i32 %152, 0
	%154 = xor i1 %153, true
	%155 = zext i1 %154 to i32
	%156 = add i32 0, 48
	%157 = add i32 %156, %155
	%158 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %157)
	br label %label57

label57:
	%159 = add i32 0, 1
	%160 = icmp ne i32 %159, 0
	br i1 %160, label %label58, label %label59

label58:
	%161 = add i32 0, 0
	%162 = icmp ne i32 %161, 0
	br label %label59

label59:
	%163 = phi i1 [ false, %label57 ], [ %162, %label58 ]
	%164 = zext i1 %163 to i32
	br label %label60

label60:
	%165 = add i32 0, 0
	%166 = icmp ne i32 %165, 0
	br i1 %166, label %label62, label %label61

label61:
	%167 = icmp ne i32 %164, 0
	br label %label62

label62:
	%168 = phi i1 [ true, %label60 ], [ %167, %label61 ]
	%169 = zext i1 %168 to i32
	br label %label63

label63:
	%170 = icmp ne i32 %169, 0
	br i1 %170, label %label65, label %label64

label64:
	%171 = add i32 0, 0
	%172 = icmp ne i32 %171, 0
	br label %label65

label65:
	%173 = phi i1 [ true, %label63 ], [ %172, %label64 ]
	%174 = zext i1 %173 to i32
	%175 = icmp ne i32 %174, 0
	%176 = xor i1 %175, true
	%177 = zext i1 %176 to i32
	%178 = add i32 0, 48
	%179 = add i32 %178, %177
	%180 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %179)
	br label %label66

label66:
	%181 = add i32 0, 0
	%182 = icmp ne i32 %181, 0
	br i1 %182, label %label67, label %label68

label67:
	%183 = add i32 0, 0
	%184 = icmp ne i32 %183, 0
	br label %label68

label68:
	%185 = phi i1 [ false, %label66 ], [ %184, %label67 ]
	%186 = zext i1 %185 to i32
	br label %label69

label69:
	%187 = add i32 0, 1
	%188 = icmp ne i32 %187, 0
	br i1 %188, label %label71, label %label70

label70:
	%189 = icmp ne i32 %186, 0
	br label %label71

label71:
	%190 = phi i1 [ true, %label69 ], [ %189, %label70 ]
	%191 = zext i1 %190 to i32
	br label %label72

label72:
	%192 = icmp ne i32 %191, 0
	br i1 %192, label %label74, label %label73

label73:
	%193 = add i32 0, 0
	%194 = icmp ne i32 %193, 0
	br label %label74

label74:
	%195 = phi i1 [ true, %label72 ], [ %194, %label73 ]
	%196 = zext i1 %195 to i32
	%197 = icmp ne i32 %196, 0
	%198 = xor i1 %197, true
	%199 = zext i1 %198 to i32
	%200 = add i32 0, 48
	%201 = add i32 %200, %199
	%202 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %201)
	br label %label75

label75:
	%203 = add i32 0, 1
	%204 = icmp ne i32 %203, 0
	br i1 %204, label %label76, label %label77

label76:
	%205 = add i32 0, 0
	%206 = icmp ne i32 %205, 0
	br label %label77

label77:
	%207 = phi i1 [ false, %label75 ], [ %206, %label76 ]
	%208 = zext i1 %207 to i32
	br label %label78

label78:
	%209 = add i32 0, 1
	%210 = icmp ne i32 %209, 0
	br i1 %210, label %label80, label %label79

label79:
	%211 = icmp ne i32 %208, 0
	br label %label80

label80:
	%212 = phi i1 [ true, %label78 ], [ %211, %label79 ]
	%213 = zext i1 %212 to i32
	br label %label81

label81:
	%214 = icmp ne i32 %213, 0
	br i1 %214, label %label83, label %label82

label82:
	%215 = add i32 0, 0
	%216 = icmp ne i32 %215, 0
	br label %label83

label83:
	%217 = phi i1 [ true, %label81 ], [ %216, %label82 ]
	%218 = zext i1 %217 to i32
	%219 = icmp ne i32 %218, 0
	%220 = xor i1 %219, true
	%221 = zext i1 %220 to i32
	%222 = add i32 0, 48
	%223 = add i32 %222, %221
	%224 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %223)
	br label %label84

label84:
	%225 = add i32 0, 0
	%226 = icmp ne i32 %225, 0
	br i1 %226, label %label85, label %label86

label85:
	%227 = add i32 0, 1
	%228 = icmp ne i32 %227, 0
	br label %label86

label86:
	%229 = phi i1 [ false, %label84 ], [ %228, %label85 ]
	%230 = zext i1 %229 to i32
	br label %label87

label87:
	%231 = add i32 0, 0
	%232 = icmp ne i32 %231, 0
	br i1 %232, label %label89, label %label88

label88:
	%233 = icmp ne i32 %230, 0
	br label %label89

label89:
	%234 = phi i1 [ true, %label87 ], [ %233, %label88 ]
	%235 = zext i1 %234 to i32
	br label %label90

label90:
	%236 = icmp ne i32 %235, 0
	br i1 %236, label %label92, label %label91

label91:
	%237 = add i32 0, 0
	%238 = icmp ne i32 %237, 0
	br label %label92

label92:
	%239 = phi i1 [ true, %label90 ], [ %238, %label91 ]
	%240 = zext i1 %239 to i32
	%241 = icmp ne i32 %240, 0
	%242 = xor i1 %241, true
	%243 = zext i1 %242 to i32
	%244 = add i32 0, 48
	%245 = add i32 %244, %243
	%246 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %245)
	br label %label93

label93:
	%247 = add i32 0, 1
	%248 = icmp ne i32 %247, 0
	br i1 %248, label %label94, label %label95

label94:
	%249 = add i32 0, 1
	%250 = icmp ne i32 %249, 0
	br label %label95

label95:
	%251 = phi i1 [ false, %label93 ], [ %250, %label94 ]
	%252 = zext i1 %251 to i32
	br label %label96

label96:
	%253 = add i32 0, 0
	%254 = icmp ne i32 %253, 0
	br i1 %254, label %label98, label %label97

label97:
	%255 = icmp ne i32 %252, 0
	br label %label98

label98:
	%256 = phi i1 [ true, %label96 ], [ %255, %label97 ]
	%257 = zext i1 %256 to i32
	br label %label99

label99:
	%258 = icmp ne i32 %257, 0
	br i1 %258, label %label101, label %label100

label100:
	%259 = add i32 0, 0
	%260 = icmp ne i32 %259, 0
	br label %label101

label101:
	%261 = phi i1 [ true, %label99 ], [ %260, %label100 ]
	%262 = zext i1 %261 to i32
	%263 = icmp ne i32 %262, 0
	%264 = xor i1 %263, true
	%265 = zext i1 %264 to i32
	%266 = add i32 0, 48
	%267 = add i32 %266, %265
	%268 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %267)
	br label %label102

label102:
	%269 = add i32 0, 0
	%270 = icmp ne i32 %269, 0
	br i1 %270, label %label103, label %label104

label103:
	%271 = add i32 0, 1
	%272 = icmp ne i32 %271, 0
	br label %label104

label104:
	%273 = phi i1 [ false, %label102 ], [ %272, %label103 ]
	%274 = zext i1 %273 to i32
	br label %label105

label105:
	%275 = add i32 0, 1
	%276 = icmp ne i32 %275, 0
	br i1 %276, label %label107, label %label106

label106:
	%277 = icmp ne i32 %274, 0
	br label %label107

label107:
	%278 = phi i1 [ true, %label105 ], [ %277, %label106 ]
	%279 = zext i1 %278 to i32
	br label %label108

label108:
	%280 = icmp ne i32 %279, 0
	br i1 %280, label %label110, label %label109

label109:
	%281 = add i32 0, 0
	%282 = icmp ne i32 %281, 0
	br label %label110

label110:
	%283 = phi i1 [ true, %label108 ], [ %282, %label109 ]
	%284 = zext i1 %283 to i32
	%285 = icmp ne i32 %284, 0
	%286 = xor i1 %285, true
	%287 = zext i1 %286 to i32
	%288 = add i32 0, 48
	%289 = add i32 %288, %287
	%290 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %289)
	br label %label111

label111:
	%291 = add i32 0, 1
	%292 = icmp ne i32 %291, 0
	br i1 %292, label %label112, label %label113

label112:
	%293 = add i32 0, 1
	%294 = icmp ne i32 %293, 0
	br label %label113

label113:
	%295 = phi i1 [ false, %label111 ], [ %294, %label112 ]
	%296 = zext i1 %295 to i32
	br label %label114

label114:
	%297 = add i32 0, 1
	%298 = icmp ne i32 %297, 0
	br i1 %298, label %label116, label %label115

label115:
	%299 = icmp ne i32 %296, 0
	br label %label116

label116:
	%300 = phi i1 [ true, %label114 ], [ %299, %label115 ]
	%301 = zext i1 %300 to i32
	br label %label117

label117:
	%302 = icmp ne i32 %301, 0
	br i1 %302, label %label119, label %label118

label118:
	%303 = add i32 0, 0
	%304 = icmp ne i32 %303, 0
	br label %label119

label119:
	%305 = phi i1 [ true, %label117 ], [ %304, %label118 ]
	%306 = zext i1 %305 to i32
	%307 = icmp ne i32 %306, 0
	%308 = xor i1 %307, true
	%309 = zext i1 %308 to i32
	%310 = add i32 0, 48
	%311 = add i32 %310, %309
	%312 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %311)
	br label %label120

label120:
	%313 = add i32 0, 0
	%314 = icmp ne i32 %313, 0
	br i1 %314, label %label121, label %label122

label121:
	%315 = add i32 0, 0
	%316 = icmp ne i32 %315, 0
	br label %label122

label122:
	%317 = phi i1 [ false, %label120 ], [ %316, %label121 ]
	%318 = zext i1 %317 to i32
	br label %label123

label123:
	%319 = add i32 0, 0
	%320 = icmp ne i32 %319, 0
	br i1 %320, label %label125, label %label124

label124:
	%321 = icmp ne i32 %318, 0
	br label %label125

label125:
	%322 = phi i1 [ true, %label123 ], [ %321, %label124 ]
	%323 = zext i1 %322 to i32
	br label %label126

label126:
	%324 = icmp ne i32 %323, 0
	br i1 %324, label %label128, label %label127

label127:
	%325 = add i32 0, 1
	%326 = icmp ne i32 %325, 0
	br label %label128

label128:
	%327 = phi i1 [ true, %label126 ], [ %326, %label127 ]
	%328 = zext i1 %327 to i32
	%329 = icmp ne i32 %328, 0
	%330 = xor i1 %329, true
	%331 = zext i1 %330 to i32
	%332 = add i32 0, 48
	%333 = add i32 %332, %331
	%334 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %333)
	br label %label129

label129:
	%335 = add i32 0, 1
	%336 = icmp ne i32 %335, 0
	br i1 %336, label %label130, label %label131

label130:
	%337 = add i32 0, 0
	%338 = icmp ne i32 %337, 0
	br label %label131

label131:
	%339 = phi i1 [ false, %label129 ], [ %338, %label130 ]
	%340 = zext i1 %339 to i32
	br label %label132

label132:
	%341 = add i32 0, 0
	%342 = icmp ne i32 %341, 0
	br i1 %342, label %label134, label %label133

label133:
	%343 = icmp ne i32 %340, 0
	br label %label134

label134:
	%344 = phi i1 [ true, %label132 ], [ %343, %label133 ]
	%345 = zext i1 %344 to i32
	br label %label135

label135:
	%346 = icmp ne i32 %345, 0
	br i1 %346, label %label137, label %label136

label136:
	%347 = add i32 0, 1
	%348 = icmp ne i32 %347, 0
	br label %label137

label137:
	%349 = phi i1 [ true, %label135 ], [ %348, %label136 ]
	%350 = zext i1 %349 to i32
	%351 = icmp ne i32 %350, 0
	%352 = xor i1 %351, true
	%353 = zext i1 %352 to i32
	%354 = add i32 0, 48
	%355 = add i32 %354, %353
	%356 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %355)
	br label %label138

label138:
	%357 = add i32 0, 0
	%358 = icmp ne i32 %357, 0
	br i1 %358, label %label139, label %label140

label139:
	%359 = add i32 0, 0
	%360 = icmp ne i32 %359, 0
	br label %label140

label140:
	%361 = phi i1 [ false, %label138 ], [ %360, %label139 ]
	%362 = zext i1 %361 to i32
	br label %label141

label141:
	%363 = add i32 0, 1
	%364 = icmp ne i32 %363, 0
	br i1 %364, label %label143, label %label142

label142:
	%365 = icmp ne i32 %362, 0
	br label %label143

label143:
	%366 = phi i1 [ true, %label141 ], [ %365, %label142 ]
	%367 = zext i1 %366 to i32
	br label %label144

label144:
	%368 = icmp ne i32 %367, 0
	br i1 %368, label %label146, label %label145

label145:
	%369 = add i32 0, 1
	%370 = icmp ne i32 %369, 0
	br label %label146

label146:
	%371 = phi i1 [ true, %label144 ], [ %370, %label145 ]
	%372 = zext i1 %371 to i32
	%373 = icmp ne i32 %372, 0
	%374 = xor i1 %373, true
	%375 = zext i1 %374 to i32
	%376 = add i32 0, 48
	%377 = add i32 %376, %375
	%378 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %377)
	br label %label147

label147:
	%379 = add i32 0, 1
	%380 = icmp ne i32 %379, 0
	br i1 %380, label %label148, label %label149

label148:
	%381 = add i32 0, 0
	%382 = icmp ne i32 %381, 0
	br label %label149

label149:
	%383 = phi i1 [ false, %label147 ], [ %382, %label148 ]
	%384 = zext i1 %383 to i32
	br label %label150

label150:
	%385 = add i32 0, 1
	%386 = icmp ne i32 %385, 0
	br i1 %386, label %label152, label %label151

label151:
	%387 = icmp ne i32 %384, 0
	br label %label152

label152:
	%388 = phi i1 [ true, %label150 ], [ %387, %label151 ]
	%389 = zext i1 %388 to i32
	br label %label153

label153:
	%390 = icmp ne i32 %389, 0
	br i1 %390, label %label155, label %label154

label154:
	%391 = add i32 0, 1
	%392 = icmp ne i32 %391, 0
	br label %label155

label155:
	%393 = phi i1 [ true, %label153 ], [ %392, %label154 ]
	%394 = zext i1 %393 to i32
	%395 = icmp ne i32 %394, 0
	%396 = xor i1 %395, true
	%397 = zext i1 %396 to i32
	%398 = add i32 0, 48
	%399 = add i32 %398, %397
	%400 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %399)
	br label %label156

label156:
	%401 = add i32 0, 0
	%402 = icmp ne i32 %401, 0
	br i1 %402, label %label157, label %label158

label157:
	%403 = add i32 0, 1
	%404 = icmp ne i32 %403, 0
	br label %label158

label158:
	%405 = phi i1 [ false, %label156 ], [ %404, %label157 ]
	%406 = zext i1 %405 to i32
	br label %label159

label159:
	%407 = add i32 0, 0
	%408 = icmp ne i32 %407, 0
	br i1 %408, label %label161, label %label160

label160:
	%409 = icmp ne i32 %406, 0
	br label %label161

label161:
	%410 = phi i1 [ true, %label159 ], [ %409, %label160 ]
	%411 = zext i1 %410 to i32
	br label %label162

label162:
	%412 = icmp ne i32 %411, 0
	br i1 %412, label %label164, label %label163

label163:
	%413 = add i32 0, 1
	%414 = icmp ne i32 %413, 0
	br label %label164

label164:
	%415 = phi i1 [ true, %label162 ], [ %414, %label163 ]
	%416 = zext i1 %415 to i32
	%417 = icmp ne i32 %416, 0
	%418 = xor i1 %417, true
	%419 = zext i1 %418 to i32
	%420 = add i32 0, 48
	%421 = add i32 %420, %419
	%422 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %421)
	br label %label165

label165:
	%423 = add i32 0, 1
	%424 = icmp ne i32 %423, 0
	br i1 %424, label %label166, label %label167

label166:
	%425 = add i32 0, 1
	%426 = icmp ne i32 %425, 0
	br label %label167

label167:
	%427 = phi i1 [ false, %label165 ], [ %426, %label166 ]
	%428 = zext i1 %427 to i32
	br label %label168

label168:
	%429 = add i32 0, 0
	%430 = icmp ne i32 %429, 0
	br i1 %430, label %label170, label %label169

label169:
	%431 = icmp ne i32 %428, 0
	br label %label170

label170:
	%432 = phi i1 [ true, %label168 ], [ %431, %label169 ]
	%433 = zext i1 %432 to i32
	br label %label171

label171:
	%434 = icmp ne i32 %433, 0
	br i1 %434, label %label173, label %label172

label172:
	%435 = add i32 0, 1
	%436 = icmp ne i32 %435, 0
	br label %label173

label173:
	%437 = phi i1 [ true, %label171 ], [ %436, %label172 ]
	%438 = zext i1 %437 to i32
	%439 = icmp ne i32 %438, 0
	%440 = xor i1 %439, true
	%441 = zext i1 %440 to i32
	%442 = add i32 0, 48
	%443 = add i32 %442, %441
	%444 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %443)
	br label %label174

label174:
	%445 = add i32 0, 0
	%446 = icmp ne i32 %445, 0
	br i1 %446, label %label175, label %label176

label175:
	%447 = add i32 0, 1
	%448 = icmp ne i32 %447, 0
	br label %label176

label176:
	%449 = phi i1 [ false, %label174 ], [ %448, %label175 ]
	%450 = zext i1 %449 to i32
	br label %label177

label177:
	%451 = add i32 0, 1
	%452 = icmp ne i32 %451, 0
	br i1 %452, label %label179, label %label178

label178:
	%453 = icmp ne i32 %450, 0
	br label %label179

label179:
	%454 = phi i1 [ true, %label177 ], [ %453, %label178 ]
	%455 = zext i1 %454 to i32
	br label %label180

label180:
	%456 = icmp ne i32 %455, 0
	br i1 %456, label %label182, label %label181

label181:
	%457 = add i32 0, 1
	%458 = icmp ne i32 %457, 0
	br label %label182

label182:
	%459 = phi i1 [ true, %label180 ], [ %458, %label181 ]
	%460 = zext i1 %459 to i32
	%461 = icmp ne i32 %460, 0
	%462 = xor i1 %461, true
	%463 = zext i1 %462 to i32
	%464 = add i32 0, 48
	%465 = add i32 %464, %463
	%466 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %465)
	br label %label183

label183:
	%467 = add i32 0, 1
	%468 = icmp ne i32 %467, 0
	br i1 %468, label %label184, label %label185

label184:
	%469 = add i32 0, 1
	%470 = icmp ne i32 %469, 0
	br label %label185

label185:
	%471 = phi i1 [ false, %label183 ], [ %470, %label184 ]
	%472 = zext i1 %471 to i32
	br label %label186

label186:
	%473 = add i32 0, 1
	%474 = icmp ne i32 %473, 0
	br i1 %474, label %label188, label %label187

label187:
	%475 = icmp ne i32 %472, 0
	br label %label188

label188:
	%476 = phi i1 [ true, %label186 ], [ %475, %label187 ]
	%477 = zext i1 %476 to i32
	br label %label189

label189:
	%478 = icmp ne i32 %477, 0
	br i1 %478, label %label191, label %label190

label190:
	%479 = add i32 0, 1
	%480 = icmp ne i32 %479, 0
	br label %label191

label191:
	%481 = phi i1 [ true, %label189 ], [ %480, %label190 ]
	%482 = zext i1 %481 to i32
	%483 = icmp ne i32 %482, 0
	%484 = xor i1 %483, true
	%485 = zext i1 %484 to i32
	%486 = add i32 0, 48
	%487 = add i32 %486, %485
	%488 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %487)
	br label %label192

label192:
	%489 = add i32 0, 0
	%490 = icmp ne i32 %489, 0
	br i1 %490, label %label194, label %label193

label193:
	%491 = add i32 0, 0
	%492 = icmp ne i32 %491, 0
	br label %label194

label194:
	%493 = phi i1 [ true, %label192 ], [ %492, %label193 ]
	%494 = zext i1 %493 to i32
	%495 = icmp ne i32 %494, 0
	%496 = xor i1 %495, true
	%497 = zext i1 %496 to i32
	%498 = add i32 0, 48
	%499 = add i32 %498, %497
	%500 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %499)
	br label %label195

label195:
	%501 = add i32 0, 0
	%502 = icmp ne i32 %501, 0
	br i1 %502, label %label197, label %label196

label196:
	%503 = add i32 0, 100
	%504 = icmp ne i32 %503, 0
	br label %label197

label197:
	%505 = phi i1 [ true, %label195 ], [ %504, %label196 ]
	%506 = zext i1 %505 to i32
	%507 = icmp ne i32 %506, 0
	%508 = xor i1 %507, true
	%509 = zext i1 %508 to i32
	%510 = add i32 0, 48
	%511 = add i32 %510, %509
	%512 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %511)
	br label %label198

label198:
	%513 = add i32 0, 100
	%514 = icmp ne i32 %513, 0
	br i1 %514, label %label200, label %label199

label199:
	%515 = add i32 0, 0
	%516 = icmp ne i32 %515, 0
	br label %label200

label200:
	%517 = phi i1 [ true, %label198 ], [ %516, %label199 ]
	%518 = zext i1 %517 to i32
	%519 = icmp ne i32 %518, 0
	%520 = xor i1 %519, true
	%521 = zext i1 %520 to i32
	%522 = add i32 0, 48
	%523 = add i32 %522, %521
	%524 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %523)
	br label %label201

label201:
	%525 = add i32 0, 100
	%526 = icmp ne i32 %525, 0
	br i1 %526, label %label203, label %label202

label202:
	%527 = add i32 0, 100
	%528 = icmp ne i32 %527, 0
	br label %label203

label203:
	%529 = phi i1 [ true, %label201 ], [ %528, %label202 ]
	%530 = zext i1 %529 to i32
	%531 = icmp ne i32 %530, 0
	%532 = xor i1 %531, true
	%533 = zext i1 %532 to i32
	%534 = add i32 0, 48
	%535 = add i32 %534, %533
	%536 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %535)
	ret void
}

define void @test_continue_end() {
	%1 = alloca i32
	store i32 119, i32* %1
	br label %label0

label0:
	%2 = add i32 0, 0
	%3 = icmp ne i32 %2, 0
	br i1 %3, label %label1, label %label2

label1:
	store i32 119, i32* %1
	%4 = load i32, i32* %1
	%5 = icmp ne i32 %4, 0
	br label %label2

label2:
	%6 = phi i1 [ false, %label0 ], [ %5, %label1 ]
	%7 = zext i1 %6 to i32
	%8 = load i32, i32* %1
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label3

label3:
	%10 = add i32 0, 1
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label4, label %label5

label4:
	store i32 111, i32* %1
	%12 = load i32, i32* %1
	%13 = icmp ne i32 %12, 0
	br label %label5

label5:
	%14 = phi i1 [ false, %label3 ], [ %13, %label4 ]
	%15 = zext i1 %14 to i32
	%16 = load i32, i32* %1
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	br label %label6

label6:
	%18 = add i32 0, 0
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label8, label %label7

label7:
	store i32 114, i32* %1
	%20 = load i32, i32* %1
	%21 = icmp ne i32 %20, 0
	br label %label8

label8:
	%22 = phi i1 [ true, %label6 ], [ %21, %label7 ]
	%23 = zext i1 %22 to i32
	%24 = load i32, i32* %1
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	store i32 107, i32* %1
	br label %label9

label9:
	%26 = add i32 0, 1
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label11, label %label10

label10:
	store i32 114, i32* %1
	%28 = load i32, i32* %1
	%29 = icmp ne i32 %28, 0
	br label %label11

label11:
	%30 = phi i1 [ true, %label9 ], [ %29, %label10 ]
	%31 = zext i1 %30 to i32
	%32 = load i32, i32* %1
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	br label %label12

label12:
	%34 = add i32 0, 1
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label13, label %label14

label13:
	store i32 115, i32* %1
	%36 = load i32, i32* %1
	%37 = icmp ne i32 %36, 0
	br label %label14

label14:
	%38 = phi i1 [ false, %label12 ], [ %37, %label13 ]
	%39 = zext i1 %38 to i32
	br label %label15

label15:
	%40 = add i32 0, 0
	%41 = icmp ne i32 %40, 0
	br i1 %41, label %label17, label %label16

label16:
	%42 = icmp ne i32 %39, 0
	br label %label17

label17:
	%43 = phi i1 [ true, %label15 ], [ %42, %label16 ]
	%44 = zext i1 %43 to i32
	%45 = load i32, i32* %1
	%46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %45)
	ret void
}

define i32 @main() {
	%1 = add i32 0, 116
	%2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
	%3 = add i32 0, 97
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = add i32 0, 98
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 101
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	%9 = add i32 0, 108
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	%11 = add i32 0, 97
	%12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
	%13 = add i32 0, 32
	%14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %13)
	%15 = add i32 0, 100
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = add i32 0, 101
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = add i32 0, 32
	%20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
	%21 = add i32 0, 118
	%22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
	%23 = add i32 0, 101
	%24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
	%25 = add i32 0, 114
	%26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
	%27 = add i32 0, 100
	%28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
	%29 = add i32 0, 97
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = add i32 0, 100
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = add i32 0, 101
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	%35 = add i32 0, 58
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	%37 = add i32 0, 10
	%38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
	call void @and()
	%39 = add i32 0, 10
	%40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %39)
	call void @or()
	%41 = add i32 0, 10
	%42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
	call void @nand()
	%43 = add i32 0, 10
	%44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
	call void @nor()
	%45 = add i32 0, 10
	%46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %45)
	call void @n_or_and_or()
	%47 = add i32 0, 10
	%48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
	call void @test_continue_end()
	%49 = add i32 0, 10
	%50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %49)
	ret i32 0
}
