declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @aa(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define i32 @bb(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define i32 @cc(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define double @dd(double) {
	%2 = alloca double
	store double %0, double* %2
	%3 = load double, double* %2
	ret double %3
}

define i32 @ee(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @aa(i32 %3)
	ret i32 %4
}

define i32 @ff(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @bb(i32 %3)
	ret i32 %4
}

define i32 @gg(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @cc(i32 %3)
	ret i32 %4
}

define i32 @hh(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @aa(i32 %3)
	ret i32 %4
}

define double @ii(double) {
	%2 = alloca double
	store double %0, double* %2
	%3 = load double, double* %2
	%4 = call double @dd(double %3)
	ret double %4
}

define double @jj(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @aa(i32 %3)
	%5 = sitofp i32 %4 to double
	ret double %5
}

define double @kk(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 @cc(i32 %3)
	%5 = sitofp i32 %4 to double
	ret double %5
}

define void @ll(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	ret void
}

define i32 @main() {
	ret i32 0
}
