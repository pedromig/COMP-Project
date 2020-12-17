; ModuleID = '../tests/input/fibonacci.c'
source_filename = "../tests/input/fibonacci.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @fibonacci(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %16

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @fibonacci(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 2
  %14 = call i32 @fibonacci(i32 %13)
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %8, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @fibonacci_seq(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %11, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %7

; <label>:22:                                     ; preds = %7
  ret i32 0
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 20, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @fibonacci_seq(i32 %3)
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @fibonacci_seq(i32 %7)
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
