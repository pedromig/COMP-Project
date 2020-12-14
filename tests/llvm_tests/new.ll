; ModuleID = 'new.c'
source_filename = "new.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c = global i32 2, align 4
@d = global double 3.200000e+00, align 8
@b = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @fg() #0 {
  %1 = alloca i32, align 4
  store i32 2, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %6, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  br label %3

; <label>:7:                                      ; preds = %3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @lol() #0 {
  %1 = load i32, i32* @b, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @trolll() #0 {
  ret i32 6
}

; Function Attrs: nounwind uwtable
define i32 @troll2() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = add nsw i32 1, %2
  ret i32 %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
