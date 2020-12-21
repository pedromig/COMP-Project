; ModuleID = '../tests/input/doubles.c'
source_filename = "../tests/input/doubles.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @print_equality(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oeq double %5, %6
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 121)
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 115)
  br label %15

; <label>:12:                                     ; preds = %2
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 110)
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 111)
  br label %15

; <label>:15:                                     ; preds = %12, %8
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double 1.200000e+00, double* %1, align 8
  store double 1.300000e+00, double* %2, align 8
  store double 1.400000e+00, double* %3, align 8
  store double 1.200000e+00, double* %4, align 8
  store double 0x4066789E3750F790, double* %5, align 8
  %22 = load double, double* %5, align 8
  %23 = fmul double %22, 1.200000e+01
  store double %23, double* %6, align 8
  %24 = load double, double* %1, align 8
  %25 = load double, double* %2, align 8
  %26 = fmul double %24, %25
  store double %26, double* %7, align 8
  store double 5.200000e+01, double* %8, align 8
  %27 = load double, double* %8, align 8
  %28 = load double, double* %7, align 8
  %29 = fdiv double %27, %28
  store double %29, double* %9, align 8
  %30 = load double, double* %5, align 8
  %31 = fmul double 5.000000e+00, %30
  %32 = fdiv double %31, 5.000000e+00
  %33 = fadd double %32, 2.300000e+01
  %34 = load double, double* %7, align 8
  %35 = fmul double 6.000000e+00, %34
  %36 = fsub double %35, 4.200000e+01
  %37 = fdiv double 4.700000e+02, %36
  %38 = fsub double %33, %37
  store double %38, double* %10, align 8
  %39 = load double, double* %2, align 8
  %40 = fadd double 2.000000e+00, %39
  %41 = fmul double %40, 5.000000e+00
  store double %41, double* %11, align 8
  %42 = load double, double* %4, align 8
  %43 = fadd double %42, 2.000000e+01
  %44 = fadd double %43, 2.000000e+00
  %45 = load double, double* %6, align 8
  %46 = fdiv double 8.000000e+00, %45
  %47 = fmul double %46, 4.000000e+00
  %48 = fsub double %44, %47
  store double %48, double* %12, align 8
  store double 1.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 5.010000e+00, double* %15, align 8
  store double 5.010000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 6.000000e+01, double* %18, align 8
  %49 = load double, double* %1, align 8
  %50 = load double, double* %3, align 8
  %51 = load double, double* %5, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %7, align 8
  %54 = fsub double %52, %53
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  %57 = fadd double %49, %56
  %58 = load double, double* %11, align 8
  %59 = fadd double %57, %58
  %60 = load double, double* %13, align 8
  %61 = load double, double* %15, align 8
  %62 = fdiv double %60, %61
  %63 = load double, double* %17, align 8
  %64 = fmul double %62, %63
  %65 = fsub double %59, %64
  store double %65, double* %19, align 8
  %66 = load double, double* %1, align 8
  %67 = load double, double* %3, align 8
  %68 = load double, double* %5, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %7, align 8
  %71 = fsub double %69, %70
  %72 = load double, double* %9, align 8
  %73 = fmul double %71, %72
  %74 = fadd double %66, %73
  %75 = load double, double* %11, align 8
  %76 = fadd double %74, %75
  %77 = load double, double* %13, align 8
  %78 = load double, double* %15, align 8
  %79 = fdiv double %77, %78
  %80 = load double, double* %17, align 8
  %81 = fmul double %79, %80
  %82 = fsub double %76, %81
  store double %82, double* %20, align 8
  %83 = load double, double* %2, align 8
  %84 = load double, double* %12, align 8
  %85 = fadd double %83, %84
  %86 = fadd double %85, 4.300000e+01
  %87 = load double, double* %14, align 8
  %88 = load double, double* %16, align 8
  %89 = fdiv double %87, %88
  %90 = load double, double* %19, align 8
  %91 = fmul double %89, %90
  %92 = fsub double %86, %91
  store double %92, double* %21, align 8
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %94 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %95 = load double, double* %1, align 8
  call void @print_equality(double %95, double 1.200000e+00)
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  %97 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %98 = load double, double* %2, align 8
  call void @print_equality(double %98, double 1.300000e+00)
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  %100 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %101 = load double, double* %3, align 8
  call void @print_equality(double %101, double 1.400000e+00)
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %103 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %104 = load double, double* %4, align 8
  call void @print_equality(double %104, double 1.200000e+00)
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  %106 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %107 = load double, double* %5, align 8
  call void @print_equality(double %107, double 0x4066789E364BEC68)
  %108 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  %109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %110 = load double, double* %6, align 8
  call void @print_equality(double %110, double 0x40A0DA76A98244E9)
  %111 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  %112 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %113 = load double, double* %7, align 8
  call void @print_equality(double %113, double 1.560000e+00)
  %114 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  %115 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %116 = load double, double* %8, align 8
  call void @print_equality(double %116, double 5.200000e+01)
  %117 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 105)
  %118 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %119 = load double, double* %9, align 8
  call void @print_equality(double %119, double 0x4040AAAAA7DED6BB)
  %120 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 106)
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %122 = load double, double* %10, align 8
  call void @print_equality(double %122, double 0x406B2566FF7DFA01)
  %123 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 107)
  %124 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %125 = load double, double* %11, align 8
  call void @print_equality(double %125, double 1.650000e+01)
  %126 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  %127 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %128 = load double, double* %12, align 8
  call void @print_equality(double %128, double 0x40372F6709FA54C5)
  %129 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 109)
  %130 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %131 = load double, double* %13, align 8
  call void @print_equality(double %131, double 1.000000e+00)
  %132 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 110)
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %134 = load double, double* %14, align 8
  call void @print_equality(double %134, double 0.000000e+00)
  %135 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 111)
  %136 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %137 = load double, double* %15, align 8
  call void @print_equality(double %137, double 5.010000e+00)
  %138 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 112)
  %139 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %140 = load double, double* %16, align 8
  call void @print_equality(double %140, double 5.010000e+00)
  %141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 113)
  %142 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %143 = load double, double* %17, align 8
  call void @print_equality(double %143, double 0.000000e+00)
  %144 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 114)
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %146 = load double, double* %18, align 8
  call void @print_equality(double %146, double 6.000000e+01)
  %147 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 115)
  %148 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %149 = load double, double* %19, align 8
  call void @print_equality(double %149, double 0x40C05177A1EC4E72)
  %150 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 116)
  %151 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %152 = load double, double* %20, align 8
  call void @print_equality(double %152, double 0x40C05177A1EC4E72)
  %153 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 117)
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 32)
  %155 = load double, double* %21, align 8
  call void @print_equality(double %155, double 0x4050DF0CF5B1C865)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
