declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = alloca i32
	store i32 68, i32* %2
	%3 = alloca i32
	store i32 76, i32* %3
	br label %label0

label0:
	br label %label1

label1:
	%4 = load i32, i32* %2
	%5 = add i32 0, 10
	%6 = add i32 %4, %5
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label2, label %label3

label2:
	%8 = add i32 0, 65
	%9 = icmp ne i32 %8, 0
	br label %label3

label3:
	%10 = phi i1 [ false, %label1 ], [ %9, %label2 ]
	%11 = zext i1 %10 to i32
	br label %label4

label4:
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label6, label %label5

label5:
	%13 = add i32 0, 0
	%14 = icmp ne i32 %13, 0
	br label %label6

label6:
	%15 = phi i1 [ true, %label4 ], [ %14, %label5 ]
	%16 = zext i1 %15 to i32
	br label %label7

label7:
	%17 = load i32, i32* %2
	%18 = add i32 0, 10
	%19 = add i32 %17, %18
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label8, label %label9

label8:
	%21 = add i32 0, 65
	%22 = icmp ne i32 %21, 0
	br label %label9

label9:
	%23 = phi i1 [ false, %label7 ], [ %22, %label8 ]
	%24 = zext i1 %23 to i32
	br label %label10

label10:
	%25 = icmp ne i32 %24, 0
	br i1 %25, label %label12, label %label11

label11:
	%26 = add i32 0, 0
	%27 = icmp ne i32 %26, 0
	br label %label12

label12:
	%28 = phi i1 [ true, %label10 ], [ %27, %label11 ]
	%29 = zext i1 %28 to i32
	store i32 %29, i32* %2
	%30 = load i32, i32* %2
	%31 = icmp ne i32 %30, 0
	br i1 %31, label %label14, label %label13

label13:
	%32 = add i32 0, 12
	%33 = icmp ne i32 %32, 0
	br label %label14

label14:
	%34 = phi i1 [ true, %label0 ], [ %33, %label13 ]
	%35 = zext i1 %34 to i32
	%36 = alloca i32
	store i32 %35, i32* %36
	%37 = load i32, i32* %3
	%38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
	%39 = add i32 0, 48
	%40 = load i32, i32* %36
	%41 = add i32 %39, %40
	%42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
	ret i32 0
}
