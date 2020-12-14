declare i32 @putchar(i32)
declare i32 @getchar()


define i32 @a() {
	%1 = alloca i32
	store i32 2, i32* %1
	%2 = load i32, i32* %1
	ret i32 %2
}

define i32 @aa() {
	ret i32 2
}

define i32 @b() {
	%1 = alloca i32
	%2 = load i32, i32* %1
	ret i32 %2
}

define i32 @bb() {
	ret i32 3
}

define i32 @c() {
	%1 = alloca i32
	%2 = load i32, i32* %1
	ret i32 %2
}

define i32 @cc() {
	ret i32 65
}

define void @d() {
	ret void
}

define double @e() {
	%1 = alloca double
	%2 = load double, double* %1
	ret double %2
}

define double @ee() {
	ret double 1.200000e+00
}

define void @f(i32, i32, i32, i32, double) {
	%6 = alloca i32
	store i32 %0, i32* %6
	%7 = alloca i32
	store i32 %1, i32* %7
	%8 = alloca i32
	store i32 %2, i32* %8
	%9 = alloca i32
	store i32 %3, i32* %9
	%10 = alloca double
	store double %4, double* %10
	ret void
}
@global_char = global i32 83
@global_short = global i32 10
@global_int = global i32 14
@global_double = global double 1.400000e+00
@global_a = global i32 0
@global_b = global i32 0
@global_c = global i32 0
@global_d = global double 0.000000e+00

define void @g() {
	%1 = alloca i32
	store i32 65, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca i32
	store i32 1, i32* %3
	%4 = alloca double
	store double 1.200000e+00, double* %4
	ret void
}

define void @h() {
	%1 = alloca i32
	%2 = load i32, i32* @global_char
	store i32 %2, i32* %1
	%3 = alloca i32
	%4 = load i32, i32* @global_short
	store i32 %4, i32* %3
	%5 = alloca i32
	%6 = load i32, i32* @global_int
	store i32 %6, i32* %5
	%7 = alloca double
	%8 = load double, double* @global_double
	store double %8, double* %7
	%9 = alloca double
	%10 = load double, double* @global_double
	store double %10, double* %9
	ret void
}

define void @i() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca double
	%5 = alloca i32
	%6 = load i32, i32* %1
	store i32 %6, i32* %5
	%7 = alloca i32
	%8 = load i32, i32* %2
	store i32 %8, i32* %7
	%9 = alloca i32
	%10 = load i32, i32* %3
	store i32 %10, i32* %9
	%11 = alloca double
	%12 = load double, double* %4
	store double %12, double* %11
	ret void
}

define void @j() {
	store i32 66, i32* @global_char
	store i32 10, i32* @global_int
	store i32 12, i32* @global_short
	store double 1.300000e+00, double* @global_double
	ret void
}

define void @l() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca double
	%5 = load i32, i32* %1
	store i32 %5, i32* @global_char
	%6 = load i32, i32* %2
	store i32 %6, i32* @global_int
	%7 = load i32, i32* %3
	store i32 %7, i32* @global_short
	%8 = load double, double* %4
	store double %8, double* @global_double
	ret void
}

define void @m() {
	%1 = load i32, i32* @global_a
	store i32 %1, i32* @global_char
	%2 = load i32, i32* @global_b
	store i32 %2, i32* @global_int
	%3 = load i32, i32* @global_c
	store i32 %3, i32* @global_short
	%4 = load double, double* @global_d
	store double %4, double* @global_double
	ret void
}

define void @downcast_store() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca double
	%5 = load i32, i32* %1
	%6 = sitofp i32 %5 to double
	store double %6, double* %4
	%7 = load i32, i32* %2
	%8 = sitofp i32 %7 to double
	store double %8, double* %4
	%9 = load i32, i32* %3
	%10 = sitofp i32 %9 to double
	store double %10, double* %4
	%11 = load i32, i32* @global_a
	%12 = sitofp i32 %11 to double
	store double %12, double* @global_double
	%13 = load i32, i32* @global_b
	%14 = sitofp i32 %13 to double
	store double %14, double* @global_double
	%15 = load i32, i32* @global_c
	%16 = sitofp i32 %15 to double
	store double %16, double* @global_double
	ret void
}
@aaa = global i32 12

define void @downcast_declaration() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca double
	%5 = alloca double
	%6 = load i32, i32* %1
	%7 = sitofp i32 %6 to double
	store double %7, double* %5
	%8 = alloca double
	%9 = load i32, i32* %2
	%10 = sitofp i32 %9 to double
	store double %10, double* %8
	%11 = alloca double
	%12 = load i32, i32* %3
	%13 = sitofp i32 %12 to double
	store double %13, double* %11
	%14 = alloca double
	%15 = load double, double* %4
	store double %15, double* %14
	ret void
}

define i32 @main() {
	ret i32 0
}
