; ModuleID = '../tests/input/operators.c'
source_filename = "../tests/input/operators.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define signext i8 @aa(i8 signext) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define signext i16 @bb(i16 signext) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: nounwind uwtable
define i32 @cc(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define double @dd(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: nounwind uwtable
define i32 @arithmetic(double, double, double) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double 1.200000e+00, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fadd double %9, %10
  store double %11, double* %8, align 8
  %12 = load double, double* %5, align 8
  %13 = load double, double* %6, align 8
  %14 = fsub double %12, %13
  store double %14, double* %8, align 8
  %15 = load double, double* %5, align 8
  %16 = load double, double* %6, align 8
  %17 = fdiv double %15, %16
  store double %17, double* %8, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* %6, align 8
  %20 = fmul double %18, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %5, align 8
  %22 = load double, double* %6, align 8
  %23 = fadd double %21, %22
  %24 = load double, double* %7, align 8
  %25 = fadd double %23, %24
  store double %25, double* %8, align 8
  %26 = load double, double* %5, align 8
  %27 = load double, double* %6, align 8
  %28 = fsub double %26, %27
  %29 = load double, double* %7, align 8
  %30 = fsub double %28, %29
  store double %30, double* %8, align 8
  %31 = load double, double* %5, align 8
  %32 = load double, double* %6, align 8
  %33 = fdiv double %31, %32
  %34 = load double, double* %7, align 8
  %35 = fdiv double %33, %34
  store double %35, double* %8, align 8
  %36 = load double, double* %5, align 8
  %37 = load double, double* %6, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %7, align 8
  %40 = fmul double %38, %39
  store double %40, double* %8, align 8
  %41 = load double, double* %5, align 8
  %42 = load double, double* %6, align 8
  %43 = fsub double %41, %42
  %44 = load double, double* %7, align 8
  %45 = fadd double %43, %44
  store double %45, double* %8, align 8
  %46 = load double, double* %5, align 8
  %47 = load double, double* %6, align 8
  %48 = fadd double %46, %47
  %49 = load double, double* %7, align 8
  %50 = fsub double %48, %49
  store double %50, double* %8, align 8
  %51 = load double, double* %5, align 8
  %52 = load double, double* %6, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %7, align 8
  %55 = fdiv double %53, %54
  store double %55, double* %8, align 8
  %56 = load double, double* %5, align 8
  %57 = load double, double* %6, align 8
  %58 = fdiv double %56, %57
  %59 = load double, double* %7, align 8
  %60 = fmul double %58, %59
  store double %60, double* %8, align 8
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @arithmetic1(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double 1.300000e+00, double* %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = sitofp i32 %11 to double
  store double %12, double* %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sitofp i32 %15 to double
  store double %16, double* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  %20 = sitofp i32 %19 to double
  store double %20, double* %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sitofp i32 %23 to double
  store double %24, double* %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = sitofp i32 %29 to double
  store double %30, double* %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sitofp i32 %35 to double
  store double %36, double* %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = sdiv i32 %39, %40
  %42 = sitofp i32 %41 to double
  store double %42, double* %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  store double %48, double* %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  %54 = sitofp i32 %53 to double
  store double %54, double* %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sitofp i32 %59 to double
  store double %60, double* %8, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = sdiv i32 %63, %64
  %66 = sitofp i32 %65 to double
  store double %66, double* %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sitofp i32 %71 to double
  store double %72, double* %8, align 8
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i32 @arithmetic2(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %3
  br label %66

; <label>:66:                                     ; preds = %65, %3
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %66
  br label %72

; <label>:72:                                     ; preds = %71, %66
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %72
  br label %78

; <label>:78:                                     ; preds = %77, %72
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %78
  br label %84

; <label>:84:                                     ; preds = %83, %78
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %84
  br label %90

; <label>:90:                                     ; preds = %89, %84
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %90
  br label %96

; <label>:96:                                     ; preds = %95, %90
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %96
  br label %102

; <label>:102:                                    ; preds = %101, %96
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %102
  br label %108

; <label>:108:                                    ; preds = %107, %102
  br label %109

; <label>:109:                                    ; preds = %114, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

; <label>:114:                                    ; preds = %109
  br label %109

; <label>:115:                                    ; preds = %109
  br label %116

; <label>:116:                                    ; preds = %121, %115
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %116
  br label %116

; <label>:122:                                    ; preds = %116
  br label %123

; <label>:123:                                    ; preds = %128, %122
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sdiv i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %123
  br label %123

; <label>:129:                                    ; preds = %123
  br label %130

; <label>:130:                                    ; preds = %135, %129
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = mul nsw i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135:                                    ; preds = %130
  br label %130

; <label>:136:                                    ; preds = %130
  br label %137

; <label>:137:                                    ; preds = %142, %136
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %137
  br label %137

; <label>:143:                                    ; preds = %137
  br label %144

; <label>:144:                                    ; preds = %149, %143
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

; <label>:149:                                    ; preds = %144
  br label %144

; <label>:150:                                    ; preds = %144
  br label %151

; <label>:151:                                    ; preds = %156, %150
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = mul nsw i32 %152, %153
  store i32 %154, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156:                                    ; preds = %151
  br label %151

; <label>:157:                                    ; preds = %151
  br label %158

; <label>:158:                                    ; preds = %163, %157
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = sdiv i32 %159, %160
  store i32 %161, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %158
  br label %158

; <label>:164:                                    ; preds = %158
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: nounwind uwtable
define i32 @arithmetic3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32 1, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store double 1.410000e+00, double* %3, align 8
  store double 1.512000e+02, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* %3, align 8
  %9 = fadd double %7, %8
  store double %9, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = load double, double* %3, align 8
  %12 = fadd double %10, %11
  store double %12, double* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 39
  %23 = add nsw i32 %22, 66
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %24, %25
  %27 = sitofp i32 %26 to double
  %28 = load double, double* %3, align 8
  %29 = fadd double %27, %28
  %30 = load double, double* %4, align 8
  %31 = fadd double %29, %30
  store double %31, double* %5, align 8
  %32 = load double, double* %5, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sitofp i32 %33 to double
  %35 = fadd double %32, %34
  store double %35, double* %5, align 8
  %36 = load double, double* %5, align 8
  %37 = load double, double* %4, align 8
  %38 = fmul double %36, %37
  %39 = load i32, i32* %1, align 4
  %40 = sitofp i32 %39 to double
  %41 = fmul double %38, %40
  store double %41, double* %5, align 8
  %42 = load double, double* %3, align 8
  %43 = load double, double* %3, align 8
  %44 = fmul double %42, %43
  %45 = load i32, i32* %1, align 4
  %46 = sitofp i32 %45 to double
  %47 = fadd double %44, %46
  %48 = load double, double* %3, align 8
  %49 = load double, double* %4, align 8
  %50 = fmul double %48, %49
  %51 = fadd double %47, %50
  store double %51, double* %6, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sitofp i32 %52 to double
  %54 = load i32, i32* %1, align 4
  %55 = sitofp i32 %54 to double
  store double %55, double* %6, align 8
  %56 = fcmp oeq double %53, %55
  br i1 %56, label %57, label %71

; <label>:57:                                     ; preds = %0
  %58 = load i32, i32* %1, align 4
  %59 = sitofp i32 %58 to double
  %60 = load double, double* %4, align 8
  %61 = fadd double %59, %60
  %62 = call i32 @arithmetic3()
  %63 = call i32 @arithmetic3()
  %64 = add nsw i32 %62, %63
  %65 = sitofp i32 %64 to double
  %66 = fcmp une double %61, %65
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %57
  br label %70

; <label>:68:                                     ; preds = %57
  br label %69

; <label>:69:                                     ; preds = %68, %69
  br label %69

; <label>:70:                                     ; preds = %67
  br label %73

; <label>:71:                                     ; preds = %0
  br label %72

; <label>:72:                                     ; preds = %71, %72
  br label %72

; <label>:73:                                     ; preds = %70
  %74 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73
  br label %77

; <label>:77:                                     ; preds = %76, %73
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 0, %78
  %80 = sitofp i32 %79 to double
  %81 = load double, double* %4, align 8
  %82 = fadd double 0.000000e+00, %81
  %83 = fcmp une double %80, %82
  br i1 %83, label %84, label %103

; <label>:84:                                     ; preds = %77
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %1, align 4
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 0, %88
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %4, align 8
  %92 = fadd double 0.000000e+00, %91
  %93 = fcmp oeq double %90, %92
  br i1 %93, label %94, label %98

; <label>:94:                                     ; preds = %84
  %95 = load double, double* %3, align 8
  %96 = load double, double* %3, align 8
  %97 = fadd double %95, %96
  store double %97, double* %3, align 8
  br label %102

; <label>:98:                                     ; preds = %84
  %99 = load double, double* %3, align 8
  %100 = load double, double* %3, align 8
  %101 = fadd double %99, %100
  store double %101, double* %3, align 8
  br label %102

; <label>:102:                                    ; preds = %98, %94
  br label %106

; <label>:103:                                    ; preds = %77
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %106

; <label>:106:                                    ; preds = %103, %102
  %107 = load i32, i32* %1, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  ret i32 %111
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @just_adds(i8 signext, i8 signext, i16 signext, i16 signext, i32, i32, double, double) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i8 %0, i8* %10, align 1
  store i8 %1, i8* %11, align 1
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  %18 = load i8, i8* %10, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %10, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %19, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %10, align 1
  %24 = load i8, i8* %10, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %10, align 1
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %37, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %11, align 1
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
  %45 = load i8, i8* %11, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* %11, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %11, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %52)
  %54 = load i8, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = load i16, i16* %12, align 2
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %55, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %10, align 1
  %60 = load i8, i8* %10, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %61)
  %63 = load i8, i8* %10, align 1
  %64 = sext i8 %63 to i32
  %65 = load i16, i16* %13, align 2
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %64, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %10, align 1
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %70)
  %72 = load i8, i8* %10, align 1
  %73 = sext i8 %72 to i32
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %10, align 1
  %77 = load i8, i8* %10, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %78)
  %80 = load i8, i8* %10, align 1
  %81 = sext i8 %80 to i32
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %10, align 1
  %85 = load i8, i8* %10, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %86)
  %88 = load i16, i16* %12, align 2
  %89 = sext i16 %88 to i32
  %90 = load i8, i8* %10, align 1
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %89, %91
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %12, align 2
  %94 = load i16, i16* %12, align 2
  %95 = sext i16 %94 to i32
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %95)
  %97 = load i8, i8* %10, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %13, align 2
  %103 = load i16, i16* %13, align 2
  %104 = sext i16 %103 to i32
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %104)
  %106 = load i16, i16* %12, align 2
  %107 = sext i16 %106 to i32
  %108 = load i8, i8* %10, align 1
  %109 = sext i8 %108 to i32
  %110 = add nsw i32 %107, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %111)
  %113 = load i8, i8* %10, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* %10, align 1
  %116 = sext i8 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = sitofp i32 %117 to double
  store double %118, double* %16, align 8
  %119 = load i16, i16* %12, align 2
  %120 = sext i16 %119 to i32
  %121 = load i8, i8* %10, align 1
  %122 = sext i8 %121 to i32
  %123 = add nsw i32 %120, %122
  %124 = sitofp i32 %123 to double
  store double %124, double* %16, align 8
  %125 = load i8, i8* %10, align 1
  %126 = sext i8 %125 to i32
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  %129 = sitofp i32 %128 to double
  store double %129, double* %16, align 8
  %130 = load i8, i8* %10, align 1
  %131 = sext i8 %130 to i32
  %132 = sitofp i32 %131 to double
  %133 = load double, double* %17, align 8
  %134 = fadd double %132, %133
  store double %134, double* %17, align 8
  %135 = load double, double* %17, align 8
  %136 = load double, double* %17, align 8
  %137 = fadd double %135, %136
  store double %137, double* %17, align 8
  %138 = load i16, i16* %13, align 2
  %139 = sext i16 %138 to i32
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %139, %140
  %142 = sitofp i32 %141 to double
  store double %142, double* %16, align 8
  %143 = load i8, i8* %10, align 1
  %144 = call signext i8 @aa(i8 signext %143)
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* %11, align 1
  %147 = sext i8 %146 to i16
  %148 = call signext i16 @bb(i16 signext %147)
  %149 = sext i16 %148 to i32
  %150 = add nsw i32 %145, %149
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %10, align 1
  %152 = load i8, i8* %10, align 1
  %153 = sext i8 %152 to i32
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %153)
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @cc(i32 %155)
  %157 = load i8, i8* %10, align 1
  %158 = call signext i8 @aa(i8 signext %157)
  %159 = sext i8 %158 to i32
  %160 = add nsw i32 %156, %159
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %11, align 1
  %162 = load i8, i8* %11, align 1
  %163 = sext i8 %162 to i32
  %164 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %163)
  %165 = load i16, i16* %12, align 2
  %166 = call signext i16 @bb(i16 signext %165)
  %167 = sext i16 %166 to i32
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @cc(i32 %168)
  %170 = add nsw i32 %167, %169
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %10, align 1
  %172 = load i8, i8* %10, align 1
  %173 = sext i8 %172 to i32
  %174 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %173)
  %175 = load i8, i8* %10, align 1
  %176 = call signext i8 @aa(i8 signext %175)
  %177 = sext i8 %176 to i32
  %178 = load i8, i8* %10, align 1
  %179 = call signext i8 @aa(i8 signext %178)
  %180 = sext i8 %179 to i32
  %181 = add nsw i32 %177, %180
  %182 = trunc i32 %181 to i8
  %183 = call signext i8 @aa(i8 signext %182)
  %184 = sext i8 %183 to i32
  %185 = load i8, i8* %11, align 1
  %186 = sext i8 %185 to i16
  %187 = call signext i16 @bb(i16 signext %186)
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %184, %188
  %190 = load i8, i8* %10, align 1
  %191 = sext i8 %190 to i32
  %192 = call i32 @cc(i32 %191)
  %193 = add nsw i32 %189, %192
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %10, align 1
  %195 = load i8, i8* %10, align 1
  %196 = sext i8 %195 to i32
  %197 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %196)
  %198 = load i8, i8* %10, align 1
  %199 = sext i8 %198 to i32
  %200 = load i8, i8* %11, align 1
  %201 = sext i8 %200 to i32
  %202 = add nsw i32 %199, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %241

