; ModuleID = '../tests/input/nested_whiles.c'
source_filename = "../tests/input/nested_whiles.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @print_number(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %9, %1
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sdiv i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 10
  store i32 %11, i32* %3, align 4
  br label %4

; <label>:12:                                     ; preds = %4
  br label %13

; <label>:13:                                     ; preds = %16, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 10
  %20 = sdiv i32 %17, %19
  %21 = add nsw i32 48, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sdiv i32 %22, %23
  %25 = mul nsw i32 %24, 10
  %26 = sub nsw i32 %21, %25
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 10
  store i32 %29, i32* %3, align 4
  br label %13

; <label>:30:                                     ; preds = %13
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @sum_range_inverse(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %45, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %51

; <label>:12:                                     ; preds = %8
  br label %13

; <label>:13:                                     ; preds = %39, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %45

; <label>:17:                                     ; preds = %13
  br label %18

; <label>:18:                                     ; preds = %22, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %18

; <label>:28:                                     ; preds = %18
  br label %29

; <label>:29:                                     ; preds = %33, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %29

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %13

; <label>:45:                                     ; preds = %13
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %8

; <label>:51:                                     ; preds = %8
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @sum_range(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @sum_range2(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @sum_range3(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @sum_range4(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @sum_range5(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sum_range_inverse(i32 %19, i32 %20)
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 100, i32* %2, align 4
  store i32 105, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %11, %0
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @sum_range(i32 %12, i32 %14)
  call void @print_number(i32 %15)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @sum_range2(i32 %16, i32 %18)
  call void @print_number(i32 %19)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @sum_range3(i32 %20, i32 %22)
  call void @print_number(i32 %23)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @sum_range4(i32 %24, i32 %26)
  call void @print_number(i32 %27)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @sum_range5(i32 %28, i32 %30)
  call void @print_number(i32 %31)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @sum_range_inverse(i32 %32, i32 %34)
  call void @print_number(i32 %35)
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

; <label>:39:                                     ; preds = %7
  store i32 2, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %45, %42, %39
  %49 = phi i1 [ false, %42 ], [ false, %39 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = add nsw i32 65, %50
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %51)
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
