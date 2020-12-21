; ModuleID = '../tests/input/more_tests.c'
source_filename = "../tests/input/more_tests.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@cc = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @f() #0 {
  store i32 89, i32* @cc, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @error_in_C_problem() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 10, i8* %1, align 1
  store i8 -5, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 17476)
  %5 = load i8, i8* %1, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %0
  %8 = load i8, i8* %2, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

; <label>:14:                                     ; preds = %10, %7, %0
  %15 = phi i1 [ true, %7 ], [ true, %0 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  %18 = load i8, i8* %1, align 1
  %19 = icmp ne i8 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
  %23 = load i8, i8* %2, align 1
  %24 = icmp ne i8 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i8, i8* %2, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %14
  %31 = load i8, i8* %1, align 1
  %32 = icmp ne i8 %31, 0
  %33 = xor i1 %32, true
  br label %34

; <label>:34:                                     ; preds = %30, %14
  %35 = phi i1 [ true, %14 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
  %38 = load i8, i8* %1, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %34
  %41 = load i8, i8* %2, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

; <label>:46:                                     ; preds = %43, %40, %34
  br label %47

; <label>:47:                                     ; preds = %46, %43
  %48 = phi i1 [ false, %43 ], [ true, %46 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %49)
  %51 = load i8, i8* %1, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %59

; <label>:53:                                     ; preds = %47
  %54 = load i8, i8* %2, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

; <label>:59:                                     ; preds = %56, %53, %47
  %60 = load i8, i8* %2, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %66

; <label>:62:                                     ; preds = %59
  %63 = load i8, i8* %1, align 1
  %64 = icmp ne i8 %63, 0
  %65 = xor i1 %64, true
  br label %66

; <label>:66:                                     ; preds = %62, %59
  %67 = phi i1 [ true, %59 ], [ %65, %62 ]
  br label %68

; <label>:68:                                     ; preds = %66, %56
  %69 = phi i1 [ false, %56 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %70)
  %72 = load i8, i8* %1, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %68
  %75 = load i8, i8* %2, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

; <label>:80:                                     ; preds = %77, %74, %68
  %81 = load i8, i8* %2, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %87

; <label>:83:                                     ; preds = %80
  %84 = load i8, i8* %1, align 1
  %85 = icmp ne i8 %84, 0
  %86 = xor i1 %85, true
  br label %87

; <label>:87:                                     ; preds = %83, %80
  %88 = phi i1 [ true, %80 ], [ %86, %83 ]
  br label %89

; <label>:89:                                     ; preds = %87, %77
  %90 = phi i1 [ false, %77 ], [ %88, %87 ]
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %92)
  %94 = load i8, i8* %1, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %102

; <label>:96:                                     ; preds = %89
  %97 = load i8, i8* %2, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

; <label>:102:                                    ; preds = %99, %96, %89
  %103 = load i8, i8* %2, align 1
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %105, label %109

; <label>:105:                                    ; preds = %102
  %106 = load i8, i8* %1, align 1
  %107 = icmp ne i8 %106, 0
  %108 = xor i1 %107, true
  br label %109

; <label>:109:                                    ; preds = %105, %102
  %110 = phi i1 [ true, %102 ], [ %108, %105 ]
  br label %111

; <label>:111:                                    ; preds = %109, %99
  %112 = phi i1 [ false, %99 ], [ %110, %109 ]
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = add nsw i32 %114, 65
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %115)
  %117 = load i8, i8* %1, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

; <label>:120:                                    ; preds = %111
  %121 = load i8, i8* %2, align 1
  %122 = sext i8 %121 to i32
  %123 = add nsw i32 %122, 1
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %2, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

; <label>:127:                                    ; preds = %120
  %128 = load i32, i32* %3, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %146, label %130

; <label>:130:                                    ; preds = %127, %120, %111
  %131 = load i8, i8* %2, align 1
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %132, 4
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %2, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

; <label>:137:                                    ; preds = %130
  %138 = load i8, i8* %1, align 1
  %139 = sext i8 %138 to i32
  %140 = sub nsw i32 %139, 5
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %1, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

; <label>:144:                                    ; preds = %137, %130
  br i1 true, label %146, label %145

; <label>:145:                                    ; preds = %144
  store i32 -1, i32* %3, align 4
  br label %146

; <label>:146:                                    ; preds = %145, %144, %137, %127
  %147 = phi i1 [ true, %144 ], [ true, %137 ], [ true, %127 ], [ true, %145 ]
  %148 = zext i1 %147 to i32
  %149 = add nsw i32 %148, 65
  %150 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %149)
  %151 = load i8, i8* %1, align 1
  %152 = sext i8 %151 to i32
  %153 = add nsw i32 %152, 65
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %153)
  ret i32 0
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @error_in_D_problem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
  store i32 3, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = mul nsw i32 2, %12
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 2, %21
  store i32 %22, i32* %2, align 4
  %23 = sub nsw i32 %22, 5
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define signext i8 @nand(i8 signext, i8 signext) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12:                                     ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define signext i8 @nor(i8 signext, i8 signext) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12:                                     ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define i32 @random_tests() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 70, i32* @cc, align 4
  store double 1.200000e+00, double* %1, align 8
  store double 1.500000e+00, double* %2, align 8
  store double 1.250000e+00, double* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 65, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  store i32 6, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
  store i32 67, i32* %9, align 4
  call void @f()
  store i32 65, i32* %9, align 4
  br i1 true, label %16, label %22

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 88)
  %20 = load i32, i32* @cc, align 4
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  br label %26

; <label>:22:                                     ; preds = %0
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %26

; <label>:26:                                     ; preds = %22, %16
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %27)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @lol() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 10, i8* %1, align 1
  store i8 -5, i8* %2, align 1
  %4 = load i8, i8* %1, align 1
  %5 = icmp ne i8 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
  %9 = load i8, i8* %2, align 1
  %10 = icmp ne i8 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
  %14 = load i8, i8* %2, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %0
  %17 = load i8, i8* %1, align 1
  %18 = icmp ne i8 %17, 0
  %19 = xor i1 %18, true
  br label %20

; <label>:20:                                     ; preds = %16, %0
  %21 = phi i1 [ true, %0 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
  %25 = load i8, i8* %2, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %20
  %28 = load i8, i8* %1, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  br label %31

; <label>:31:                                     ; preds = %27, %20
  %32 = phi i1 [ false, %20 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
  %36 = load i8, i8* %2, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %31
  %39 = load i8, i8* %1, align 1
  %40 = icmp ne i8 %39, 0
  %41 = xor i1 %40, true
  br label %42

; <label>:42:                                     ; preds = %38, %31
  %43 = phi i1 [ true, %31 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
  %46 = load i8, i8* %2, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %42
  %49 = load i8, i8* %1, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %53, label %51

; <label>:51:                                     ; preds = %48, %42
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 116)
  br label %55

; <label>:53:                                     ; preds = %48
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %55

; <label>:55:                                     ; preds = %53, %51
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @lol()
  %3 = call i32 @error_in_C_problem()
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %5 = call i32 @error_in_D_problem()
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %7 = call signext i8 @nand(i8 signext 65, i8 signext 66)
  %8 = call signext i8 @nor(i8 signext 65, i8 signext 66)
  %9 = call i32 @random_tests()
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
