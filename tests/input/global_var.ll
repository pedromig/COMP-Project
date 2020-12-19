; ModuleID = '../tests/input/global_var.c'
source_filename = "../tests/input/global_var.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = common global i32 0, align 4
@b = common global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @int_global_var() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %4 = load i32, i32* @a, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* @a, align 4
  store i32 9, i32* @a, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* @a, align 4
  %9 = load i32, i32* @a, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define double @test2() #0 {
  %1 = alloca double, align 8
  %2 = load double, double* @b, align 8
  store double %2, double* %1, align 8
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define double @double_global_var() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double 1.400000e+12, double* %1, align 8
  store double 1.512000e+36, double* %2, align 8
  %5 = load double, double* @b, align 8
  store double %5, double* %3, align 8
  %6 = load i32, i32* @a, align 4
  %7 = sitofp i32 %6 to double
  store double %7, double* %4, align 8
  %8 = load double, double* %1, align 8
  store double %8, double* @b, align 8
  store double 1.649000e+01, double* @b, align 8
  %9 = load double, double* %1, align 8
  %10 = load double, double* %2, align 8
  %11 = fadd double %9, %10
  store double %11, double* @b, align 8
  %12 = load double, double* @b, align 8
  ret double %12
}

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
  store i32 2, i32* @a, align 4
  %1 = load i32, i32* @a, align 4
  %2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
  ret i32 0
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @int_global_var()
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
  %4 = call double @double_global_var()
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
