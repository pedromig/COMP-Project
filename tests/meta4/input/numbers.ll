; ModuleID = '../tests/input/numbers.c'
source_filename = "../tests/input/numbers.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @print_number(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  br label %35

; <label>:8:                                      ; preds = %1
  store i32 1, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %14, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 10
  store i32 %16, i32* %3, align 4
  br label %9

; <label>:17:                                     ; preds = %9
  br label %18

; <label>:18:                                     ; preds = %21, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sdiv i32 %23, 10
  %25 = sdiv i32 %22, %24
  %26 = add nsw i32 48, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %27, %28
  %30 = mul nsw i32 %29, 10
  %31 = sub nsw i32 %26, %30
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = sdiv i32 %33, 10
  store i32 %34, i32* %3, align 4
  br label %18

; <label>:35:                                     ; preds = %6, %18
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %6, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 100
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %2, align 4
  call void @print_number(i32 %7)
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  br label %3

; <label>:11:                                     ; preds = %3
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