; <label>:204:                                    ; preds = %8
  %205 = load i8, i8* %11, align 1
  %206 = sext i8 %205 to i32
  %207 = load i16, i16* %12, align 2
  %208 = sext i16 %207 to i32
  %209 = add nsw i32 %206, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %240

; <label>:211:                                    ; preds = %204
  %212 = load i8, i8* %10, align 1
  %213 = sext i8 %212 to i32
  %214 = load i16, i16* %12, align 2
  %215 = sext i16 %214 to i32
  %216 = add nsw i32 %213, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %236

; <label>:218:                                    ; preds = %211
  %219 = load i8, i8* %10, align 1
  %220 = sext i8 %219 to i32
  %221 = load i16, i16* %13, align 2
  %222 = sext i16 %221 to i32
  %223 = add nsw i32 %220, %222
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

; <label>:227:                                    ; preds = %218
  %228 = load i8, i8* %10, align 1
  %229 = call signext i8 @aa(i8 signext %228)
  %230 = sext i8 %229 to i32
  store i32 %230, i32* %9, align 4
  br label %416

; <label>:231:                                    ; preds = %218
  %232 = load i8, i8* %11, align 1
  %233 = sext i8 %232 to i16
  %234 = call signext i16 @bb(i16 signext %233)
  %235 = sext i16 %234 to i32
  store i32 %235, i32* %9, align 4
  br label %416

