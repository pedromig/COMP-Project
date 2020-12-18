declare i32 @putchar(...)
declare i32 @getchar(...)


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
	%4 = load i32, i32* %1
	%5 = add i32 0, 1
	%6 = icmp eq i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = load i32, i32* %1
	%9 = add i32 0, 1
	%10 = icmp ne i32 %8, %9
	%11 = zext i1 %10 to i32
	br label %label3

label3:
	%12 = icmp ne i32 %7, 0
	br i1 %12, label %label4, label %label5

label4:
	%13 = icmp ne i32 %11, 0
	br label %label5

label5:
	%14 = phi i1 [ false, %label3 ], [ %13, %label4 ]
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label6, label %label7

label6:
	%17 = load i32, i32* %1
	%18 = add i32 0, 0
	%19 = icmp ne i32 %17, %18
	%20 = zext i1 %19 to i32
	%21 = load i32, i32* %1
	%22 = call i32 @statements()
	%23 = icmp ne i32 %21, %22
	%24 = zext i1 %23 to i32
	br label %label9

label9:
	%25 = icmp ne i32 %20, 0
	br i1 %25, label %label10, label %label11

label10:
	%26 = icmp ne i32 %24, 0
	br label %label11

label11:
	%27 = phi i1 [ false, %label9 ], [ %26, %label10 ]
	%28 = zext i1 %27 to i32
	%29 = load i32, i32* %1
	%30 = add i32 0, 2
	%31 = srem i32 %29, %30
	%32 = load i32, i32* %1
	%33 = add i32 0, 2
	%34 = xor i32 %32, %33
	br label %label12

label12:
	%35 = icmp ne i32 %31, 0
	br i1 %35, label %label13, label %label14

label13:
	%36 = icmp ne i32 %34, 0
	br label %label14

label14:
	%37 = phi i1 [ false, %label12 ], [ %36, %label13 ]
	%38 = zext i1 %37 to i32
	br label %label15

label15:
	%39 = icmp ne i32 %28, 0
	br i1 %39, label %label16, label %label17

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
	%57 = load i32, i32* %1
	%58 = icmp ne i32 %57, 0
	%59 = xor i1 %58, true
	%60 = zext i1 %59 to i32
	%61 = icmp ne i32 %60, 0
	%62 = xor i1 %61, true
	%63 = zext i1 %62 to i32
	%64 = call i32 @statements()
	%65 = mul i32 %63, %64
	%66 = add i32 0, 2
	br label %label24

label24:
	%67 = icmp ne i32 %65, 0
	br i1 %67, label %label25, label %label26

label25:
	%68 = icmp ne i32 %66, 0
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

define i32 @main() {
	ret i32 0
}
