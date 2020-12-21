declare i32 @putchar(...)
declare i32 @getchar(...)

@yaya = global i32 52

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
	br label %label2

label1:
	br label %label2

label2:
	%10 = alloca i32
	store i32 1, i32* %10
	%11 = load i32, i32* %2
	%12 = load i32, i32* %10
	%13 = sdiv i32 %11, %12
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label3, label %label4

label3:
	%15 = load i32, i32* %10
	%16 = add i32 0, 10
	%17 = mul i32 %15, %16
	store i32 %17, i32* %10
	%18 = load i32, i32* %2
	%19 = load i32, i32* %10
	%20 = sdiv i32 %18, %19
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %label3, label %label4

label4:
	%22 = load i32, i32* %10
	%23 = add i32 0, 1
	%24 = icmp sgt i32 %22, %23
	%25 = zext i1 %24 to i32
	%26 = icmp ne i32 %25, 0
	br i1 %26, label %label5, label %label6

label5:
	%27 = load i32, i32* %10
	%28 = add i32 0, 10
	%29 = sdiv i32 %27, %28
	%30 = load i32, i32* %2
	%31 = sdiv i32 %30, %29
	%32 = add i32 0, 48
	%33 = add i32 %32, %31
	%34 = load i32, i32* %2
	%35 = load i32, i32* %10
	%36 = sdiv i32 %34, %35
	%37 = add i32 0, 10
	%38 = mul i32 %36, %37
	%39 = sub i32 %33, %38
	%40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %39)
	%41 = load i32, i32* %10
	%42 = add i32 0, 10
	%43 = sdiv i32 %41, %42
	store i32 %43, i32* %10
	%44 = load i32, i32* %10
	%45 = add i32 0, 1
	%46 = icmp sgt i32 %44, %45
	%47 = zext i1 %46 to i32
	%48 = icmp ne i32 %47, 0
	br i1 %48, label %label5, label %label6

label6:
	ret void
}

define i32 @main() {
	%1 = add i32 0, 3
	%2 = add i32 0, 42
	%3 = mul i32 %1, %2
	%4 = add i32 0, 84
	%5 = icmp sge i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = alloca i32
	store i32 %6, i32* %7
	%8 = load i32, i32* %7
	call void @print_number(i32 %8)
	%9 = add i32 0, 10
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	%11 = add i32 0, 43
	%12 = add i32 0, 1
	%13 = mul i32 %11, %12
	%14 = add i32 0, 3
	%15 = sdiv i32 %13, %14
	%16 = add i32 0, 98
	%17 = add i32 %15, %16
	%18 = add i32 0, 12
	%19 = sub i32 %17, %18
	%20 = add i32 0, 11
	%21 = sub i32 0, %20
	%22 = sub i32 0, %21
	%23 = sub i32 0, %22
	%24 = add i32 %19, %23
	store i32 %24, i32* %7
	%25 = load i32, i32* %7
	call void @print_number(i32 %25)
	%26 = load i32, i32* %7
	call void @print_number(i32 %26)
	%27 = load i32, i32* %7
	call void @print_number(i32 %27)
	%28 = add i32 0, 10
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	%30 = load i32, i32* %7
	call void @print_number(i32 %30)
	%31 = add i32 0, 10
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = load i32, i32* %7
	%34 = add i32 0, 2
	%35 = srem i32 %33, %34
	store i32 %35, i32* %7
	%36 = load i32, i32* %7
	%37 = add i32 0, 1
	%38 = srem i32 %36, %37
	store i32 %38, i32* %7
	%39 = load i32, i32* %7
	call void @print_number(i32 %39)
	%40 = add i32 0, 10
	%41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
	%42 = load i32, i32* %7
	%43 = add i32 0, 1
	%44 = srem i32 %42, %43
	store i32 %44, i32* %7
	store i32 9999, i32* %7
	%45 = load i32, i32* %7
	%46 = add i32 0, 12
	%47 = icmp ne i32 %45, %46
	%48 = zext i1 %47 to i32
	call void @print_number(i32 %48)
	%49 = load i32, i32* %7
	%50 = add i32 0, 111
	%51 = icmp slt i32 %49, %50
	%52 = zext i1 %51 to i32
	call void @print_number(i32 %52)
	%53 = load i32, i32* %7
	%54 = add i32 0, 111
	%55 = icmp sle i32 %53, %54
	%56 = zext i1 %55 to i32
	call void @print_number(i32 %56)
	%57 = load i32, i32* %7
	%58 = add i32 0, 111
	%59 = icmp sgt i32 %57, %58
	%60 = zext i1 %59 to i32
	call void @print_number(i32 %60)
	%61 = load i32, i32* %7
	%62 = add i32 0, 111
	%63 = icmp eq i32 %61, %62
	%64 = zext i1 %63 to i32
	call void @print_number(i32 %64)
	br label %label0

label0:
	%65 = load i32, i32* %7
	%66 = add i32 0, 1
	%67 = icmp sgt i32 %65, %66
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label1, label %label2

label1:
	%70 = load i32, i32* %7
	%71 = add i32 0, 2
	%72 = icmp sge i32 %70, %71
	%73 = zext i1 %72 to i32
	%74 = icmp ne i32 %73, 0
	br label %label2

label2:
	%75 = phi i1 [ false, %label0 ], [ %74, %label1 ]
	%76 = zext i1 %75 to i32
	br label %label3

label3:
	%77 = icmp ne i32 %76, 0
	br i1 %77, label %label5, label %label4

label4:
	%78 = add i32 0, 42
	%79 = icmp ne i32 %78, 0
	br label %label5

label5:
	%80 = phi i1 [ true, %label3 ], [ %79, %label4 ]
	%81 = zext i1 %80 to i32
	call void @print_number(i32 %81)
	br label %label6

label6:
	%82 = load i32, i32* %7
	%83 = add i32 0, 111
	%84 = icmp sle i32 %82, %83
	%85 = zext i1 %84 to i32
	%86 = icmp ne i32 %85, 0
	%87 = xor i1 %86, true
	%88 = zext i1 %87 to i32
	%89 = icmp ne i32 %88, 0
	br i1 %89, label %label8, label %label7

label7:
	%90 = add i32 0, 1
	%91 = icmp ne i32 %90, 0
	br label %label8

label8:
	%92 = phi i1 [ true, %label6 ], [ %91, %label7 ]
	%93 = zext i1 %92 to i32
	call void @print_number(i32 %93)
	%94 = add i32 0, 10
	%95 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %94)
	%96 = load i32, i32* %7
	%97 = add i32 0, 1111
	%98 = and i32 %96, %97
	call void @print_number(i32 %98)
	%99 = add i32 0, 10
	%100 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %99)
	%101 = load i32, i32* %7
	%102 = add i32 0, 3242
	%103 = or i32 %101, %102
	call void @print_number(i32 %103)
	%104 = add i32 0, 10
	%105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %104)
	%106 = load i32, i32* %7
	%107 = add i32 0, 4161
	%108 = xor i32 %106, %107
	call void @print_number(i32 %108)
	%109 = add i32 0, 10
	%110 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %109)
	ret i32 0
}
