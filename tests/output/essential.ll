declare i32 @putchar(...)
declare i32 @getchar(...)

@global_char = global i32 0
@global_char1 = global i32 1
@global_char2 = global i32 4
@global_char3 = global i32 36
@global_char4 = global i32 20
@global_a = global i32 65
@global_b = global i32 66
@global_c = global i32 67
@global_d = global double 4.000000e+00

define i32 @main() {
	%1 = alloca i32
	store i32 68, i32* %1
	%2 = alloca i32
	store i32 69, i32* %2
	%3 = alloca i32
	store i32 70, i32* %3
	%4 = alloca double
	store double 4.000000e+00, double* %4
	%5 = alloca i32
	%6 = add i32 0, -2147483648
	%7 = sub i32 0, %6
	%8 = sub i32 0, %7
	store i32 %8, i32* %5
	%9 = add i32 0, -2147483648
	%10 = sub i32 0, %9
	store i32 %10, i32* %5
	%11 = load i32, i32* %1
	store i32 %11, i32* %5
	%12 = load i32, i32* @global_a
	store i32 %12, i32* %1
	%13 = load i32, i32* %1
	%14 = sub i32 0, %13
	%15 = sub i32 0, %14
	%16 = sub i32 0, %15
	%17 = sub i32 0, %16
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = load i32, i32* %5
	store i32 %19, i32* %1
	%20 = load i32, i32* %2
	store i32 %20, i32* %5
	%21 = load i32, i32* @global_b
	store i32 %21, i32* %2
	%22 = load i32, i32* %2
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	%24 = load i32, i32* %5
	store i32 %24, i32* %2
	%25 = load i32, i32* %3
	store i32 %25, i32* %5
	%26 = load i32, i32* @global_c
	store i32 %26, i32* %3
	%27 = load i32, i32* %3
	%28 = sub i32 0, %27
	%29 = sub i32 0, %28
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = load i32, i32* %5
	store i32 %31, i32* %3
	%32 = load i32, i32* %1
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = load i32, i32* %2
	%35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
	%36 = load i32, i32* %3
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	%38 = load i32, i32* %1
	store i32 %38, i32* %1
	%39 = add i32 0, 66
	%40 = sub i32 0, %39
	store i32 %40, i32* %2
	%41 = load i32, i32* %1
	%42 = sub i32 0, %41
	store i32 %42, i32* %3
	%43 = load i32, i32* %1
	%44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
	%45 = load i32, i32* %2
	%46 = sub i32 0, %45
	%47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
	%48 = add i32 0, 66
	%49 = sub i32 0, %48
	%50 = sub i32 0, %49
	%51 = sub i32 0, %50
	%52 = sub i32 0, %51
	%53 = sub i32 0, %52
	%54 = sub i32 0, %53
	%55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %54)
	%56 = add i32 0, 66
	%57 = sub i32 0, %56
	%58 = sub i32 0, %57
	%59 = sub i32 0, %58
	%60 = sub i32 0, %59
	%61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %60)
	%62 = load i32, i32* %3
	%63 = sub i32 0, %62
	%64 = sub i32 0, %63
	%65 = sub i32 0, %64
	%66 = sub i32 0, %65
	%67 = sub i32 0, %66
	%68 = sub i32 0, %67
	%69 = sub i32 0, %68
	%70 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %69)
	%71 = add i32 0, 10
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	%73 = load i32, i32* %3
	%74 = sub i32 0, %73
	%75 = sub i32 0, %74
	%76 = sub i32 0, %75
	ret i32 %76
}
