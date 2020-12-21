declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @factorial(i32) {
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
	%9 = load i32, i32* %2
	%10 = load i32, i32* %2
	%11 = add i32 0, 1
	%12 = sub i32 %10, %11
	%13 = call i32 @factorial(i32 %12)
	%14 = mul i32 %9, %13
	ret i32 %14
	br label %label2

label2:
}

define i32 @fibbonacci(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = add i32 0, 0
	%5 = icmp eq i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	ret i32 0
	br label %label2

label1:
	br label %label2

label2:
	%9 = load i32, i32* %2
	%10 = add i32 0, 1
	%11 = icmp eq i32 %9, %10
	%12 = zext i1 %11 to i32
	%13 = icmp ne i32 %12, 0
	br i1 %13, label %label3, label %label4

label3:
	ret i32 1
	br label %label5

label4:
	%15 = load i32, i32* %2
	%16 = add i32 0, 1
	%17 = sub i32 %15, %16
	%18 = call i32 @fibbonacci(i32 %17)
	%19 = load i32, i32* %2
	%20 = add i32 0, 2
	%21 = sub i32 %19, %20
	%22 = call i32 @fibbonacci(i32 %21)
	%23 = add i32 %18, %22
	ret i32 %23
	br label %label5

label5:
}

define i32 @gcd(i32, i32) {
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
	%10 = load i32, i32* %4
	ret i32 %10
	br label %label2

label1:
	br label %label2

label2:
	%12 = load i32, i32* %4
	%13 = add i32 0, 0
	%14 = icmp eq i32 %12, %13
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label3, label %label4

label3:
	%17 = load i32, i32* %3
	ret i32 %17
	br label %label5

label4:
	br label %label5

label5:
	%19 = load i32, i32* %3
	%20 = load i32, i32* %4
	%21 = icmp eq i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label6, label %label7

label6:
	%24 = load i32, i32* %3
	ret i32 %24
	br label %label8

label7:
	br label %label8

label8:
	%26 = load i32, i32* %3
	%27 = load i32, i32* %4
	%28 = icmp sgt i32 %26, %27
	%29 = zext i1 %28 to i32
	%30 = icmp ne i32 %29, 0
	br i1 %30, label %label9, label %label10

label9:
	%31 = load i32, i32* %3
	%32 = load i32, i32* %4
	%33 = sub i32 %31, %32
	%34 = load i32, i32* %4
	%35 = call i32 @gcd(i32 %33, i32 %34)
	ret i32 %35
	br label %label11

label10:
	br label %label11

label11:
	%37 = load i32, i32* %3
	%38 = load i32, i32* %4
	%39 = load i32, i32* %3
	%40 = sub i32 %38, %39
	%41 = call i32 @gcd(i32 %37, i32 %40)
	ret i32 %41
}

define i32 @main() {
	%1 = alloca i32
	store i32 5, i32* %1
	%2 = alloca i32
	store i32 0, i32* %2
	%3 = add i32 0, 10
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = add i32 0, 48
	%6 = load i32, i32* %2
	%7 = call i32 @fibbonacci(i32 %6)
	%8 = add i32 %5, %7
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	%10 = load i32, i32* %2
	%11 = load i32, i32* %1
	%12 = icmp slt i32 %10, %11
	%13 = zext i1 %12 to i32
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label0, label %label1

label0:
	%15 = load i32, i32* %2
	%16 = add i32 0, 1
	%17 = add i32 %15, %16
	store i32 %17, i32* %2
	%18 = add i32 0, 45
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	%20 = load i32, i32* %2
	%21 = call i32 @fibbonacci(i32 %20)
	%22 = add i32 0, 48
	%23 = add i32 %21, %22
	%24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
	%25 = load i32, i32* %2
	%26 = load i32, i32* %1
	%27 = icmp slt i32 %25, %26
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label0, label %label1

label1:
	%30 = add i32 0, 10
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = add i32 0, 64
	%33 = add i32 0, 34
	%34 = call i32 @gcd(i32 %32, i32 %33)
	%35 = add i32 0, 5
	%36 = call i32 @factorial(i32 %35)
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	ret i32 0
}
