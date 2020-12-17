declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @factorial(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 1, i32* %3
	%4 = load i32, i32* %2
	%5 = add i32 0, 0
	%6 = icmp ne i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label0, label %label1
label0:
	%9 = load i32, i32* %3
	%10 = load i32, i32* %2
	%11 = mul i32 %9, %10
	store i32 %11, i32* %3
	%12 = load i32, i32* %2
	%13 = add i32 0, 1
	%14 = sub i32 %12, %13
	store i32 %14, i32* %2
	%15 = load i32, i32* %2
	%16 = add i32 0, 0
	%17 = icmp ne i32 %15, %16
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label0, label %label1
label1:
	%20 = load i32, i32* %3
	ret i32 %20
}

define i32 @recursive_factorial(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = add i32 0, 0
	%5 = icmp eq i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1
label0:
	ret i32 1
	br label %label2
label1:
	br label %label2
label2:
	%8 = load i32, i32* %2
	%9 = load i32, i32* %2
	%10 = call i32 @recursive_factorial(i32 %9)
	%11 = mul i32 %8, %10
	ret i32 %11
}

define i32 @tail_recursive_factorial(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = add i32 0, 0
	%7 = icmp eq i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1
label0:
	ret i32 1
	br label %label2
label1:
	br label %label2
label2:
	%10 = add i32 0, (null)
	%11 = add i32 0, (null)
	%12 = call i32 @tail_recursive_factorial(i32 %10, i32 %11)
	ret i32 %12
}

define void @i_have_no_life_xD() {
	%1 = add i32 0, 35
	%2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
	%3 = add i32 0, 35
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = add i32 0, 9
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 70
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	%9 = add i32 0, 65
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	%11 = add i32 0, 67
	%12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
	%13 = add i32 0, 84
	%14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %13)
	%15 = add i32 0, 79
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = add i32 0, 82
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = add i32 0, 73
	%20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
	%21 = add i32 0, 65
	%22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
	%23 = add i32 0, 76
	%24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
	%25 = add i32 0, 83
	%26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
	%27 = add i32 0, 35
	%28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
	%29 = add i32 0, 35
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = add i32 0, 9
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = add i32 0, 10
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	ret void
}

define i32 @main() {
	%1 = call i32 @i_have_no_life_xD()
	%2 = alloca i32
	store i32 5, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @recursive_factorial(i32 %3)
	%5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
	%6 = add i32 0, 10
	%7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
	%8 = load i32, i32* %2
	%9 = add i32 0, 1
	%10 = call i32 @tail_recursive_factorial(i32 %8, i32 %9)
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 10
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	%14 = load i32, i32* %2
	%15 = call i32 @factorial(i32 %14)
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	ret i32 0
}
