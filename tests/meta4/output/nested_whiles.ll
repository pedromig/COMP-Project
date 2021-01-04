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

define i32 @sum_range_inverse(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %4
	store i32 %7, i32* %6
	%8 = load i32, i32* %6
	%9 = load i32, i32* %3
	%10 = icmp sge i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	%13 = load i32, i32* %6
	%14 = load i32, i32* %3
	%15 = icmp sge i32 %13, %14
	%16 = zext i1 %15 to i32
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %label2, label %label3

label2:
	%18 = load i32, i32* %6
	%19 = load i32, i32* %3
	%20 = icmp sge i32 %18, %19
	%21 = zext i1 %20 to i32
	%22 = icmp ne i32 %21, 0
	br i1 %22, label %label4, label %label5

label4:
	%23 = load i32, i32* %5
	%24 = load i32, i32* %6
	%25 = add i32 %23, %24
	store i32 %25, i32* %5
	%26 = load i32, i32* %6
	%27 = add i32 0, 1
	%28 = sub i32 %26, %27
	store i32 %28, i32* %6
	%29 = load i32, i32* %6
	%30 = load i32, i32* %3
	%31 = icmp sge i32 %29, %30
	%32 = zext i1 %31 to i32
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label4, label %label5

label5:
	%34 = load i32, i32* %6
	%35 = load i32, i32* %3
	%36 = icmp sge i32 %34, %35
	%37 = zext i1 %36 to i32
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label6, label %label7

label6:
	%39 = load i32, i32* %5
	%40 = load i32, i32* %6
	%41 = add i32 %39, %40
	store i32 %41, i32* %5
	%42 = load i32, i32* %6
	%43 = add i32 0, 1
	%44 = sub i32 %42, %43
	store i32 %44, i32* %6
	%45 = load i32, i32* %6
	%46 = load i32, i32* %3
	%47 = icmp sge i32 %45, %46
	%48 = zext i1 %47 to i32
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label6, label %label7

label7:
	%50 = load i32, i32* %5
	%51 = load i32, i32* %6
	%52 = add i32 %50, %51
	store i32 %52, i32* %5
	%53 = load i32, i32* %6
	%54 = add i32 0, 1
	%55 = sub i32 %53, %54
	store i32 %55, i32* %6
	%56 = load i32, i32* %6
	%57 = load i32, i32* %3
	%58 = icmp sge i32 %56, %57
	%59 = zext i1 %58 to i32
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label2, label %label3

label3:
	%61 = load i32, i32* %5
	%62 = load i32, i32* %6
	%63 = add i32 %61, %62
	store i32 %63, i32* %5
	%64 = load i32, i32* %6
	%65 = add i32 0, 1
	%66 = sub i32 %64, %65
	store i32 %66, i32* %6
	%67 = load i32, i32* %6
	%68 = load i32, i32* %3
	%69 = icmp sge i32 %67, %68
	%70 = zext i1 %69 to i32
	%71 = icmp ne i32 %70, 0
	br i1 %71, label %label0, label %label1

label1:
	%72 = load i32, i32* %5
	ret i32 %72
}

define i32 @sum_range(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %3
	store i32 %7, i32* %6
	%8 = load i32, i32* %6
	%9 = load i32, i32* %4
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %6
	%15 = add i32 %13, %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %6
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %6
	%20 = load i32, i32* %4
	%21 = icmp slt i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label0, label %label1

label1:
	%24 = load i32, i32* %5
	ret i32 %24
}

define i32 @sum_range2(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %3
	store i32 %7, i32* %6
	%8 = load i32, i32* %6
	%9 = load i32, i32* %4
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %6
	%15 = add i32 %13, %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %6
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %6
	%20 = load i32, i32* %4
	%21 = icmp slt i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label0, label %label1

label1:
	%24 = load i32, i32* %5
	ret i32 %24
}

define i32 @sum_range3(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %3
	store i32 %7, i32* %6
	%8 = load i32, i32* %6
	%9 = load i32, i32* %4
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %6
	%15 = add i32 %13, %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %6
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %6
	%20 = load i32, i32* %4
	%21 = icmp slt i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label0, label %label1

label1:
	%24 = load i32, i32* %5
	ret i32 %24
}

define i32 @sum_range4(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %3
	store i32 %7, i32* %6
	%8 = load i32, i32* %6
	%9 = load i32, i32* %4
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %6
	%15 = add i32 %13, %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %6
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %6
	%20 = load i32, i32* %4
	%21 = icmp slt i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label0, label %label1

label1:
	%24 = load i32, i32* %5
	ret i32 %24
}