; <label>:236:                                    ; preds = %211
  %237 = load i16, i16* %12, align 2
  %238 = sext i16 %237 to i32
  %239 = call i32 @cc(i32 %238)
  store i32 %239, i32* %9, align 4
  br label %416

; <label>:240:                                    ; preds = %204
  store i32 83, i32* %9, align 4
  br label %416

; <label>:241:                                    ; preds = %8
  %242 = load i8, i8* %10, align 1
  %243 = sext i8 %242 to i32
  %244 = load i8, i8* %11, align 1
  %245 = sext i8 %244 to i32
  %246 = add nsw i32 %243, %245
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %10, align 1
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %249, label %250

; <label>:249:                                    ; preds = %241
  br label %250

; <label>:250:                                    ; preds = %249, %241
  %251 = load i8, i8* %10, align 1
  %252 = sext i8 %251 to i32
  %253 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %252)
  %254 = load i32, i32* %14, align 4
  %255 = load i16, i16* %12, align 2
  %256 = sext i16 %255 to i32
  %257 = add nsw i32 %254, %256
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %10, align 1
  %259 = icmp ne i8 %258, 0
  br i1 %259, label %260, label %261

; <label>:260:                                    ; preds = %250
  br label %261

; <label>:261:                                    ; preds = %260, %250
  %262 = load i8, i8* %10, align 1
  %263 = sext i8 %262 to i32
  %264 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %263)
  %265 = load i8, i8* %10, align 1
  %266 = sext i8 %265 to i32
  %267 = load i8, i8* %11, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %266, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %14, align 4
  %272 = sitofp i32 %271 to double
  %273 = load double, double* %16, align 8
  %274 = fcmp ole double %272, %273
  %275 = zext i1 %274 to i32
  %276 = add nsw i32 %270, %275
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %10, align 1
  %278 = icmp ne i8 %277, 0
  br i1 %278, label %279, label %280

