; ModuleID = '../tests/input/expressions2.c'
source_filename = "../tests/input/expressions2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@yaya = global i32 52, align 4

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
  br label %8

; <label>:8:                                      ; preds = %6, %1
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

; <label>:35:                                     ; preds = %18
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @print_number(i32 %3)
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  store i32 89, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  call void @print_number(i32 %5)
  %6 = load i32, i32* %2, align 4
  call void @print_number(i32 %6)
  %7 = load i32, i32* %2, align 4
  call void @print_number(i32 %7)
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %9 = load i32, i32* %2, align 4
  call void @print_number(i32 %9)
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %11 = load i32, i32* %2, align 4
  %12 = srem i32 %11, 2
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = srem i32 %13, 1
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  call void @print_number(i32 %15)
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %17 = load i32, i32* %2, align 4
  %18 = srem i32 %17, 1
  store i32 %18, i32* %2, align 4
  store i32 9999, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 12
  %21 = zext i1 %20 to i32
  call void @print_number(i32 %21)
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 111
  %24 = zext i1 %23 to i32
  call void @print_number(i32 %24)
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %25, 111
  %27 = zext i1 %26 to i32
  call void @print_number(i32 %27)
  %28 = load i32, i32* %2, align 4
  %29 = icmp sgt i32 %28, 111
  %30 = zext i1 %29 to i32
  call void @print_number(i32 %30)
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 111
  %33 = zext i1 %32 to i32
  call void @print_number(i32 %33)
  %34 = load i32, i32* %2, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %0
  %37 = load i32, i32* %2, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %36, %0
  br label %40

; <label>:40:                                     ; preds = %39, %36
  %41 = phi i1 [ true, %36 ], [ true, %39 ]
  %42 = zext i1 %41 to i32
  call void @print_number(i32 %42)
  %43 = load i32, i32* %2, align 4
  %44 = icmp sle i32 %43, 111
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %40
  br label %46

; <label>:46:                                     ; preds = %45, %40
  %47 = phi i1 [ true, %40 ], [ true, %45 ]
  %48 = zext i1 %47 to i32
  call void @print_number(i32 %48)
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, 1111
  call void @print_number(i32 %51)
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %53 = load i32, i32* %2, align 4
  %54 = or i32 %53, 3242
  call void @print_number(i32 %54)
  %55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %56 = load i32, i32* %2, align 4
  %57 = xor i32 %56, 4161
  call void @print_number(i32 %57)
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
