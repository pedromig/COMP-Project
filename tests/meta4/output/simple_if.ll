declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
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
	%5 = icmp ne i32 %4, 0
	br i1 %5, label %label3, label %label4

label3:
	%6 = add i32 0, 97
	%7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
	br label %label5

label4:
	br label %label5

label5:
	%8 = add i32 0, 1
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label6, label %label7

label6:
	%10 = add i32 0, 0
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label9, label %label10

label9:
	%12 = add i32 0, 97
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	br label %label11

label10:
	%14 = add i32 0, 2
	%15 = add i32 0, 0
	%16 = icmp slt i32 %14, %15
	%17 = zext i1 %16 to i32
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %label12, label %label13

label12:
	%19 = add i32 0, 98
	%20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
	br label %label14

label13:
	br label %label14

label14:
	%21 = add i32 0, 98
	%22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
	br label %label11

label11:
	br label %label8

label7:
	br label %label8

label8:
	%23 = add i32 0, 1
	%24 = add i32 0, 2
	%25 = add i32 %23, %24
	%26 = icmp ne i32 %25, 0
	br i1 %26, label %label15, label %label16

label15:
	%27 = add i32 0, 97
	%28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
	br label %label17

label16:
	br label %label17

label17:
	%29 = add i32 0, 0
	%30 = icmp ne i32 %29, 0
	br i1 %30, label %label18, label %label19

label18:
	%31 = add i32 0, 97
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	br label %label20

label19:
	%33 = add i32 0, 98
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	br label %label20

label20:
	ret i32 0
}
