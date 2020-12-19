; ModuleID = '../tests/input/comma_expr.c'
source_filename = "../tests/input/comma_expr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define signext i8 @f1() #0 {
  ret i8 65
}

; Function Attrs: nounwind uwtable
define signext i8 @f2() #0 {
  ret i8 66
}

; Function Attrs: nounwind uwtable
define signext i16 @f3() #0 {
  ret i16 1
}

; Function Attrs: nounwind uwtable
define signext i16 @f4() #0 {
  ret i16 2
}

; Function Attrs: nounwind uwtable
define i32 @f5() #0 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @f6() #0 {
  ret i32 2
}

; Function Attrs: nounwind uwtable
define double @f7() #0 {
  ret double 1.000000e+00
}

; Function Attrs: nounwind uwtable
define double @f8() #0 {
  ret double 2.000000e+00
}

; Function Attrs: nounwind uwtable
define i32 @comma_expr_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %4, align 4
  br i1 true, label %5, label %6

; <label>:5:                                      ; preds = %0
  br label %6

; <label>:6:                                      ; preds = %5, %0
  %7 = call signext i8 @f1()
  %8 = call signext i8 @f2()
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  br label %11

; <label>:11:                                     ; preds = %10, %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %11
  br label %16

; <label>:16:                                     ; preds = %15, %11
  store i32 2, i32* %2, align 4
  store i32 4, i32* %3, align 4
  br i1 true, label %17, label %18

; <label>:17:                                     ; preds = %16
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = call signext i8 @f1()
  store i32 2, i32* %2, align 4
  %20 = call signext i8 @f2()
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %4, align 4
  store i32 3, i32* %3, align 4
  br i1 true, label %22, label %23

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22, %18
  br label %24

; <label>:24:                                     ; preds = %25, %23
  store i32 1, i32* %2, align 4
  store i32 2, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %24
  br label %24
                                                  ; No predecessors!
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define signext i8 @comma_char_tests() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8 1, i8* %1, align 1
  store i8 2, i8* %2, align 1
  %8 = load i8, i8* %1, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
  store i8 10, i8* %3, align 1
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
  %17 = call signext i8 @f1()
  %18 = call signext i8 @f2()
  store i8 %18, i8* %4, align 1
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = load i8, i8* %1, align 1
  %23 = load i8, i8* %3, align 1
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %1, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
  %27 = load i8, i8* %3, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
  store i8 2, i8* %1, align 1
  store i8 4, i8* %3, align 1
  store i8 4, i8* %6, align 1
  %33 = load i8, i8* %1, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
  %36 = load i8, i8* %3, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
  %42 = call signext i8 @f1()
  store i8 2, i8* %1, align 1
  %43 = call signext i8 @f2()
  store i8 %43, i8* %2, align 1
  %44 = load i8, i8* %3, align 1
  store i8 3, i8* %7, align 1
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
  %48 = load i8, i8* %1, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %49)
  %51 = load i8, i8* %3, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %52)
  %54 = load i8, i8* %2, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %55)
  %57 = load i8, i8* %1, align 1
  %58 = call signext i8 @f1()
  %59 = load i8, i8* %4, align 1
  store i8 2, i8* %1, align 1
  ret i8 10
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define signext i16 @comma_short_tests() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i16 1, i16* %1, align 2
  store i16 2, i16* %2, align 2
  %8 = load i16, i16* %1, align 2
  %9 = sext i16 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
  %11 = load i16, i16* %2, align 2
  %12 = sext i16 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
  store i16 10, i16* %3, align 2
  %14 = load i16, i16* %3, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
  %17 = call signext i16 @f3()
  %18 = call signext i16 @f4()
  store i16 %18, i16* %4, align 2
  %19 = load i16, i16* %4, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = load i16, i16* %1, align 2
  %23 = load i16, i16* %3, align 2
  store i16 %23, i16* %5, align 2
  %24 = load i16, i16* %1, align 2
  %25 = sext i16 %24 to i32
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
  %27 = load i16, i16* %3, align 2
  %28 = sext i16 %27 to i32
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  %30 = load i16, i16* %5, align 2
  %31 = sext i16 %30 to i32
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
  store i16 2, i16* %1, align 2
  store i16 4, i16* %3, align 2
  store i16 4, i16* %6, align 2
  %33 = load i16, i16* %1, align 2
  %34 = sext i16 %33 to i32
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
  %36 = load i16, i16* %3, align 2
  %37 = sext i16 %36 to i32
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
  %39 = load i16, i16* %6, align 2
  %40 = sext i16 %39 to i32
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
  %42 = call signext i16 @f3()
  store i16 2, i16* %1, align 2
  %43 = call signext i16 @f4()
  store i16 %43, i16* %2, align 2
  %44 = load i16, i16* %3, align 2
  store i16 3, i16* %7, align 2
  %45 = load i16, i16* %7, align 2
  %46 = sext i16 %45 to i32
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
  %48 = load i16, i16* %1, align 2
  %49 = sext i16 %48 to i32
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %49)
  %51 = load i16, i16* %3, align 2
  %52 = sext i16 %51 to i32
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %52)
  %54 = load i16, i16* %2, align 2
  %55 = sext i16 %54 to i32
  %56 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %55)
  %57 = load i16, i16* %1, align 2
  %58 = call signext i16 @f3()
  %59 = load i16, i16* %4, align 2
  store i16 2, i16* %1, align 2
  ret i16 10
}

; Function Attrs: nounwind uwtable
define i32 @comma_int_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
  store i32 10, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
  %14 = call i32 @f5()
  %15 = call i32 @f6()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  store i32 2, i32* %1, align 4
  store i32 4, i32* %3, align 4
  store i32 4, i32* %6, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
  %32 = call i32 @f5()
  store i32 2, i32* %1, align 4
  %33 = call i32 @f6()
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  store i32 3, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @f5()
  %45 = load i32, i32* %4, align 4
  store i32 2, i32* %1, align 4
  ret i32 10
}

; Function Attrs: nounwind uwtable
define double @comma_double_tests() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double 1.000000e+00, double* %1, align 8
  store double 2.000000e+00, double* %2, align 8
  store double 1.000000e+01, double* %3, align 8
  %8 = call double @f7()
  %9 = call double @f8()
  store double %9, double* %4, align 8
  %10 = load double, double* %1, align 8
  %11 = load double, double* %3, align 8
  store double %11, double* %5, align 8
  store double 2.100000e+00, double* %1, align 8
  store double 4.000000e+00, double* %3, align 8
  store double 4.000000e+00, double* %6, align 8
  %12 = call double @f7()
  store double 2.000000e+00, double* %1, align 8
  %13 = call double @f8()
  store double %13, double* %2, align 8
  %14 = load double, double* %3, align 8
  store double 3.200000e+00, double* %7, align 8
  %15 = load double, double* %1, align 8
  %16 = call double @f7()
  %17 = load double, double* %4, align 8
  store double 2.000000e+00, double* %1, align 8
  ret double 1.010200e+01
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 1.200000e+19, double* %1, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = call signext i8 @comma_char_tests()
  %4 = sext i8 %3 to i32
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
  %6 = call signext i16 @comma_short_tests()
  %7 = sext i16 %6 to i32
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
  %9 = call i32 @comma_int_tests()
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
