declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @return1() {
	ret i32 1
}

define i32 @main() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = load i32, i32* %1
	%3 = add i32 0, 1
	%4 = add i32 0, 2
	%5 = add i32 0, 3
	%6 = add i32 0, 97
	%7 = load i32, i32* %1
	%8 = add i32 %6, %7
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	%10 = add i32 0, 0
	%11 = add i32 0, 1
	%12 = add i32 0, 2
	%13 = add i32 0, 3
	store i32 %13, i32* %1
	%14 = add i32 0, 97
	%15 = load i32, i32* %1
	%16 = add i32 %14, %15
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	%18 = add i32 0, 1
	%19 = add i32 0, 2
	%20 = add i32 0, 3
	%21 = add i32 0, 1
	%22 = add i32 0, 2
	%23 = add i32 0, 97
	%24 = add i32 %23, %22
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	%26 = add i32 0, 3
	%27 = add i32 0, 2
	%28 = call i32 @return1()
	%29 = add i32 0, 97
	%30 = add i32 %29, %28
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = add i32 0, 3
	%33 = add i32 0, 2
	%34 = call i32 @return1()
	%35 = add i32 0, 0
	%36 = add i32 0, 97
	%37 = add i32 %36, %35
	%38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
	%39 = call i32 @return1()
	store i32 %39, i32* %1
	%40 = load i32, i32* %1
	%41 = load i32, i32* %1
	%42 = add i32 0, 97
	%43 = add i32 %42, %41
	%44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
	ret i32 0
}