; <label>:279:                                    ; preds = %261
  br label %280

; <label>:280:                                    ; preds = %279, %261
  %281 = load i8, i8* %10, align 1
  %282 = sext i8 %281 to i32
  %283 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %282)
  %284 = load i8, i8* %11, align 1
  %285 = sext i8 %284 to i32
  %286 = load i8, i8* %10, align 1
  %287 = sext i8 %286 to i32
  %288 = load i8, i8* %10, align 1
  %289 = sext i8 %288 to i32
  %290 = add nsw i32 %287, %289
  %291 = icmp ne i32 %285, %290
  %292 = zext i1 %291 to i32
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %11, align 1
  %294 = icmp ne i8 %293, 0
  br i1 %294, label %295, label %296

; <label>:295:                                    ; preds = %280
  br label %296

; <label>:296:                                    ; preds = %295, %280
  %297 = load i8, i8* %11, align 1
  %298 = sext i8 %297 to i32
  %299 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %298)
  %300 = load i8, i8* %10, align 1
  %301 = sext i8 %300 to i32
  %302 = load i8, i8* %11, align 1
  %303 = sext i8 %302 to i32
  %304 = add nsw i32 %301, %303
  %305 = trunc i32 %304 to i16
  store i16 %305, i16* %12, align 2
  %306 = icmp ne i16 %305, 0
  br i1 %306, label %307, label %308

; <label>:307:                                    ; preds = %296
  br label %308

; <label>:308:                                    ; preds = %307, %296
  %309 = load i16, i16* %12, align 2
  %310 = sext i16 %309 to i32
  %311 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %310)
  %312 = load i16, i16* %12, align 2
  %313 = sext i16 %312 to i32
  %314 = load i16, i16* %13, align 2
  %315 = sext i16 %314 to i32
  %316 = add nsw i32 %313, %315
  store i32 %316, i32* %14, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

; <label>:318:                                    ; preds = %308
  br label %319

; <label>:319:                                    ; preds = %318, %308
  %320 = load i32, i32* %14, align 4
  %321 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %320)
  br label %322

; <label>:322:                                    ; preds = %327, %319
  %323 = load double, double* %16, align 8
  %324 = load double, double* %17, align 8
  %325 = fcmp une double %323, %324
  %326 = zext i1 %325 to i32
  store i32 %326, i32* %14, align 4
  br i1 %325, label %327, label %328

; <label>:327:                                    ; preds = %322
  br label %322

; <label>:328:                                    ; preds = %322
  %329 = load i8, i8* %10, align 1
  %330 = sext i8 %329 to i32
  %331 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %330)
  br label %332

; <label>:332:                                    ; preds = %340, %328
  %333 = load i8, i8* %10, align 1
  %334 = sext i8 %333 to i32
  %335 = load i8, i8* %11, align 1
  %336 = sext i8 %335 to i32
  %337 = add nsw i32 %334, %336
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %10, align 1
  %339 = icmp ne i8 %338, 0
  br i1 %339, label %340, label %341

