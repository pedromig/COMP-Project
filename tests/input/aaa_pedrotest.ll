; ModuleID = '../tests/input/aaa_pedrotest.c'
source_filename = "../tests/input/aaa_pedrotest.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 65, i32* %2, align 4
  store i32 68, i32* %3, align 4
  store i8 76, i8* %4, align 1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, 10
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %0
  br label %10

; <label>:10:                                     ; preds = %9, %0
  %11 = phi i1 [ true, %0 ], [ false, %9 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  br i1 %11, label %14, label %13

; <label>:13:                                     ; preds = %10
  br label %14

; <label>:14:                                     ; preds = %13, %10
  %15 = phi i1 [ true, %10 ], [ true, %13 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 48, %20
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
  ret i32 0
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
