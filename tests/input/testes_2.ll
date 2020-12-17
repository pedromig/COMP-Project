; ModuleID = '../tests/input/testes_2.c'
source_filename = "../tests/input/testes_2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = global double 3.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %7, %8
  %10 = sitofp i32 %9 to double
  store double %10, double* %4, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store double 3.000000e+00, double* %3, align 8
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %5, %6
  %8 = sitofp i32 %7 to double
  %9 = load double, double* %3, align 8
  %10 = fadd double %8, %9
  store double %10, double* %4, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f3() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double 1.000000e+01, double* %1, align 8
  store double 9.000000e+00, double* %2, align 8
  %4 = load double, double* %1, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp olt double %5, 2.000000e+00
  %7 = zext i1 %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = fcmp oeq double %4, %8
  %10 = zext i1 %9 to i32
  %11 = sitofp i32 %10 to double
  store double %11, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = sitofp i32 %9 to double
  store double %10, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f5() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i32 1, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store i32 10, i32* %3, align 4
  store double 1.000000e+01, double* %4, align 8
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load double, double* %2, align 8
  %20 = load double, double* %4, align 8
  %21 = fcmp une double %19, %20
  %22 = zext i1 %21 to i32
  %23 = sitofp i32 %22 to double
  store double %23, double* %6, align 8
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load double, double* %2, align 8
  %29 = load double, double* %4, align 8
  %30 = fcmp ole double %28, %29
  %31 = zext i1 %30 to i32
  %32 = sitofp i32 %31 to double
  store double %32, double* %8, align 8
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load double, double* %2, align 8
  %38 = load double, double* %4, align 8
  %39 = fcmp oge double %37, %38
  %40 = zext i1 %39 to i32
  %41 = sitofp i32 %40 to double
  store double %41, double* %10, align 8
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load double, double* %2, align 8
  %47 = load double, double* %4, align 8
  %48 = fcmp olt double %46, %47
  %49 = zext i1 %48 to i32
  %50 = sitofp i32 %49 to double
  store double %50, double* %12, align 8
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp sgt i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load double, double* %2, align 8
  %56 = load double, double* %4, align 8
  %57 = fcmp ogt double %55, %56
  %58 = zext i1 %57 to i32
  %59 = sitofp i32 %58 to double
  store double %59, double* %14, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f7() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 -1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store double 1.000000e+00, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 10, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sitofp i32 %12 to double
  store double %13, double* %4, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f9() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 1.000000e+01, double* %1, align 8
  store double 0.000000e+00, double* %2, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f10() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 10, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %2, align 4
  store double 1.000000e+01, double* %3, align 8
  %6 = load double, double* %3, align 8
  store double %6, double* %4, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f12() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 -1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store double 1.000000e+00, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f13() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br label %9

; <label>:9:                                      ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f14() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  br label %9

; <label>:9:                                      ; preds = %8, %5, %0
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f15() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 1.000000e+01, double* %1, align 8
  store double 1.000000e+00, double* %2, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  store i32 20, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f17() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 1.000000e+01, double* %1, align 8
  store double 2.000000e+01, double* %2, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f18(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  store i32 1, i32* %5, align 4
  store double 2.000000e+00, double* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load double, double* %6, align 8
  %9 = call i32 @f18(i32 %7, double %8)
  store i32 %9, i32* %3, align 4
  store double 3.000000e+00, double* %4, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f20() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = load double, double* %2, align 8
  %12 = fcmp oeq double %10, %11
  %13 = zext i1 %12 to i32
  %14 = sitofp i32 %13 to double
  store double %14, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f21() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = sitofp i32 %11 to double
  store double %12, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f22() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = sitofp i32 %11 to double
  store double %12, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f23() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = sitofp i32 %11 to double
  store double %12, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f24() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %1, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = sitofp i32 %12 to double
  store double %13, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f25() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = sitofp i32 %11 to double
  store double %12, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f26() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = call i32 (...) @getchar()
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %1, align 1
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
  store i32 %7, i32* %2, align 4
  ret i32 0
}

declare i32 @getchar(...) #1

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @f27() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  store i32 20, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f28() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 10, i32* %1, align 4
  store i32 20, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %4, %5
  %7 = sitofp i32 %6 to double
  store double %7, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f29() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 10, i32* %1, align 4
  store i32 20, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = and i32 %4, 30
  %6 = sitofp i32 %5 to double
  store double %6, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f30() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 10, i32* %1, align 4
  store i32 20, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = xor i32 %4, 30
  %6 = sitofp i32 %5 to double
  store double %6, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f31() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 10, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7
  store i32 10, i32* %1, align 4
  br label %12

; <label>:11:                                     ; preds = %7, %0
  store i32 20, i32* %1, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f32(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 10
  br label %12

; <label>:12:                                     ; preds = %9, %1
  %13 = phi i1 [ false, %1 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f33(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 10
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 10
  br label %15

; <label>:15:                                     ; preds = %12, %9, %1
  %16 = phi i1 [ false, %9 ], [ false, %1 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f34() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 10
  br label %10

; <label>:10:                                     ; preds = %7, %0
  %11 = phi i1 [ true, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f35() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %13, label %7

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 10
  br label %13

; <label>:13:                                     ; preds = %10, %7, %0
  %14 = phi i1 [ true, %7 ], [ true, %0 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f36() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %7, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 10
  br label %13

; <label>:13:                                     ; preds = %10, %7
  %14 = phi i1 [ true, %7 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f37() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 1, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %7, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 10
  br label %13

; <label>:13:                                     ; preds = %10, %7
  %14 = phi i1 [ true, %7 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = sitofp i32 %15 to double
  store double %16, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define double @aux(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sitofp i32 %6 to double
  %8 = load double, double* %4, align 8
  %9 = fadd double %7, %8
  store double %9, double* %5, align 8
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define i32 @f38() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to double
  %7 = call double @aux(i32 %4, double %6)
  store double %7, double* %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f19(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  store i32 1, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sitofp i32 %9 to double
  %11 = call double @aux(i32 %8, double %10)
  store double %11, double* %7, align 8
  store double 3.000000e+00, double* %4, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @aux1(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @f39() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 65, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @aux1(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f40() #0 {
  %1 = alloca i8, align 1
  store i8 97, i8* %1, align 1
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @aux2(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @f41() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 65, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @aux2(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @aux3(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @f42() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 65, i32* %1, align 4
  store i32 10, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @aux3(i32 %3, i32 %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @aux4() #0 {
  ret i32 10
}

; Function Attrs: nounwind uwtable
define i32 @f43() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 65, i32* %1, align 4
  %3 = call i32 @aux4()
  %4 = load i32, i32* %1, align 4
  %5 = add nsw i32 %3, %4
  %6 = call i32 @aux4()
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f44() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  br label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f45() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  store i32 65, i32* %1, align 4
  br label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  store i32 66, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f46() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  br label %9

; <label>:8:                                      ; preds = %0
  br label %9

; <label>:9:                                      ; preds = %8, %6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f47() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  br label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f48() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %15, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = srem i32 %7, 2
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %6
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 80)
  br label %15

; <label>:13:                                     ; preds = %6
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 73)
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %3

; <label>:18:                                     ; preds = %3
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f49() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %15, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = srem i32 %7, 2
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %6
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 80)
  br label %15

; <label>:13:                                     ; preds = %6
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 73)
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %3

; <label>:18:                                     ; preds = %3
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f50() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %19, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %23

; <label>:8:                                      ; preds = %5
  br label %9

; <label>:9:                                      ; preds = %12, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 65
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %9

; <label>:19:                                     ; preds = %9
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  store i32 0, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %5

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
