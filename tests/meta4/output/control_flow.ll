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
	%15 = load i32, i32* %3
	%16 = add i32 0, 1
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label2, label %label3

label2:
	%20 = load i32, i32* %3
	%21 = add i32 0, 10
	%22 = sdiv i32 %20, %21
	%23 = load i32, i32* %2
	%24 = sdiv i32 %23, %22
	%25 = add i32 0, 48
	%26 = add i32 %25, %24
	%27 = load i32, i32* %2
	%28 = load i32, i32* %3
	%29 = sdiv i32 %27, %28
	%30 = add i32 0, 10
	%31 = mul i32 %29, %30
	%32 = sub i32 %26, %31
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = load i32, i32* %3
	%35 = add i32 0, 10
	%36 = sdiv i32 %34, %35
	store i32 %36, i32* %3
	%37 = load i32, i32* %3
	%38 = add i32 0, 1
	%39 = icmp sgt i32 %37, %38
	%40 = zext i1 %39 to i32
	%41 = icmp ne i32 %40, 0
	br i1 %41, label %label2, label %label3

label3:
	ret void
}

define i32 @main() {
	%1 = alloca i32
	store i32 97, i32* %1
	%2 = load i32, i32* %1
	%3 = add i32 0, 97
	%4 = icmp sgt i32 %2, %3
	%5 = zext i1 %4 to i32
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1

label0:
	%7 = add i32 0, 108
	%8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
	%9 = add i32 0, 111
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	%11 = add i32 0, 108
	%12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
	%13 = add i32 0, 10
	%14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %13)
	ret i32 0
	br label %label2

label1:
	br label %label2

label2:
	%16 = add i32 0, 13920498
	call void @print_number(i32 %16)
	%17 = add i32 0, 10
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = load i32, i32* %1
	%20 = add i32 0, 98
	%21 = icmp eq i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label3, label %label4

label3:
	%24 = add i32 0, 123
	%25 = add i32 0, 2
	%26 = mul i32 %24, %25
	%27 = add i32 0, 132
	%28 = add i32 0, 4
	%29 = sdiv i32 %27, %28
	%30 = add i32 0, 213
	%31 = add i32 0, 6
	%32 = mul i32 %30, %31
	%33 = add i32 0, 231
	%34 = add i32 0, 4
	%35 = mul i32 %33, %34
	%36 = add i32 0, 312
	%37 = add i32 0, 2
	%38 = sub i32 %36, %37
	%39 = add i32 0, 0
	%40 = sub i32 0, %39
	%41 = sub i32 0, %40
	%42 = add i32 0, 321
	%43 = sub i32 %42, %41
	store i32 %43, i32* %1
	br label %label5

label4:
	store i32 1, i32* %1
	%44 = load i32, i32* %1
	%45 = add i32 0, 2
	%46 = add i32 0, 3
	%47 = load i32, i32* %1
	call void @print_number(i32 %47)
	%48 = add i32 0, 10
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	%50 = add i32 0, 12
	%51 = add i32 0, 34
	%52 = add i32 0, 56
	%53 = add i32 0, 78
	call void @print_number(i32 %53)
	%54 = add i32 0, 10
	%55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %54)
	br label %label5

label5:
	store i32 10, i32* %1
	%56 = load i32, i32* %1
	%57 = icmp ne i32 %56, 0
	br i1 %57, label %label6, label %label7

label6:
	%58 = load i32, i32* %1
	call void @print_number(i32 %58)
	%59 = add i32 0, 10
	%60 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %59)
	store i32 0, i32* %1
	%61 = load i32, i32* %1
	%62 = load i32, i32* %1
	%63 = add i32 0, 1
	%64 = sub i32 %62, %63
	%65 = load i32, i32* %1
	%66 = icmp ne i32 %65, 0
	br i1 %66, label %label6, label %label7

label7:
	%67 = add i32 0, 101
	%68 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %67)
	%69 = add i32 0, 110
	%70 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %69)
	%71 = add i32 0, 100
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	%73 = add i32 0, 10
	%74 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %73)
	ret i32 0
}
