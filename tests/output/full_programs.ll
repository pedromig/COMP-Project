declare i32 @putchar(...)
declare i32 @getchar(...)


define void @print_number(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 1, i32* %3
	%4 = load i32, i32* %2
	%5 = load i32, i32* %3
	%6 = sdiv i32 %4, %5
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = load i32, i32* %3
	%9 = add i32 0, 10
	%10 = mul i32 %8, %9
	store i32 %10, i32* %3
	%11 = load i32, i32* %2
	%12 = load i32, i32* %3
	%13 = sdiv i32 %11, %12
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label0, label %label1

label1:
	%15 = alloca i32
	%16 = load i32, i32* %3
	%17 = add i32 0, 1
	%18 = icmp sgt i32 %16, %17
	%19 = zext i1 %18 to i32
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label2, label %label3

label2:
	%21 = load i32, i32* %3
	%22 = add i32 0, 10
	%23 = sdiv i32 %21, %22
	%24 = load i32, i32* %2
	%25 = sdiv i32 %24, %23
	%26 = add i32 0, 48
	%27 = add i32 %26, %25
	%28 = load i32, i32* %2
	%29 = load i32, i32* %3
	%30 = sdiv i32 %28, %29
	%31 = add i32 0, 10
	%32 = mul i32 %30, %31
	%33 = sub i32 %27, %32
	store i32 %33, i32* %15
	%34 = load i32, i32* %15
	%35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
	%36 = load i32, i32* %3
	%37 = add i32 0, 10
	%38 = sdiv i32 %36, %37
	store i32 %38, i32* %3
	%39 = load i32, i32* %3
	%40 = add i32 0, 1
	%41 = icmp sgt i32 %39, %40
	%42 = zext i1 %41 to i32
	%43 = icmp ne i32 %42, 0
	br i1 %43, label %label2, label %label3

label3:
	ret void
}

define i32 @factorial(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	br label %label0

label0:
	%3 = load i32, i32* %2
	%4 = add i32 0, 0
	%5 = icmp eq i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label2, label %label1

label1:
	%8 = load i32, i32* %2
	%9 = add i32 0, 1
	%10 = icmp eq i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br label %label2

label2:
	%13 = phi i1 [ true, %label0 ], [ %12, %label1 ]
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label3, label %label4

label3:
	ret i32 1
	br label %label5

label4:
	br label %label5

label5:
	%17 = load i32, i32* %2
	%18 = load i32, i32* %2
	%19 = add i32 0, 1
	%20 = sub i32 %18, %19
	%21 = call i32 @factorial(i32 %20)
	%22 = mul i32 %17, %21
	ret i32 %22
}

define i32 @factorial2(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	store i32 1, i32* %3
	%4 = load i32, i32* %2
	%5 = add i32 0, 1
	%6 = icmp sgt i32 %4, %5
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
	%16 = add i32 0, 1
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label0, label %label1

label1:
	%20 = load i32, i32* %3
	ret i32 %20
}

define i32 @fibbogucci(i32) {
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
	%18 = call i32 @fibbogucci(i32 %17)
	%19 = load i32, i32* %2
	%20 = add i32 0, 2
	%21 = sub i32 %19, %20
	%22 = call i32 @fibbogucci(i32 %21)
	%23 = add i32 %18, %22
	ret i32 %23
	br label %label5

label5:
	br label %label2

label2:
}

define i32 @fibboprada(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = add i32 0, 1
	%5 = add i32 %3, %4
	store i32 %5, i32* %2
	%6 = load i32, i32* %2
	%7 = add i32 0, 1
	%8 = icmp eq i32 %6, %7
	%9 = zext i1 %8 to i32
	%10 = icmp ne i32 %9, 0
	br i1 %10, label %label0, label %label1

label0:
	ret i32 0
	br label %label2

label1:
	br label %label2

label2:
	%12 = load i32, i32* %2
	%13 = add i32 0, 2
	%14 = icmp eq i32 %12, %13
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label3, label %label4

label3:
	ret i32 1
	br label %label5

label4:
	br label %label5

label5:
	%18 = alloca i32
	store i32 0, i32* %18
	%19 = alloca i32
	store i32 1, i32* %19
	%20 = alloca i32
	%21 = alloca i32
	store i32 2, i32* %21
	%22 = load i32, i32* %21
	%23 = load i32, i32* %2
	%24 = icmp slt i32 %22, %23
	%25 = zext i1 %24 to i32
	%26 = icmp ne i32 %25, 0
	br i1 %26, label %label6, label %label7

label6:
	%27 = load i32, i32* %18
	%28 = load i32, i32* %19
	%29 = add i32 %27, %28
	store i32 %29, i32* %20
	%30 = load i32, i32* %19
	store i32 %30, i32* %18
	%31 = load i32, i32* %20
	store i32 %31, i32* %19
	%32 = load i32, i32* %21
	%33 = add i32 0, 1
	%34 = add i32 %32, %33
	store i32 %34, i32* %21
	%35 = load i32, i32* %21
	%36 = load i32, i32* %2
	%37 = icmp slt i32 %35, %36
	%38 = zext i1 %37 to i32
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %label6, label %label7

label7:
	%40 = load i32, i32* %20
	ret i32 %40
}

