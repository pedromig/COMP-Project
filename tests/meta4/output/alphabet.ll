declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = load i32, i32* %1
	%3 = icmp ne i32 %2, 0
	br i1 %3, label %label0, label %label1

label0:
	store i32 0, i32* %1
	%4 = load i32, i32* %1
	%5 = icmp ne i32 %4, 0
	br i1 %5, label %label0, label %label1

label1:
	%6 = add i32 0, 0
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label2, label %label3

label2:
	%8 = add i32 0, 0
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label2, label %label3

label3:
	%10 = alloca i32
	store i32 0, i32* %10
	%11 = load i32, i32* %10
	%12 = add i32 0, 26
	%13 = icmp slt i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label4, label %label5

label4:
	%16 = add i32 0, 97
	%17 = load i32, i32* %10
	%18 = add i32 %16, %17
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	%20 = load i32, i32* %10
	%21 = add i32 0, 1
	%22 = add i32 %20, %21
	store i32 %22, i32* %10
	%23 = load i32, i32* %10
	%24 = add i32 0, 26
	%25 = icmp slt i32 %23, %24
	%26 = zext i1 %25 to i32
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label4, label %label5

label5:
	ret i32 0
}