define i32 @sum_range5(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	store i32 0, i32* %5
	%6 = alloca i32
	%7 = load i32, i32* %3
	store i32 %7, i32* %6
	%8 = load i32, i32* %6
	%9 = load i32, i32* %4
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %6
	%15 = add i32 %13, %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %6
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %6
	%20 = load i32, i32* %4
	%21 = icmp slt i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label0, label %label1

label1:
	%24 = load i32, i32* %4
	%25 = load i32, i32* %5
	%26 = call i32 @sum_range_inverse(i32 %24, i32 %25)
	ret i32 %26
}

define i32 @main() {
	%1 = alloca i32
	store i32 100, i32* %1
	%2 = alloca i32
	store i32 105, i32* %2
	%3 = alloca i32
	%4 = load i32, i32* %1
	store i32 %4, i32* %3
	%5 = load i32, i32* %3
	%6 = load i32, i32* %2
	%7 = icmp slt i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	%10 = load i32, i32* %1
	%11 = load i32, i32* %3
	%12 = add i32 0, 1
	%13 = add i32 %11, %12
	%14 = call i32 @sum_range(i32 %10, i32 %13)
	call void @print_number(i32 %14)
	%15 = load i32, i32* %1
	%16 = load i32, i32* %3
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	%19 = call i32 @sum_range2(i32 %15, i32 %18)
	call void @print_number(i32 %19)
	%20 = load i32, i32* %1
	%21 = load i32, i32* %3
	%22 = add i32 0, 1
	%23 = add i32 %21, %22
	%24 = call i32 @sum_range3(i32 %20, i32 %23)
	call void @print_number(i32 %24)
	%25 = load i32, i32* %1
	%26 = load i32, i32* %3
	%27 = add i32 0, 1
	%28 = add i32 %26, %27
	%29 = call i32 @sum_range4(i32 %25, i32 %28)
	call void @print_number(i32 %29)
	%30 = load i32, i32* %1
	%31 = load i32, i32* %3
	%32 = add i32 0, 1
	%33 = add i32 %31, %32
	%34 = call i32 @sum_range5(i32 %30, i32 %33)
	call void @print_number(i32 %34)
	%35 = load i32, i32* %1
	%36 = load i32, i32* %3
	%37 = add i32 0, 1
	%38 = add i32 %36, %37
	%39 = call i32 @sum_range_inverse(i32 %35, i32 %38)
	call void @print_number(i32 %39)
	%40 = add i32 0, 10
	%41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
	%42 = load i32, i32* %3
	%43 = add i32 0, 1
	%44 = add i32 %42, %43
	store i32 %44, i32* %3
	%45 = load i32, i32* %3
	%46 = load i32, i32* %2
	%47 = icmp slt i32 %45, %46
	%48 = zext i1 %47 to i32
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label0, label %label1

label1:
	%50 = alloca i32
	store i32 2, i32* %50
	br label %label2

label2:
	%51 = load i32, i32* %50
	%52 = icmp ne i32 %51, 0
	br i1 %52, label %label3, label %label4

label3:
	%53 = load i32, i32* %50
	%54 = icmp ne i32 %53, 0
	br label %label4

label4:
	%55 = phi i1 [ false, %label2 ], [ %54, %label3 ]
	%56 = zext i1 %55 to i32
	br label %label5

label5:
	%57 = icmp ne i32 %56, 0
	br i1 %57, label %label6, label %label7

label6:
	%58 = load i32, i32* %50
	%59 = icmp ne i32 %58, 0
	br label %label7

label7:
	%60 = phi i1 [ false, %label5 ], [ %59, %label6 ]
	%61 = zext i1 %60 to i32
	%62 = add i32 0, 65
	%63 = add i32 %62, %61
	%64 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %63)
	%65 = add i32 0, 65
	%66 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %65)
	br label %label8

label8:
	%67 = add i32 0, 0
	%68 = icmp ne i32 %67, 0
	br i1 %68, label %label9, label %label10

label9:
	%69 = add i32 0, 70
	%70 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %69)
	%71 = icmp ne i32 %70, 0
	br label %label10

label10:
	%72 = phi i1 [ false, %label8 ], [ %71, %label9 ]
	%73 = zext i1 %72 to i32
	ret i32 0
	ret i32 0
}