; <label>:340:                                    ; preds = %332
  br label %332

; <label>:341:                                    ; preds = %332
  %342 = load i8, i8* %10, align 1
  %343 = sext i8 %342 to i32
  %344 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %343)
  br label %345

; <label>:345:                                    ; preds = %352, %341
  %346 = load i32, i32* %14, align 4
  %347 = load i16, i16* %12, align 2
  %348 = sext i16 %347 to i32
  %349 = add nsw i32 %346, %348
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %10, align 1
  %351 = icmp ne i8 %350, 0
  br i1 %351, label %352, label %353

; <label>:352:                                    ; preds = %345
  br label %345

; <label>:353:                                    ; preds = %345
  %354 = load i8, i8* %10, align 1
  %355 = sext i8 %354 to i32
  %356 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %355)
  br label %357

; <label>:357:                                    ; preds = %372, %353
  %358 = load i8, i8* %10, align 1
  %359 = sext i8 %358 to i32
  %360 = load i8, i8* %11, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %359, %361
  %363 = zext i1 %362 to i32
  %364 = load i32, i32* %14, align 4
  %365 = sitofp i32 %364 to double
  %366 = load double, double* %16, align 8
  %367 = fcmp ole double %365, %366
  %368 = zext i1 %367 to i32
  %369 = add nsw i32 %363, %368
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %10, align 1
  %371 = icmp ne i8 %370, 0
  br i1 %371, label %372, label %373

; <label>:372:                                    ; preds = %357
  br label %357

; <label>:373:                                    ; preds = %357
  %374 = load i8, i8* %10, align 1
  %375 = sext i8 %374 to i32
  %376 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %375)
  br label %377

; <label>:377:                                    ; preds = %389, %373
  %378 = load i8, i8* %11, align 1
  %379 = sext i8 %378 to i32
  %380 = load i8, i8* %10, align 1
  %381 = sext i8 %380 to i32
  %382 = load i8, i8* %10, align 1
  %383 = sext i8 %382 to i32
  %384 = add nsw i32 %381, %383
  %385 = icmp ne i32 %379, %384
  %386 = zext i1 %385 to i32
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %11, align 1
  %388 = icmp ne i8 %387, 0
  br i1 %388, label %389, label %390

; <label>:389:                                    ; preds = %377
  br label %377

; <label>:390:                                    ; preds = %377
  %391 = load i8, i8* %11, align 1
  %392 = sext i8 %391 to i32
  %393 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %392)
  br label %394

; <label>:394:                                    ; preds = %402, %390
  %395 = load i8, i8* %10, align 1
  %396 = sext i8 %395 to i32
  %397 = load i8, i8* %11, align 1
  %398 = sext i8 %397 to i32
  %399 = add nsw i32 %396, %398
  %400 = trunc i32 %399 to i16
  store i16 %400, i16* %12, align 2
  %401 = icmp ne i16 %400, 0
  br i1 %401, label %402, label %403

; <label>:402:                                    ; preds = %394
  br label %394

; <label>:403:                                    ; preds = %394
  %404 = load i16, i16* %12, align 2
  %405 = sext i16 %404 to i32
  %406 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %405)
  br label %407

; <label>:407:                                    ; preds = %414, %403
  %408 = load i16, i16* %12, align 2
  %409 = sext i16 %408 to i32
  %410 = load i16, i16* %13, align 2
  %411 = sext i16 %410 to i32
  %412 = add nsw i32 %409, %411
  store i32 %412, i32* %14, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

; <label>:414:                                    ; preds = %407
  br label %407

; <label>:415:                                    ; preds = %407
  store i32 39, i32* %9, align 4
  br label %416

; <label>:416:                                    ; preds = %415, %240, %236, %231, %227
  %417 = load i32, i32* %9, align 4
  ret i32 %417
}

