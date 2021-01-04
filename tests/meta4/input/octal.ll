; ModuleID = '../tests/input/octal.c'
source_filename = "../tests/input/octal.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 10, i8* %2, align 1
  store i8 -5, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 17476)
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 %8, 65
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 65
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 49)
  %16 = load i8, i8* %2, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %0
  %19 = load i8, i8* %3, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

; <label>:24:                                     ; preds = %21, %18, %0
  %25 = load i8, i8* %3, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %24
  %28 = load i8, i8* %2, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  br label %31

; <label>:31:                                     ; preds = %27, %24
  %32 = phi i1 [ true, %24 ], [ %30, %27 ]
  br label %33

; <label>:33:                                     ; preds = %31, %21
  %34 = phi i1 [ false, %21 ], [ %32, %31 ]
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %36, 65
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %33
  %43 = load i8, i8* %3, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, 1
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %3, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

; <label>:52:                                     ; preds = %49, %42, %33
  %53 = load i8, i8* %3, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, 4
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %3, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

; <label>:59:                                     ; preds = %52
  %60 = load i8, i8* %2, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 5
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %2, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

; <label>:66:                                     ; preds = %59, %52
  br i1 true, label %68, label %67

; <label>:67:                                     ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %66, %59, %49
  %69 = phi i1 [ true, %66 ], [ true, %59 ], [ true, %49 ], [ true, %67 ]
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %70, 65
  %72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
  %73 = load i8, i8* %2, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, 48
  %76 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %75)
  %77 = load i8, i8* %2, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, 65
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %79)
  store i32 8, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 5
  store i32 %82, i32* %5, align 4
  %83 = add nsw i32 %82, 48
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 48
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %86)
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
