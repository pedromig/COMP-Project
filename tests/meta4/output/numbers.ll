declare i32 @putchar(...)
declare i32 @getchar(...)


define void @print_number(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = add i32 0, 0
	%5 = icmp eq i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = add i32 0, 48
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	ret void
	br label %label2

label1:
	br label %label2

label2:
	%11 = alloca i32
	store i32 1, i32* %11
	%12 = load i32, i32* %2
	%13 = load i32, i32* %11
	%14 = sdiv i32 %12, %13
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label3, label %label4

label3:
	%16 = load i32, i32* %11
	%17 = add i32 0, 10
	%18 = mul i32 %16, %17
	store i32 %18, i32* %11
	%19 = load i32, i32* %2
	%20 = load i32, i32* %11
	%21 = sdiv i32 %19, %20
	%22 = icmp ne i32 %21, 0
	br i1 %22, label %label3, label %label4

label4:
	%23 = load i32, i32* %11
	%24 = add i32 0, 1
	%25 = icmp sgt i32 %23, %24
	%26 = zext i1 %25 to i32
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label5, label %label6

label5:
	%28 = load i32, i32* %11
	%29 = add i32 0, 10
	%30 = sdiv i32 %28, %29
	%31 = load i32, i32* %2
	%32 = sdiv i32 %31, %30
	%33 = add i32 0, 48
	%34 = add i32 %33, %32
	%35 = load i32, i32* %2
	%36 = load i32, i32* %11
	%37 = sdiv i32 %35, %36
	%38 = add i32 0, 10
	%39 = mul i32 %37, %38
	%40 = sub i32 %34, %39
	%41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
	%42 = load i32, i32* %11
	%43 = add i32 0, 10
	%44 = sdiv i32 %42, %43
	store i32 %44, i32* %11
	%45 = load i32, i32* %11
	%46 = add i32 0, 1
	%47 = icmp sgt i32 %45, %46
	%48 = zext i1 %47 to i32
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label5, label %label6

label6:
	ret void
}

define i32 @main() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = load i32, i32* %1
	%3 = add i32 0, 100
	%4 = icmp sle i32 %2, %3
	%5 = zext i1 %4 to i32
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1

label0:
	%7 = load i32, i32* %1
	call void @print_number(i32 %7)
	%8 = add i32 0, 10
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	%10 = load i32, i32* %1
	%11 = add i32 0, 1
	%12 = add i32 %10, %11
	store i32 %12, i32* %1
	%13 = load i32, i32* %1
	%14 = add i32 0, 100
	%15 = icmp sle i32 %13, %14
	%16 = zext i1 %15 to i32
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %label0, label %label1

label1:
	ret i32 0
}
