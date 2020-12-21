; ModuleID = '../tests/input/call_tests.c'
source_filename = "../tests/input/call_tests.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fabio = global i32 80, align 4

; Function Attrs: nounwind uwtable
define i32 @a() #0 {
  %1 = load i32, i32* @fabio, align 4
  %2 = add nsw i32 %1, 2
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %5 = load i32, i32* @fabio, align 4
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %8 = load i32, i32* @fabio, align 4
  %9 = add nsw i32 %8, 5
  store i32 %9, i32* @fabio, align 4
  %10 = load i32, i32* @fabio, align 4
  ret i32 %10
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @b() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @fabio, align 4
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %5 = load i32, i32* %1, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @c() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @d(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @e(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define double @f(i32) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load double, double* %2, align 8
  ret double %4
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  call void @d(i32 5)
  %3 = call i32 @a()
  store i32 %3, i32* %1, align 4
  %4 = call i32 @b()
  store i32 %4, i32* %1, align 4
  call void @d(i32 1)
  call void @c()
  %5 = call i32 @e(i32 100)
  %6 = sitofp i32 %5 to double
  store double %6, double* %2, align 8
  %7 = call double @f(i32 2)
  store double %7, double* %2, align 8
  %8 = call i32 @a()
  %9 = call i32 @b()
  call void @c()
  call void @d(i32 97)
  %10 = call i32 @e(i32 100)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
  %13 = call double @f(i32 97)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
