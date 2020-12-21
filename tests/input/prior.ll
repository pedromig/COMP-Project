; ModuleID = '../tests/input/prior.c'
source_filename = "../tests/input/prior.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 3, i32* %3, align 4
  store i32 5, i32* %4, align 4
  store i32 65, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %157, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %161

; <label>:9:                                      ; preds = %6
  store i32 65, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %9
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %17

; <label>:17:                                     ; preds = %15, %9
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %17
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  br label %26

; <label>:26:                                     ; preds = %24, %17
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %26
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %35

; <label>:35:                                     ; preds = %33, %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %40
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  br label %45

; <label>:45:                                     ; preds = %43, %40, %35
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %45
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  br label %54

; <label>:54:                                     ; preds = %52, %45
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %54
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %62

; <label>:62:                                     ; preds = %60, %54
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sdiv i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %62
  %70 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  br label %71

; <label>:71:                                     ; preds = %69, %62
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %71
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  br label %79

; <label>:79:                                     ; preds = %77, %71
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %79
  %86 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 105)
  br label %87

; <label>:87:                                     ; preds = %85, %79
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %87
  %94 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 106)
  br label %95

; <label>:95:                                     ; preds = %93, %87
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %95
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 107)
  br label %103

; <label>:103:                                    ; preds = %101, %95
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %103
  %110 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  br label %111

; <label>:111:                                    ; preds = %109, %103
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %4, align 4
  %116 = sub nsw i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

; <label>:118:                                    ; preds = %111
  %119 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 109)
  br label %120

; <label>:120:                                    ; preds = %118, %111
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %4, align 4
  %125 = srem i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

; <label>:127:                                    ; preds = %120
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 110)
  br label %129

; <label>:129:                                    ; preds = %127, %120
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

; <label>:135:                                    ; preds = %129
  %136 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 111)
  br label %137

; <label>:137:                                    ; preds = %135, %129
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

; <label>:145:                                    ; preds = %142, %137
  %146 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 112)
  br label %147

; <label>:147:                                    ; preds = %145, %142
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

; <label>:152:                                    ; preds = %147
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

; <label>:155:                                    ; preds = %152
  %156 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 113)
  br label %157

; <label>:157:                                    ; preds = %155, %152, %147
  %158 = load i32, i32* %2, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %2, align 4
  %160 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  br label %6

; <label>:161:                                    ; preds = %6
  %162 = load i32, i32* %1, align 4
  ret i32 %162
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
