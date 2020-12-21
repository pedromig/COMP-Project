; ModuleID = '../tests/input/globalVarTests.c'
source_filename = "../tests/input/globalVarTests.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@myGlobalChar = global i8 65, align 1
@alsoSneaky = global double 2.000000e+00, align 8
@SNEAKY = global i32 90, align 4
@notInitializedOnDec = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @testAndTweak() #0 {
  %1 = alloca i32, align 4
  %2 = load i8, i8* @myGlobalChar, align 1
  %3 = sext i8 %2 to i32
  store i32 %3, i32* %1, align 4
  %4 = load i8, i8* @myGlobalChar, align 1
  %5 = sext i8 %4 to i32
  %6 = add nsw i32 %5, 1
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* @myGlobalChar, align 1
  store i32 67, i32* @notInitializedOnDec, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 83, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  store i32 120, i32* @notInitializedOnDec, align 4
  %9 = load i8, i8* @myGlobalChar, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
  %12 = load i32, i32* @notInitializedOnDec, align 4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  call void @testAndTweak()
  %15 = load i8, i8* @myGlobalChar, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  %18 = load i32, i32* @notInitializedOnDec, align 4
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  store i8 67, i8* @myGlobalChar, align 1
  %21 = load i32, i32* @notInitializedOnDec, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @notInitializedOnDec, align 4
  %23 = load i8, i8* @myGlobalChar, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  %26 = load i32, i32* @notInitializedOnDec, align 4
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %29 = load i32, i32* @notInitializedOnDec, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i8, i8* @myGlobalChar, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i8, i8* @myGlobalChar, align 1
  %33 = sext i8 %32 to i32
  ret i32 %33
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