define i32 @bigmod(i32, i32, i32) {
	%4 = alloca i32
	store i32 %0, i32* %4
	%5 = alloca i32
	store i32 %1, i32* %5
	%6 = alloca i32
	store i32 %2, i32* %6
	%7 = load i32, i32* %5
	%8 = add i32 0, 0
	%9 = icmp eq i32 %7, %8
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label0, label %label1

label0:
	ret i32 1
	br label %label2

label1:
	br label %label2

label2:
	%13 = alloca i32
	%14 = load i32, i32* %5
	%15 = add i32 0, 2
	%16 = srem i32 %14, %15
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %label3, label %label4

label3:
	%18 = load i32, i32* %4
	%19 = load i32, i32* %6
	%20 = srem i32 %18, %19
	%21 = load i32, i32* %4
	%22 = load i32, i32* %5
	%23 = add i32 0, 1
	%24 = sub i32 %22, %23
	%25 = load i32, i32* %6
	%26 = call i32 @bigmod(i32 %21, i32 %24, i32 %25)
	%27 = mul i32 %20, %26
	%28 = load i32, i32* %6
	%29 = srem i32 %27, %28
	ret i32 %29
	br label %label5

label4:
	%31 = load i32, i32* %4
	%32 = load i32, i32* %5
	%33 = add i32 0, 2
	%34 = sdiv i32 %32, %33
	%35 = load i32, i32* %6
	%36 = call i32 @bigmod(i32 %31, i32 %34, i32 %35)
	store i32 %36, i32* %13
	%37 = load i32, i32* %13
	%38 = load i32, i32* %6
	%39 = srem i32 %37, %38
	%40 = load i32, i32* %13
	%41 = load i32, i32* %6
	%42 = srem i32 %40, %41
	%43 = mul i32 %39, %42
	%44 = load i32, i32* %6
	%45 = srem i32 %43, %44
	ret i32 %45
	br label %label5

label5:
}

define i32 @division(i32, i32) {
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
	ret i32 0
	br label %label2

label1:
	br label %label2

label2:
	%11 = load i32, i32* %4
	%12 = add i32 0, 0
	%13 = icmp eq i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label3, label %label4

label3:
	ret i32 0
	br label %label5

label4:
	br label %label5

label5:
	%17 = alloca i32
	store i32 0, i32* %17
	%18 = load i32, i32* %3
	%19 = add i32 0, 0
	%20 = icmp slt i32 %18, %19
	%21 = zext i1 %20 to i32
	%22 = icmp ne i32 %21, 0
	br i1 %22, label %label6, label %label7

label6:
	%23 = load i32, i32* %3
	%24 = sub i32 0, %23
	store i32 %24, i32* %3
	%25 = load i32, i32* %4
	%26 = add i32 0, 0
	%27 = icmp slt i32 %25, %26
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label9, label %label10

label9:
	%30 = load i32, i32* %4
	%31 = sub i32 0, %30
	store i32 %31, i32* %4
	br label %label11

label10:
	store i32 1, i32* %17
	br label %label11

label11:
	br label %label8

label7:
	%32 = load i32, i32* %4
	%33 = add i32 0, 0
	%34 = icmp slt i32 %32, %33
	%35 = zext i1 %34 to i32
	%36 = icmp ne i32 %35, 0
	br i1 %36, label %label12, label %label13

label12:
	%37 = load i32, i32* %4
	%38 = sub i32 0, %37
	store i32 %38, i32* %4
	store i32 1, i32* %17
	br label %label14

label13:
	br label %label14

label14:
	br label %label8

label8:
	%39 = alloca i32
	store i32 0, i32* %39
	%40 = load i32, i32* %3
	%41 = load i32, i32* %4
	%42 = icmp sge i32 %40, %41
	%43 = zext i1 %42 to i32
	%44 = icmp ne i32 %43, 0
	br i1 %44, label %label15, label %label16

label15:
	%45 = load i32, i32* %3
	%46 = load i32, i32* %4
	%47 = sub i32 %45, %46
	store i32 %47, i32* %3
	%48 = load i32, i32* %39
	%49 = add i32 0, 1
	%50 = add i32 %48, %49
	store i32 %50, i32* %39
	%51 = load i32, i32* %3
	%52 = load i32, i32* %4
	%53 = icmp sge i32 %51, %52
	%54 = zext i1 %53 to i32
	%55 = icmp ne i32 %54, 0
	br i1 %55, label %label15, label %label16

label16:
	%56 = load i32, i32* %17
	%57 = icmp ne i32 %56, 0
	br i1 %57, label %label17, label %label18

label17:
	%58 = load i32, i32* %39
	%59 = sub i32 0, %58
	store i32 %59, i32* %39
	br label %label19

label18:
	br label %label19

label19:
	%60 = load i32, i32* %39
	ret i32 %60
}

