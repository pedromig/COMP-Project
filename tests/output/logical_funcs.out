declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @nand(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	br label %label0

label0:
	%5 = load i32, i32* %3
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label1, label %label2

label1:
	%7 = load i32, i32* %4
	%8 = icmp ne i32 %7, 0
	br label %label2

label2:
	%9 = phi i1 [ false, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	ret i32 %13
}

define i32 @nor(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	br label %label0

label0:
	%5 = load i32, i32* %3
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label2, label %label1

label1:
	%7 = load i32, i32* %4
	%8 = icmp ne i32 %7, 0
	br label %label2

label2:
	%9 = phi i1 [ true, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	ret i32 %13
}

define i32 @main() {
	%1 = add i32 0, 0
	%2 = add i32 0, 0
	%3 = call i32 @nand(i32 %1, i32 %2)
	%4 = add i32 0, 65
	%5 = add i32 %3, %4
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = add i32 0, 0
	%8 = add i32 0, 0
	%9 = call i32 @nor(i32 %7, i32 %8)
	%10 = add i32 0, 65
	%11 = add i32 %9, %10
	%12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
	ret i32 0
}
