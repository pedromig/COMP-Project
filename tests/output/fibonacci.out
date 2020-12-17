declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @fibonacci(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = add i32 0, 1
	%5 = icmp sle i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1
label0:
	%8 = load i32, i32* %2
	ret i32 %8
	br label %label2
label1:
	br label %label2
label2:
	%9 = add i32 0, (null)
	%10 = call i32 @fibonacci(i32 %9)
	%11 = add i32 0, (null)
	%12 = call i32 @fibonacci(i32 %11)
	%13 = add i32 %10, %12
	ret i32 %13
}

define i32 @fibonacci_seq(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 0, i32* %3
	%4 = alloca i32
	store i32 1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	store i32 2, i32* %6
	%7 = load i32, i32* %6
	%8 = load i32, i32* %2
	%9 = icmp slt i32 %7, %8
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label0, label %label1
label0:
	%12 = load i32, i32* %3
	%13 = load i32, i32* %4
	%14 = add i32 %12, %13
	store i32 %14, i32* %5
	%15 = add i32 0, 32
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = load i32, i32* %5
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = load i32, i32* %4
	store i32 %19, i32* %3
	%20 = load i32, i32* %5
	store i32 %20, i32* %4
	%21 = load i32, i32* %6
	%22 = add i32 0, 1
	%23 = add i32 %21, %22
	store i32 %23, i32* %6
	%24 = load i32, i32* %6
	%25 = load i32, i32* %2
	%26 = icmp slt i32 %24, %25
	%27 = zext i1 %26 to i32
	%28 = icmp ne i32 %27, 0
	br i1 %28, label %label0, label %label1
label1:
	ret i32 0
}

define i32 @main() {
	%1 = alloca i32
	store i32 20, i32* %1
	%2 = load i32, i32* %1
	%3 = call i32 @fibonacci_seq(i32 %2)
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = add i32 0, 10
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = load i32, i32* %1
	%8 = call i32 @fibonacci_seq(i32 %7)
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	ret i32 0
}