define i32 @main() {
	%1 = add i32 0, 11133
	call void @print_number(i32 %1)
	%2 = add i32 0, 10
	%3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
	%4 = add i32 0, 0
	%5 = call i32 @factorial(i32 %4)
	call void @print_number(i32 %5)
	%6 = add i32 0, 10
	%7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
	%8 = add i32 0, 7
	%9 = call i32 @factorial(i32 %8)
	call void @print_number(i32 %9)
	%10 = add i32 0, 10
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 5
	%13 = call i32 @factorial2(i32 %12)
	call void @print_number(i32 %13)
	%14 = add i32 0, 10
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	%16 = add i32 0, 1
	%17 = call i32 @factorial2(i32 %16)
	call void @print_number(i32 %17)
	%18 = add i32 0, 10
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	%20 = add i32 0, 6
	%21 = call i32 @fibbogucci(i32 %20)
	call void @print_number(i32 %21)
	%22 = add i32 0, 10
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = add i32 0, 20
	%25 = call i32 @fibboprada(i32 %24)
	call void @print_number(i32 %25)
	%26 = add i32 0, 10
	%27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
	%28 = add i32 0, 13
	%29 = add i32 0, 4323
	%30 = call i32 @gcd(i32 %28, i32 %29)
	call void @print_number(i32 %30)
	%31 = add i32 0, 10
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = add i32 0, 1111
	%34 = add i32 0, 111
	%35 = call i32 @gcd2(i32 %33, i32 %34)
	call void @print_number(i32 %35)
	%36 = add i32 0, 10
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	%38 = add i32 0, 3
	%39 = add i32 0, 3
	%40 = add i32 0, 5
	%41 = call i32 @bigmod(i32 %38, i32 %39, i32 %40)
	call void @print_number(i32 %41)
	%42 = add i32 0, 10
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	%44 = add i32 0, 13
	%45 = add i32 0, 2
	%46 = call i32 @division(i32 %44, i32 %45)
	call void @print_number(i32 %46)
	ret i32 0
}

define i32 @gcd(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %4
	%6 = add i32 0, 0
	%7 = icmp ne i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	%10 = load i32, i32* %4
	%11 = load i32, i32* %3
	%12 = load i32, i32* %4
	%13 = srem i32 %11, %12
	%14 = call i32 @gcd(i32 %10, i32 %13)
	%15 = sub i32 0, %14
	%16 = sub i32 0, %15
	ret i32 %16
	br label %label2

label1:
	%18 = load i32, i32* %3
	ret i32 %18
	br label %label2

label2:
}

define i32 @gcd2(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	%6 = load i32, i32* %4
	%7 = add i32 0, 0
	%8 = icmp ne i32 %6, %7
	%9 = zext i1 %8 to i32
	%10 = icmp ne i32 %9, 0
	br i1 %10, label %label0, label %label1

label0:
	%11 = load i32, i32* %3
	%12 = load i32, i32* %4
	%13 = srem i32 %11, %12
	store i32 %13, i32* %5
	%14 = load i32, i32* %4
	store i32 %14, i32* %3
	%15 = load i32, i32* %5
	store i32 %15, i32* %4
	%16 = load i32, i32* %4
	%17 = add i32 0, 0
	%18 = icmp ne i32 %16, %17
	%19 = zext i1 %18 to i32
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label0, label %label1

label1:
	%21 = load i32, i32* %3
	ret i32 %21
}
