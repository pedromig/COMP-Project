declare i32 @putchar(i32)
declare i32 @getchar()


define i32 @main() {
	%1 = alloca i32
	store i32 65, i32* %1
	ret i32 0
}
