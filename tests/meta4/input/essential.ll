; ModuleID = '../tests/input/essential.c'
source_filename = "../tests/input/essential.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_char = global i8 0, align 1
@global_char1 = global i8 1, align 1
@global_char2 = global i8 4, align 1
@global_char3 = global i8 36, align 1
@global_char4 = global i8 20, align 1
@global_a = global i8 65, align 1
@global_b = global i16 66, align 2
@global_c = global i32 67, align 4
@global_d = global double 4.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 68, i8* %2, align 1
  store i16 69, i16* %3, align 2
  store i32 70, i32* %4, align 4
  store double 4.000000e+00, double* %5, align 8
  store i32 -2147483648, i32* %6, align 4
  store i32 -2147483648, i32* %6, align 4
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  store i32 %8, i32* %6, align 4
  %9 = load i8, i8* @global_a, align 1
  store i8 %9, i8* %2, align 1
  %10 = load i8, i8* %2, align 1
  %11 = sext i8 %10 to i32
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 0, %12
  %14 = sub nsw i32 0, %13
  %15 = sub nsw i32 0, %14
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %2, align 1
  %19 = load i16, i16* %3, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i16, i16* @global_b, align 2
  store i16 %21, i16* %3, align 2
  %22 = load i16, i16* %3, align 2
  %23 = sext i16 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %3, align 2
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @global_c, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 0, %29
  %31 = sub nsw i32 0, %30
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i8, i8* %2, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
  %37 = load i16, i16* %3, align 2
  %38 = sext i16 %37 to i32
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
  %42 = load i8, i8* %2, align 1
  store i8 %42, i8* %2, align 1
  store i16 -66, i16* %3, align 2
  %43 = load i8, i8* %2, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  %46 = load i8, i8* %2, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
  %49 = load i16, i16* %3, align 2
  %50 = sext i16 %49 to i32
  %51 = sub nsw i32 0, %50
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %51)
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 0, %55
  %57 = sub nsw i32 0, %56
  %58 = sub nsw i32 0, %57
  %59 = sub nsw i32 0, %58
  %60 = sub nsw i32 0, %59
  %61 = sub nsw i32 0, %60
  %62 = sub nsw i32 0, %61
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 0, %65
  %67 = sub nsw i32 0, %66
  %68 = sub nsw i32 0, %67
  ret i32 %68
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
