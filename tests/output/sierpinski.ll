declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	%3 = load i32, i32* %1
	%4 = add i32 0, 32
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	store i32 0, i32* %2
	%8 = load i32, i32* %2
	%9 = add i32 0, 32
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label2, label %label3

label2:
	%13 = load i32, i32* %1
	%14 = load i32, i32* %2
	%15 = and i32 %13, %14
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label4, label %label5

label4:
	%17 = add i32 0, 32
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	br label %label6

label5:
	%19 = add i32 0, 43
	%20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
	br label %label6

label6:
	%21 = load i32, i32* %2
	%22 = add i32 0, 1
	%23 = add i32 %21, %22
	store i32 %23, i32* %2
	%24 = load i32, i32* %2
	%25 = add i32 0, 32
	%26 = icmp slt i32 %24, %25
	%27 = zext i1 %26 to i32
	%28 = icmp ne i32 %27, 0
	br i1 %28, label %label2, label %label3

label3:
	%29 = load i32, i32* %1
	%30 = add i32 0, 1
	%31 = add i32 %29, %30
	store i32 %31, i32* %1
	%32 = add i32 0, 10
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = load i32, i32* %1
	%35 = add i32 0, 32
	%36 = icmp slt i32 %34, %35
	%37 = zext i1 %36 to i32
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label0, label %label1

label1:
	ret i32 0
}
