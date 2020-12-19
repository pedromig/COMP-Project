; ModuleID = '../tests/input/more_tests.c'
source_filename = "../tests/input/more_tests.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@cc = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @f() #0 {
  store i32 89, i32* @cc, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 70, i32* @cc, align 4
  store double 1.200000e+00, double* %2, align 8
  store double 1.500000e+00, double* %3, align 8
  store double 1.250000e+00, double* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 65, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 0, %12
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store i32 6, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
  store i32 67, i32* %10, align 4
  call void @f()
  store i32 65, i32* %10, align 4
  br i1 true, label %17, label %23

; <label>:17:                                     ; preds = %0
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 88)
  %21 = load i32, i32* @cc, align 4
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
  br label %27

; <label>:23:                                     ; preds = %0
  %24 = load i32, i32* %10, align 4
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %27

; <label>:27:                                     ; preds = %23, %17
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  ret i32 0
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
