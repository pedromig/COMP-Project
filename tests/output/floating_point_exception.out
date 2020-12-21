declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = add i32 0, 1
	%3 = sub i32 0, %2
	%4 = load i32, i32* %1
	%5 = sdiv i32 %3, %4
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1

label0:
	%7 = load i32, i32* %1
	%8 = add i32 0, 10
	%9 = mul i32 %7, %8
	store i32 %9, i32* %1
	%10 = add i32 0, 1
	%11 = sub i32 0, %10
	%12 = load i32, i32* %1
	%13 = sdiv i32 %11, %12
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label0, label %label1

label1:
	ret i32 0
}
