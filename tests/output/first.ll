declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = load i32, i32* %1
	%3 = add i32 0, 90
	%4 = icmp sle i32 %2, %3
	%5 = zext i1 %4 to i32
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1
label0:
	%7 = load i32, i32* %1
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	%9 = load i32, i32* %1
	%10 = add i32 0, 1
	%11 = add i32 %9, %10
	store i32 %11, i32* %1
	%12 = load i32, i32* %1
	%13 = add i32 0, 90
	%14 = icmp sle i32 %12, %13
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label0, label %label1
label1:
	ret i32 0
}
