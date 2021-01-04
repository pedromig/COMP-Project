; ModuleID = '../tests/input/testFile.c'
source_filename = "../tests/input/testFile.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globalDouble = global double 2.000000e+00, align 8
@d = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @func(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  store i32 3, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = mul nsw i32 %5, 3
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @notTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sitofp i32 %10 to double
  store double %11, double* %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @declarationTests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sitofp i32 %9 to double
  store double %10, double* %2, align 8
  store double 2.000000e+00, double* %3, align 8
  store double 9.700000e+01, double* %4, align 8
  store i32 97, i32* %5, align 4
  store double 2.200000e+00, double* %6, align 8
  store double 3.200000e+00, double* %7, align 8
  store double 3.200000e+00, double* %8, align 8
  store double 1.890000e+01, double* %7, align 8
  store double 1.260000e+01, double* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @uselessFunction(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @arithmeticTests() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store double 9.000000e+01, double* %1, align 8
  store i32 50, i32* %2, align 4
  store double 3.000000e+00, double* %3, align 8
  call void @uselessFunction(i32 7, i32 8)
  store double 1.400000e+01, double* %3, align 8
  %7 = load double, double* %1, align 8
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 7, %8
  %10 = sitofp i32 %9 to double
  %11 = fadd double %7, %10
  store double %11, double* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %12, 3
  %14 = mul nsw i32 %13, 4
  %15 = add nsw i32 7, %14
  %16 = add nsw i32 %15, 2
  %17 = add nsw i32 %16, 12
  %18 = add nsw i32 %17, 2
  %19 = sitofp i32 %18 to double
  store double %19, double* %3, align 8
  store double 1.400000e+01, double* %1, align 8
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %21 = load double, double* %3, align 8
  %22 = fmul double 2.200000e+00, %21
  %23 = fadd double %22, 1.000000e+00
  store double %23, double* %6, align 8
  %24 = load double, double* %1, align 8
  store double %24, double* %3, align 8
  store double %24, double* %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @errorTestingLogicalOps() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @relationalOperationsTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %8

; <label>:8:                                      ; preds = %6, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  br label %14

; <label>:14:                                     ; preds = %12, %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %20

; <label>:20:                                     ; preds = %18, %14
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  br label %26

; <label>:26:                                     ; preds = %24, %20
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  br label %32

; <label>:32:                                     ; preds = %30, %26
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %32
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %38

; <label>:38:                                     ; preds = %36, %32
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  br label %44

; <label>:44:                                     ; preds = %42, %38
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %44
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  br label %50

; <label>:50:                                     ; preds = %48, %44
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %50
  %55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 105)
  br label %56

; <label>:56:                                     ; preds = %54, %50
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %1, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %56
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 106)
  br label %62

; <label>:62:                                     ; preds = %60, %56
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 107)
  br label %68

; <label>:68:                                     ; preds = %66, %62
  %69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define void @whileAndIfChains() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %20, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sle i32 %4, 10
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %3
  store i32 1, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6
  br label %20

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  br label %19

; <label>:19:                                     ; preds = %13, %10
  br label %20

; <label>:20:                                     ; preds = %19, %9
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %3

; <label>:23:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @intAndDouble(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @scopeLimitTesting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %10

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  br label %9

; <label>:9:                                      ; preds = %8, %5
  store i32 3, i32* %1, align 4
  br label %22

; <label>:10:                                     ; preds = %0
  br label %11

; <label>:11:                                     ; preds = %18, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  br label %18

; <label>:18:                                     ; preds = %17, %14
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %11

; <label>:21:                                     ; preds = %11
  store i32 0, i32* %1, align 4
  br label %22

; <label>:22:                                     ; preds = %21, %9
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @moreIntToDoubleConversionTests() #0 {
  %1 = alloca double, align 8
  store double 3.000000e+00, double* %1, align 8
  store double 1.000000e+00, double* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @andOrTesting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %6
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %11

; <label>:11:                                     ; preds = %9, %6, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  br label %19

; <label>:19:                                     ; preds = %17, %14, %11
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %27

; <label>:27:                                     ; preds = %25, %22, %19
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %30, %27
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  br label %35

; <label>:35:                                     ; preds = %33, %30
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38, %35
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  br label %43

; <label>:43:                                     ; preds = %41, %38
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %46, %43
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %51

; <label>:51:                                     ; preds = %49, %46
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  call void @whileAndIfChains()
  call void @relationalOperationsTest()
  call void @andOrTesting()
  call void @intAndDouble(i32 1, double 1.000000e+00)
  call void @errorTestingLogicalOps()
  store i32 98, i32* @d, align 4
  %1 = call i32 @func(i32 97, double 0.000000e+00)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
