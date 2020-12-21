; ModuleID = '../tests/input/fibogucci.c'
source_filename = "../tests/input/fibogucci.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @factorial(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @factorial(i32 %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %7, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @fibbonacci(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7
  store i32 1, i32* %2, align 4
  br label %19

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call i32 @fibbonacci(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 2
  %17 = call i32 @fibbonacci(i32 %16)
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %11, %10, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gcd(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %3, align 4
  br label %37

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %3, align 4
  br label %37

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %3, align 4
  br label %37

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gcd(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %37

; <label>:31:                                     ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @gcd(i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %31, %25, %19, %13, %8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @fibbonacci(i32 %5)
  %7 = add nsw i32 48, %6
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
  br label %9

; <label>:9:                                      ; preds = %13, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 45)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @fibbonacci(i32 %17)
  %19 = add nsw i32 %18, 48
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
  br label %9

; <label>:21:                                     ; preds = %9
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %23 = call i32 @gcd(i32 64, i32 34)
  %24 = call i32 @factorial(i32 5)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
