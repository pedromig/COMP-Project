; ModuleID = '../tests/input/operators.c'
source_filename = "../tests/input/operators.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @statements() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %54

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %54

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @statements()
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %11, %8
  %16 = load i32, i32* %2, align 4
  %17 = srem i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = xor i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

; <label>:23:                                     ; preds = %19, %11
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @statements()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %27, %31
  %33 = icmp ne i32 %32, 67
  br i1 %33, label %34, label %52

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @statements()
  %41 = mul nsw i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %34
  br label %44

; <label>:44:                                     ; preds = %43, %34
  %45 = phi i1 [ false, %34 ], [ true, %43 ]
  %46 = zext i1 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %44
  br label %51

; <label>:50:                                     ; preds = %44
  store i32 5, i32* %1, align 4
  br label %55

; <label>:51:                                     ; preds = %49
  store i32 4, i32* %1, align 4
  br label %55

; <label>:52:                                     ; preds = %23
  store i32 3, i32* %1, align 4
  br label %55

; <label>:53:                                     ; preds = %19, %15
  store i32 2, i32* %1, align 4
  br label %55

; <label>:54:                                     ; preds = %5, %0
  store i32 1, i32* %1, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %53, %52, %51, %50
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
