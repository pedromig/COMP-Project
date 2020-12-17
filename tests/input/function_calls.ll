; ModuleID = '../tests/input/function_calls.c'
source_filename = "../tests/input/function_calls.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define signext i8 @a(i8 signext) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define signext i16 @b(i16 signext) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: nounwind uwtable
define i32 @c(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define double @d(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: nounwind uwtable
define i32 @e(i32, i16 signext) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %5 = load i32, i32* %3, align 4
  %6 = load i16, i16* %4, align 2
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %5, %7
  %9 = call i32 @c(i32 12)
  %10 = add nsw i32 %8, %9
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define double @f(double, i8 signext) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8, align 1
  store double %0, double* %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load double, double* %3, align 8
  %6 = call double @d(double %5)
  %7 = load i8, i8* %4, align 1
  %8 = call signext i8 @a(i8 signext %7)
  %9 = sext i8 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = fadd double %6, %10
  ret double %11
}

; Function Attrs: nounwind uwtable
define double @g(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sitofp i32 %5 to double
  %7 = load double, double* %4, align 8
  %8 = fmul double %6, %7
  %9 = call signext i16 @b(i16 signext 10)
  %10 = sext i16 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = fadd double %8, %11
  ret double %12
}

; Function Attrs: nounwind uwtable
define double @h() #0 {
  %1 = call i32 @c(i32 1)
  %2 = call double @d(double 1.700000e+00)
  %3 = call double @g(i32 %1, double %2)
  %4 = fptosi double %3 to i32
  %5 = call double @f(double 1.600000e+00, i8 signext 65)
  %6 = call signext i8 @a(i8 signext 88)
  %7 = call double @f(double %5, i8 signext %6)
  %8 = call double @g(i32 %4, double %7)
  ret double %8
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @c(i32 1)
  %3 = call double @d(double 1.700000e+00)
  %4 = call double @g(i32 %2, double %3)
  %5 = fptosi double %4 to i32
  %6 = call double @f(double 1.600000e+00, i8 signext 65)
  %7 = call signext i8 @a(i8 signext 88)
  %8 = call double @f(double %6, i8 signext %7)
  %9 = call double @g(i32 %5, double %8)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
