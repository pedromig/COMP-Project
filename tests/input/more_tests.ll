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
define i32 @error_in_C_problem() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 10, i8* %1, align 1
  store i8 -5, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 17476)
  %5 = load i8, i8* %1, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %0
  %8 = load i8, i8* %2, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

; <label>:13:                                     ; preds = %10, %7, %0
  %14 = load i8, i8* %2, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %13
  %17 = load i8, i8* %1, align 1
  %18 = icmp ne i8 %17, 0
  %19 = xor i1 %18, true
  br label %20

; <label>:20:                                     ; preds = %16, %13
  %21 = phi i1 [ true, %13 ], [ %19, %16 ]
  br label %22

; <label>:22:                                     ; preds = %20, %10
  %23 = phi i1 [ false, %10 ], [ %21, %20 ]
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %25, 65
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i8, i8* %1, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %22
  %32 = load i8, i8* %2, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

; <label>:41:                                     ; preds = %38, %31, %22
  %42 = load i8, i8* %2, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, 4
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %2, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %41
  %49 = load i8, i8* %1, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 5
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %1, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

; <label>:55:                                     ; preds = %48, %41
  br i1 true, label %57, label %56

; <label>:56:                                     ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %55, %48, %38
  %58 = phi i1 [ true, %55 ], [ true, %48 ], [ true, %38 ], [ true, %56 ]
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 %59, 65
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %60)
  %62 = load i8, i8* %1, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, 65
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
  ret i32 0
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @error_in_D_problem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
  store i32 3, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = mul nsw i32 2, %12
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 2, %21
  store i32 %22, i32* %2, align 4
  %23 = sub nsw i32 %22, 5
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define signext i8 @nand(i8 signext, i8 signext) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12:                                     ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define signext i8 @nor(i8 signext, i8 signext) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12:                                     ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define i32 @random_tests() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 70, i32* @cc, align 4
  store double 1.200000e+00, double* %1, align 8
  store double 1.500000e+00, double* %2, align 8
  store double 1.250000e+00, double* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 65, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  store i32 6, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
  store i32 67, i32* %9, align 4
  call void @f()
  store i32 65, i32* %9, align 4
  br i1 true, label %16, label %22

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 88)
  %20 = load i32, i32* @cc, align 4
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  br label %26

; <label>:22:                                     ; preds = %0
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %26

; <label>:26:                                     ; preds = %22, %16
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @error_in_C_problem()
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %4 = call i32 @error_in_D_problem()
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %6 = call signext i8 @nand(i8 signext 65, i8 signext 66)
  %7 = call signext i8 @nor(i8 signext 65, i8 signext 66)
  %8 = call i32 @random_tests()
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
