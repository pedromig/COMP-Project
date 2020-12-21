; ModuleID = '../tests/input/control_flow.c'
source_filename = "../tests/input/control_flow.c"
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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 97, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 97
  br i1 %4, label %5, label %10

; <label>:5:                                      ; preds = %0
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 111)
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  store i32 0, i32* %1, align 4
  br label %33

; <label>:10:                                     ; preds = %0
  call void @print_number(i32 13920498)
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 98
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  store i32 321, i32* %2, align 4
  br label %19

; <label>:15:                                     ; preds = %10
  store i32 1, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  call void @print_number(i32 %16)
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  call void @print_number(i32 78)
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  br label %19

; <label>:19:                                     ; preds = %15, %14
  store i32 10, i32* %2, align 4
  br label %20

; <label>:20:                                     ; preds = %23, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %2, align 4
  call void @print_number(i32 %24)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  store i32 0, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 1
  br label %20

; <label>:28:                                     ; preds = %20
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 110)
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  br label %33

; <label>:33:                                     ; preds = %28, %5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
