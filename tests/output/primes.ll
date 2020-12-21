declare i32 @putchar(...)
declare i32 @getchar(...)


define void @primes(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = load i32, i32* %3
	%9 = load i32, i32* %4
	%10 = icmp slt i32 %8, %9
	%11 = zext i1 %10 to i32
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label0, label %label1

label0:
	store i32 0, i32* %6
	%13 = load i32, i32* %3
	%14 = add i32 0, 1
	%15 = icmp sle i32 %13, %14
	%16 = zext i1 %15 to i32
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %label2, label %label3

label2:
	%18 = load i32, i32* %3
	%19 = add i32 0, 1
	%20 = add i32 %18, %19
	store i32 %20, i32* %3
	br label %label4

label3:
	store i32 2, i32* %5
	store i32 0, i32* %7
	br label %label5

label5:
	%21 = load i32, i32* %3
	%22 = add i32 0, 2
	%23 = sdiv i32 %21, %22
	%24 = load i32, i32* %5
	%25 = icmp sle i32 %24, %23
	%26 = zext i1 %25 to i32
	%27 = icmp ne i32 %26, 0
	br i1 %27, label %label6, label %label7

label6:
	%28 = load i32, i32* %7
	%29 = icmp ne i32 %28, 0
	%30 = xor i1 %29, true
	%31 = zext i1 %30 to i32
	%32 = icmp ne i32 %31, 0
	br label %label7

label7:
	%33 = phi i1 [ false, %label5 ], [ %32, %label6 ]
	%34 = zext i1 %33 to i32
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label8, label %label9

label8:
	%36 = load i32, i32* %3
	%37 = load i32, i32* %5
	%38 = srem i32 %36, %37
	%39 = add i32 0, 0
	%40 = icmp eq i32 %38, %39
	%41 = zext i1 %40 to i32
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label10, label %label11

label10:
	store i32 1, i32* %6
	store i32 1, i32* %7
	br label %label12

label11:
	br label %label12

label12:
	%43 = load i32, i32* %5
	%44 = add i32 0, 1
	%45 = add i32 %43, %44
	store i32 %45, i32* %5
	br label %label13

label13:
	%46 = load i32, i32* %3
	%47 = add i32 0, 2
	%48 = sdiv i32 %46, %47
	%49 = load i32, i32* %5
	%50 = icmp sle i32 %49, %48
	%51 = zext i1 %50 to i32
	%52 = icmp ne i32 %51, 0
	br i1 %52, label %label14, label %label15

label14:
	%53 = load i32, i32* %7
	%54 = icmp ne i32 %53, 0
	%55 = xor i1 %54, true
	%56 = zext i1 %55 to i32
	%57 = icmp ne i32 %56, 0
	br label %label15

label15:
	%58 = phi i1 [ false, %label13 ], [ %57, %label14 ]
	%59 = zext i1 %58 to i32
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label8, label %label9

label9:
	%61 = load i32, i32* %6
	%62 = add i32 0, 0
	%63 = icmp eq i32 %61, %62
	%64 = zext i1 %63 to i32
	%65 = icmp ne i32 %64, 0
	br i1 %65, label %label16, label %label17

label16:
	%66 = add i32 0, 48
	%67 = load i32, i32* %3
	%68 = add i32 %66, %67
	%69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
	br label %label18

label17:
	br label %label18

label18:
	%70 = load i32, i32* %3
	%71 = add i32 0, 1
	%72 = add i32 %70, %71
	store i32 %72, i32* %3
	br label %label4

label4:
	%73 = load i32, i32* %3
	%74 = load i32, i32* %4
	%75 = icmp slt i32 %73, %74
	%76 = zext i1 %75 to i32
	%77 = icmp ne i32 %76, 0
	br i1 %77, label %label0, label %label1

label1:
	ret void
}

define i32 @main() {
	%1 = add i32 0, 1
	%2 = add i32 0, 50
	call void @primes(i32 %1, i32 %2)
	%3 = fadd double 0.0, 5.500000e+00
	%4 = fsub double 0.0, %3
	ret i32 0
}
