; ModuleID = '../tests/input/operators.c'
source_filename = "../tests/input/operators.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
