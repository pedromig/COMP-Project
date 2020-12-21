; ModuleID = '../tests/input/full_programs.c'
source_filename = "../tests/input/full_programs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @print_number(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %10, %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sdiv i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 10
  store i32 %12, i32* %3, align 4
  br label %5

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %17, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 10
  %21 = sdiv i32 %18, %20
  %22 = add nsw i32 48, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %23, %24
  %26 = mul nsw i32 %25, 10
  %27 = sub nsw i32 %22, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = sdiv i32 %32, 10
  store i32 %33, i32* %3, align 4
  br label %14

; <label>:34:                                     ; preds = %14
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @factorial(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %16

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call i32 @factorial(i32 %13)
  %15 = mul nsw i32 %11, %14
  store i32 %15, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %10, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @factorial2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %7, %1
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %4

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @fibbogucci(i32) #0 {
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
  %14 = call i32 @fibbogucci(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 2
  %17 = call i32 @fibbogucci(i32 %16)
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %11, %10, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @fibboprada(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 1, i32* %2, align 4
  br label %32

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 2, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %22, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %18

; <label>:30:                                     ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

; <label>:32:                                     ; preds = %30, %16, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @bigmod(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  br label %43

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = srem i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @bigmod(i32 %20, i32 %22, i32 %23)
  %25 = mul nsw i32 %19, %24
  %26 = load i32, i32* %7, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %43

; <label>:28:                                     ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bigmod(i32 %29, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = srem i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = srem i32 %37, %38
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* %7, align 4
  %42 = srem i32 %40, %41
  store i32 %42, i32* %4, align 4
  br label %43

; <label>:43:                                     ; preds = %28, %16, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @division(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  store i32 0, i32* %3, align 4
  br label %54

; <label>:15:                                     ; preds = %11
  store i16 0, i16* %6, align 2
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %27

; <label>:26:                                     ; preds = %18
  store i16 1, i16* %6, align 2
  br label %27

; <label>:27:                                     ; preds = %26, %23
  br label %35

; <label>:28:                                     ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i16 1, i16* %6, align 2
  br label %34

; <label>:34:                                     ; preds = %31, %28
  br label %35

; <label>:35:                                     ; preds = %34, %27
  store i32 0, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %40, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %36

; <label>:46:                                     ; preds = %36
  %47 = load i16, i16* %6, align 2
  %48 = icmp ne i16 %47, 0
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

; <label>:52:                                     ; preds = %49, %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

; <label>:54:                                     ; preds = %52, %14, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  call void @print_number(i32 11133)
  %1 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %2 = call i32 @factorial(i32 0)
  call void @print_number(i32 %2)
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %4 = call i32 @factorial(i32 7)
  call void @print_number(i32 %4)
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %6 = call i32 @factorial2(i32 5)
  call void @print_number(i32 %6)
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %8 = call i32 @factorial2(i32 1)
  call void @print_number(i32 %8)
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %10 = call i32 @fibbogucci(i32 6)
  call void @print_number(i32 %10)
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %12 = call i32 @fibboprada(i32 20)
  call void @print_number(i32 %12)
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %14 = call i32 @gcd(i32 13, i32 4323)
  call void @print_number(i32 %14)
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %16 = call signext i8 @gcd2(i32 1111, i32 111)
  %17 = sext i8 %16 to i32
  call void @print_number(i32 %17)
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %19 = call i32 @bigmod(i32 3, i32 3, i32 5)
  call void @print_number(i32 %19)
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %21 = call i32 @division(i32 13, i32 2)
  call void @print_number(i32 %21)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gcd(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %10, %11
  %13 = call i32 @gcd(i32 %9, i32 %12)
  %14 = sub nsw i32 0, %13
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %18

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  br label %18

; <label>:18:                                     ; preds = %16, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define signext i8 @gcd2(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %9, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %4, align 4
  br label %6

; <label>:15:                                     ; preds = %6
  %16 = load i32, i32* %3, align 4
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
