declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = add i32 0, 65
	%2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
	%3 = call i32 (...) @getchar()
	ret i32 0
}
