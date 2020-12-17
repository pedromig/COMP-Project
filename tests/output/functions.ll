declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @getint() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 1, i32* %2
	%3 = call i32 (...) @getchar()
	%4 = alloca i32
	store i32 %3, i32* %4
	%5 = load i32, i32* %4
	%6 = add i32 0, 45
	%7 = icmp eq i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	%10 = add i32 0, 1
	%11 = sub i32 0, %10
	store i32 %11, i32* %2
	br label %label2

label1:
	br label %label2

label2:
	%12 = load i32, i32* %4
	%13 = add i32 0, 10
	%14 = icmp ne i32 %12, %13
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label3, label %label4

label3:
	%17 = load i32, i32* %4
	%18 = add i32 0, 45
	%19 = icmp ne i32 %17, %18
	%20 = zext i1 %19 to i32
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %label5, label %label6

label5:
	%22 = load i32, i32* %1
	%23 = add i32 0, 10
	%24 = mul i32 %22, %23
	%25 = load i32, i32* %4
	%26 = add i32 %24, %25
	%27 = add i32 0, 48
	%28 = sub i32 %26, %27
	store i32 %28, i32* %1
	br label %label7

label6:
	br label %label7

label7:
	%29 = call i32 (...) @getchar()
	store i32 %29, i32* %4
	%30 = load i32, i32* %4
	%31 = add i32 0, 10
	%32 = icmp ne i32 %30, %31
	%33 = zext i1 %32 to i32
	%34 = icmp ne i32 %33, 0
	br i1 %34, label %label3, label %label4

label4:
	%35 = load i32, i32* %2
	%36 = load i32, i32* %1
	%37 = mul i32 %35, %36
	ret i32 %37
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
	%11 = load i32, i32* %1
	%12 = add i32 0, 0
	%13 = icmp ne i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label0, label %label1

label1:
	ret i32 0
}
