; ModuleID = '../tests/input/primes.c'
source_filename = "../tests/input/primes.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @primes(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %49, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %50

; <label>:12:                                     ; preds = %8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %49

; <label>:18:                                     ; preds = %12
  store i32 2, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %19

; <label>:19:                                     ; preds = %36, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = srem i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %30
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %19

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 48, %43
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
  br label %46

; <label>:46:                                     ; preds = %42, %39
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %15
  br label %8

; <label>:50:                                     ; preds = %8
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  call void @primes(i32 1, i32 50)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