; Function Attrs: nounwind uwtable
define i32 @relational(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oeq double %5, %6
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load double, double* %3, align 8
  %11 = load double, double* %4, align 8
  %12 = fcmp ogt double %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load double, double* %3, align 8
  %16 = load double, double* %4, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  br label %19

; <label>:19:                                     ; preds = %18, %14
  %20 = load double, double* %3, align 8
  %21 = load double, double* %4, align 8
  %22 = fcmp oge double %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %19
  br label %24

; <label>:24:                                     ; preds = %23, %19
  %25 = load double, double* %3, align 8
  %26 = load double, double* %4, align 8
  %27 = fcmp ole double %25, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %24
  br label %29

; <label>:29:                                     ; preds = %28, %24
  %30 = load double, double* %3, align 8
  %31 = load double, double* %4, align 8
  %32 = fcmp une double %30, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %33, %29
  br label %35

; <label>:35:                                     ; preds = %39, %34
  %36 = load double, double* %3, align 8
  %37 = load double, double* %4, align 8
  %38 = fcmp oeq double %36, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  br label %35

; <label>:40:                                     ; preds = %35
  br label %41

; <label>:41:                                     ; preds = %45, %40
  %42 = load double, double* %3, align 8
  %43 = load double, double* %4, align 8
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %41
  br label %41

; <label>:46:                                     ; preds = %41
  br label %47

; <label>:47:                                     ; preds = %51, %46
  %48 = load double, double* %3, align 8
  %49 = load double, double* %4, align 8
  %50 = fcmp olt double %48, %49
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %47
  br label %47

; <label>:52:                                     ; preds = %47
  br label %53

; <label>:53:                                     ; preds = %57, %52
  %54 = load double, double* %3, align 8
  %55 = load double, double* %4, align 8
  %56 = fcmp oge double %54, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  br label %53

; <label>:58:                                     ; preds = %53
  br label %59

; <label>:59:                                     ; preds = %63, %58
  %60 = load double, double* %3, align 8
  %61 = load double, double* %4, align 8
  %62 = fcmp ole double %60, %61
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %59
  br label %59

; <label>:64:                                     ; preds = %59
  br label %65

; <label>:65:                                     ; preds = %69, %64
  %66 = load double, double* %3, align 8
  %67 = load double, double* %4, align 8
  %68 = fcmp une double %66, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %65
  br label %65

; <label>:70:                                     ; preds = %65
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @relational2(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  br label %19

; <label>:19:                                     ; preds = %18, %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %19
  br label %24

; <label>:24:                                     ; preds = %23, %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %24
  br label %29

; <label>:29:                                     ; preds = %28, %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %33, %29
  br label %35

; <label>:35:                                     ; preds = %39, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  br label %35

; <label>:40:                                     ; preds = %35
  br label %41

; <label>:41:                                     ; preds = %45, %40
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %41
  br label %41

; <label>:46:                                     ; preds = %41
  br label %47

; <label>:47:                                     ; preds = %51, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %47
  br label %47

; <label>:52:                                     ; preds = %47
  br label %53

; <label>:53:                                     ; preds = %57, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  br label %53

; <label>:58:                                     ; preds = %53
  br label %59

; <label>:59:                                     ; preds = %63, %58
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %59
  br label %59

; <label>:64:                                     ; preds = %59
  br label %65

; <label>:65:                                     ; preds = %69, %64
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %65
  br label %65

; <label>:70:                                     ; preds = %65
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @relational3(double, double, double) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* %5, align 8
  %9 = fcmp oeq double %7, %8
  %10 = zext i1 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = load double, double* %6, align 8
  %13 = fcmp oeq double %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  br label %15

; <label>:15:                                     ; preds = %14, %3
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = fcmp ogt double %16, %17
  %19 = zext i1 %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = load double, double* %6, align 8
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %15
  br label %24

; <label>:24:                                     ; preds = %23, %15
  %25 = load double, double* %4, align 8
  %26 = load double, double* %5, align 8
  %27 = fcmp olt double %25, %26
  %28 = zext i1 %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = load double, double* %6, align 8
  %31 = fcmp olt double %29, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %24
  br label %33

; <label>:33:                                     ; preds = %32, %24
  %34 = load double, double* %4, align 8
  %35 = load double, double* %5, align 8
  %36 = fcmp oge double %34, %35
  %37 = zext i1 %36 to i32
  %38 = sitofp i32 %37 to double
  %39 = load double, double* %6, align 8
  %40 = fcmp oge double %38, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %33
  br label %42

; <label>:42:                                     ; preds = %41, %33
  %43 = load double, double* %4, align 8
  %44 = load double, double* %5, align 8
  %45 = load double, double* %6, align 8
  %46 = fcmp ole double %44, %45
  %47 = zext i1 %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fcmp ole double %43, %48
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %42
  br label %51

; <label>:51:                                     ; preds = %50, %42
  %52 = load double, double* %4, align 8
  %53 = load double, double* %5, align 8
  %54 = load double, double* %6, align 8
  %55 = fcmp une double %53, %54
  %56 = zext i1 %55 to i32
  %57 = sitofp i32 %56 to double
  %58 = fcmp une double %52, %57
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %51
  br label %60

; <label>:60:                                     ; preds = %59, %51
  br label %61

; <label>:61:                                     ; preds = %69, %60
  %62 = load double, double* %4, align 8
  %63 = load double, double* %5, align 8
  %64 = fcmp oeq double %62, %63
  %65 = zext i1 %64 to i32
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %6, align 8
  %68 = fcmp oeq double %66, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %61
  br label %61

; <label>:70:                                     ; preds = %61
  br label %71

; <label>:71:                                     ; preds = %79, %70
  %72 = load double, double* %4, align 8
  %73 = load double, double* %5, align 8
  %74 = fcmp ogt double %72, %73
  %75 = zext i1 %74 to i32
  %76 = sitofp i32 %75 to double
  %77 = load double, double* %6, align 8
  %78 = fcmp ogt double %76, %77
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %71
  br label %71

; <label>:80:                                     ; preds = %71
  br label %81

; <label>:81:                                     ; preds = %89, %80
  %82 = load double, double* %4, align 8
  %83 = load double, double* %5, align 8
  %84 = fcmp olt double %82, %83
  %85 = zext i1 %84 to i32
  %86 = sitofp i32 %85 to double
  %87 = load double, double* %6, align 8
  %88 = fcmp olt double %86, %87
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %81
  br label %81

; <label>:90:                                     ; preds = %81
  br label %91

; <label>:91:                                     ; preds = %99, %90
  %92 = load double, double* %4, align 8
  %93 = load double, double* %5, align 8
  %94 = fcmp oge double %92, %93
  %95 = zext i1 %94 to i32
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %6, align 8
  %98 = fcmp oge double %96, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %91
  br label %91

; <label>:100:                                    ; preds = %91
  br label %101

; <label>:101:                                    ; preds = %109, %100
  %102 = load double, double* %4, align 8
  %103 = load double, double* %5, align 8
  %104 = load double, double* %6, align 8
  %105 = fcmp ole double %103, %104
  %106 = zext i1 %105 to i32
  %107 = sitofp i32 %106 to double
  %108 = fcmp ole double %102, %107
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %101
  br label %101

; <label>:110:                                    ; preds = %101
  br label %111

; <label>:111:                                    ; preds = %119, %110
  %112 = load double, double* %4, align 8
  %113 = load double, double* %5, align 8
  %114 = load double, double* %6, align 8
  %115 = fcmp une double %113, %114
  %116 = zext i1 %115 to i32
  %117 = sitofp i32 %116 to double
  %118 = fcmp une double %112, %117
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %111
  br label %111

; <label>:120:                                    ; preds = %111
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @relational4(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  br label %14

; <label>:14:                                     ; preds = %13, %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %14
  br label %22

; <label>:22:                                     ; preds = %21, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  br label %30

; <label>:30:                                     ; preds = %29, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %30
  br label %38

; <label>:38:                                     ; preds = %37, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = icmp sle i32 %39, %43
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %38
  br label %46

; <label>:46:                                     ; preds = %45, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %46
  br label %54

; <label>:54:                                     ; preds = %53, %46
  br label %55

; <label>:55:                                     ; preds = %62, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %55
  br label %55

; <label>:63:                                     ; preds = %55
  br label %64

; <label>:64:                                     ; preds = %71, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp sgt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %64
  br label %64

; <label>:72:                                     ; preds = %64
  br label %73

; <label>:73:                                     ; preds = %80, %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %73
  br label %73

; <label>:81:                                     ; preds = %73
  br label %82

; <label>:82:                                     ; preds = %89, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp sge i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %82
  br label %82

; <label>:90:                                     ; preds = %82
  br label %91

; <label>:91:                                     ; preds = %98, %90
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp sle i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = icmp sle i32 %92, %96
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %91
  br label %91

; <label>:99:                                     ; preds = %91
  br label %100

; <label>:100:                                    ; preds = %107, %99
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %100
  br label %100

; <label>:108:                                    ; preds = %100
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @relational5(i32, double, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sitofp i32 %7 to double
  %9 = load double, double* %5, align 8
  %10 = fcmp oeq double %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  br label %15

; <label>:15:                                     ; preds = %14, %3
  %16 = load i32, i32* %4, align 4
  %17 = sitofp i32 %16 to double
  %18 = load double, double* %5, align 8
  %19 = fcmp ogt double %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %15
  br label %24

; <label>:24:                                     ; preds = %23, %15
  %25 = load i32, i32* %4, align 4
  %26 = sitofp i32 %25 to double
  %27 = load double, double* %5, align 8
  %28 = fcmp olt double %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %24
  br label %33

; <label>:33:                                     ; preds = %32, %24
  %34 = load i32, i32* %4, align 4
  %35 = sitofp i32 %34 to double
  %36 = load double, double* %5, align 8
  %37 = fcmp oge double %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %33
  br label %42

; <label>:42:                                     ; preds = %41, %33
  %43 = load i32, i32* %4, align 4
  %44 = load double, double* %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sitofp i32 %45 to double
  %47 = fcmp ole double %44, %46
  %48 = zext i1 %47 to i32
  %49 = icmp sle i32 %43, %48
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %42
  br label %51

; <label>:51:                                     ; preds = %50, %42
  %52 = load i32, i32* %4, align 4
  %53 = load double, double* %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sitofp i32 %54 to double
  %56 = fcmp une double %53, %55
  %57 = zext i1 %56 to i32
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %51
  br label %60

; <label>:60:                                     ; preds = %59, %51
  br label %61

; <label>:61:                                     ; preds = %69, %60
  %62 = load i32, i32* %4, align 4
  %63 = sitofp i32 %62 to double
  %64 = load double, double* %5, align 8
  %65 = fcmp oeq double %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %61
  br label %61

; <label>:70:                                     ; preds = %61
  br label %71

; <label>:71:                                     ; preds = %79, %70
  %72 = load i32, i32* %4, align 4
  %73 = sitofp i32 %72 to double
  %74 = load double, double* %5, align 8
  %75 = fcmp ogt double %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %71
  br label %71

; <label>:80:                                     ; preds = %71
  br label %81

; <label>:81:                                     ; preds = %89, %80
  %82 = load i32, i32* %4, align 4
  %83 = sitofp i32 %82 to double
  %84 = load double, double* %5, align 8
  %85 = fcmp olt double %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %81
  br label %81

; <label>:90:                                     ; preds = %81
  br label %91

; <label>:91:                                     ; preds = %99, %90
  %92 = load i32, i32* %4, align 4
  %93 = sitofp i32 %92 to double
  %94 = load double, double* %5, align 8
  %95 = fcmp oge double %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %91
  br label %91

; <label>:100:                                    ; preds = %91
  br label %101

; <label>:101:                                    ; preds = %109, %100
  %102 = load i32, i32* %4, align 4
  %103 = load double, double* %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sitofp i32 %104 to double
  %106 = fcmp ole double %103, %105
  %107 = zext i1 %106 to i32
  %108 = icmp sle i32 %102, %107
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %101
  br label %101

; <label>:110:                                    ; preds = %101
  br label %111

; <label>:111:                                    ; preds = %119, %110
  %112 = load i32, i32* %4, align 4
  %113 = load double, double* %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sitofp i32 %114 to double
  %116 = fcmp une double %113, %115
  %117 = zext i1 %116 to i32
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %111
  br label %111

; <label>:120:                                    ; preds = %111
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @relational6(double, double, double) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* %5, align 8
  %9 = fcmp oeq double %7, %8
  %10 = zext i1 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = load double, double* %6, align 8
  %13 = fcmp oeq double %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  br label %15

; <label>:15:                                     ; preds = %14, %3
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = fcmp ogt double %16, %17
  %19 = zext i1 %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = load double, double* %6, align 8
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %15
  br label %24

; <label>:24:                                     ; preds = %23, %15
  %25 = load double, double* %4, align 8
  %26 = load double, double* %5, align 8
  %27 = fcmp olt double %25, %26
  %28 = zext i1 %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = load double, double* %6, align 8
  %31 = fcmp olt double %29, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %24
  br label %33

; <label>:33:                                     ; preds = %32, %24
  %34 = load double, double* %4, align 8
  %35 = load double, double* %5, align 8
  %36 = fcmp oge double %34, %35
  %37 = zext i1 %36 to i32
  %38 = sitofp i32 %37 to double
  %39 = load double, double* %6, align 8
  %40 = fcmp oge double %38, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %33
  br label %42

; <label>:42:                                     ; preds = %41, %33
  %43 = load double, double* %4, align 8
  %44 = load double, double* %5, align 8
  %45 = load double, double* %6, align 8
  %46 = fcmp ole double %44, %45
  %47 = zext i1 %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fcmp ole double %43, %48
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %42
  br label %51

; <label>:51:                                     ; preds = %50, %42
  %52 = load double, double* %4, align 8
  %53 = load double, double* %5, align 8
  %54 = load double, double* %6, align 8
  %55 = fcmp une double %53, %54
  %56 = zext i1 %55 to i32
  %57 = sitofp i32 %56 to double
  %58 = fcmp une double %52, %57
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %51
  br label %60

; <label>:60:                                     ; preds = %59, %51
  br label %61

; <label>:61:                                     ; preds = %69, %60
  %62 = load double, double* %4, align 8
  %63 = load double, double* %5, align 8
  %64 = fcmp oeq double %62, %63
  %65 = zext i1 %64 to i32
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %6, align 8
  %68 = fcmp oeq double %66, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %61
  br label %61

; <label>:70:                                     ; preds = %61
  br label %71

; <label>:71:                                     ; preds = %79, %70
  %72 = load double, double* %4, align 8
  %73 = load double, double* %5, align 8
  %74 = fcmp ogt double %72, %73
  %75 = zext i1 %74 to i32
  %76 = sitofp i32 %75 to double
  %77 = load double, double* %6, align 8
  %78 = fcmp ogt double %76, %77
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %71
  br label %71

; <label>:80:                                     ; preds = %71
  br label %81

; <label>:81:                                     ; preds = %89, %80
  %82 = load double, double* %4, align 8
  %83 = load double, double* %5, align 8
  %84 = fcmp olt double %82, %83
  %85 = zext i1 %84 to i32
  %86 = sitofp i32 %85 to double
  %87 = load double, double* %6, align 8
  %88 = fcmp olt double %86, %87
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %81
  br label %81

; <label>:90:                                     ; preds = %81
  br label %91

; <label>:91:                                     ; preds = %99, %90
  %92 = load double, double* %4, align 8
  %93 = load double, double* %5, align 8
  %94 = fcmp oge double %92, %93
  %95 = zext i1 %94 to i32
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %6, align 8
  %98 = fcmp oge double %96, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %91
  br label %91

; <label>:100:                                    ; preds = %91
  br label %101

; <label>:101:                                    ; preds = %109, %100
  %102 = load double, double* %4, align 8
  %103 = load double, double* %5, align 8
  %104 = load double, double* %6, align 8
  %105 = fcmp ole double %103, %104
  %106 = zext i1 %105 to i32
  %107 = sitofp i32 %106 to double
  %108 = fcmp ole double %102, %107
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %101
  br label %101

; <label>:110:                                    ; preds = %101
  br label %111

; <label>:111:                                    ; preds = %119, %110
  %112 = load double, double* %4, align 8
  %113 = load double, double* %5, align 8
  %114 = load double, double* %6, align 8
  %115 = fcmp une double %113, %114
  %116 = zext i1 %115 to i32
  %117 = sitofp i32 %116 to double
  %118 = fcmp une double %112, %117
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %111
  br label %111

; <label>:120:                                    ; preds = %111
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
