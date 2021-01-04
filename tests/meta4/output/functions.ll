declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @getint() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 1, i32* %2
	%3 = alloca i32
	store i32 52, i32* %3
	%4 = load i32, i32* %3
	%5 = add i32 0, 45
	%6 = icmp eq i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label0, label %label1

label0:
	%9 = add i32 0, 1
	%10 = sub i32 0, %9
	store i32 %10, i32* %2
	br label %label2

label1:
	br label %label2

label2:
	%11 = load i32, i32* %3
	%12 = add i32 0, 10
	%13 = icmp ne i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label3, label %label4

label3:
	%16 = load i32, i32* %3
	%17 = add i32 0, 45
	%18 = icmp ne i32 %16, %17
	%19 = zext i1 %18 to i32
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label5, label %label6

label5:
	%21 = load i32, i32* %1
	%22 = add i32 0, 10
	%23 = mul i32 %21, %22
	%24 = load i32, i32* %3
	%25 = add i32 %23, %24
	%26 = add i32 0, 48
	%27 = sub i32 %25, %26
	store i32 %27, i32* %1
	br label %label7

label6:
	br label %label7

label7:
	store i32 10, i32* %3
	%28 = load i32, i32* %3
	%29 = add i32 0, 10
	%30 = icmp ne i32 %28, %29
	%31 = zext i1 %30 to i32
	%32 = icmp ne i32 %31, 0
	br i1 %32, label %label3, label %label4

label4:
	%33 = load i32, i32* %2
	%34 = load i32, i32* %1
	%35 = mul i32 %33, %34
	ret i32 %35
}

define void @putint(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = add i32 0, 0
	%5 = icmp slt i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 45
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	%10 = load i32, i32* %2
	%11 = sub i32 0, %10
	store i32 %11, i32* %2
	br label %label2

label1:
	br label %label2

label2:
	%12 = load i32, i32* %2
	%13 = add i32 0, 10
	%14 = sdiv i32 %12, %13
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label3, label %label4

label3:
	%16 = load i32, i32* %2
	%17 = add i32 0, 10
	%18 = sdiv i32 %16, %17
	call void @putint(i32 %18)
	br label %label5

label4:
	br label %label5

label5:
	%19 = load i32, i32* %2
	%20 = add i32 0, 10
	%21 = srem i32 %19, %20
	%22 = add i32 0, 48
	%23 = add i32 %21, %22
	%24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
	ret void
}

define i32 @main() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = load i32, i32* %1
	%3 = add i32 0, 0
	%4 = icmp ne i32 %2, %3
	%5 = zext i1 %4 to i32
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1

label0:
	%7 = call i32 @getint()
	store i32 %7, i32* %1
	%8 = load i32, i32* %1
	call void @putint(i32 %8)
	%9 = add i32 0, 10
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	store i32 0, i32* %1
	%11 = load i32, i32* %1
	%12 = add i32 0, 0
	%13 = icmp ne i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label0, label %label1

label1:
	ret i32 0
}
