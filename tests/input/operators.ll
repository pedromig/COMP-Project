; ModuleID = '../tests/input/operators.c'
source_filename = "../tests/input/operators.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @x() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

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
define i32 @oi(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i8 100, i8* %7, align 1
  store double 4.000000e+00, double* %9, align 8
  %11 = load double, double* %8, align 8
  %12 = load double, double* %9, align 8
  %13 = fadd double %11, %12
  store double %13, double* %10, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @asd(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %7, align 1
  %11 = load i8, i8* %7, align 1
  %12 = sext i8 %11 to i32
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %8, align 1
  %16 = load i8, i8* %7, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %2, align 4
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
  %39 = call i32 @oi(i32 1, i32 2)
  %40 = call i32 @oi(i32 2, i32 2)
  %41 = call i32 @oi(i32 192, i32 2)
  ret i32 %41
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @xddx(i32, i8 signext, double, i16 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca double, align 8
  %9 = alloca i16, align 2
  %10 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store double %2, double* %8, align 8
  store i16 %3, i16* %9, align 2
  store double 2.400000e+00, double* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i16, i16* %9, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = load i16, i16* %9, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = load i16, i16* %9, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = load i16, i16* %9, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp sge i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = load i16, i16* %9, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sle i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = load i16, i16* %9, align 2
  %38 = sext i16 %37 to i32
  %39 = or i32 %36, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i16, i16* %9, align 2
  %42 = sext i16 %41 to i32
  %43 = and i32 %40, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i16, i16* %9, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp ne i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %4
  %52 = load i16, i16* %9, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp ne i32 %53, 0
  br label %55

; <label>:55:                                     ; preds = %51, %4
  %56 = phi i1 [ false, %4 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

; <label>:60:                                     ; preds = %55
  %61 = load i16, i16* %9, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp ne i32 %62, 0
  br label %64

; <label>:64:                                     ; preds = %60, %55
  %65 = phi i1 [ true, %55 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = load i16, i16* %9, align 2
  %69 = sext i16 %68 to i32
  %70 = xor i32 %67, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i16, i16* %9, align 2
  %73 = sext i16 %72 to i32
  %74 = srem i32 %71, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i16, i16* %9, align 2
  %77 = sext i16 %76 to i32
  %78 = mul nsw i32 %75, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i16, i16* %9, align 2
  %81 = sext i16 %80 to i32
  %82 = sdiv i32 %79, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i16, i16* %9, align 2
  %91 = sext i16 %90 to i32
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define i32 @m(i8 signext, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23, %19
  store i32 1, i32* %4, align 4
  br label %29

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %27
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %2, align 4
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
  br label %13

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  br label %13

; <label>:13:                                     ; preds = %11, %8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
