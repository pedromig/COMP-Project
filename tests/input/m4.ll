; ModuleID = '../tests/input/m4.c'
source_filename = "../tests/input/m4.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@aaa = global i32 1, align 4
@g1 = global i32 0, align 4
@g2 = global i32 0, align 4
@a = global i32 2, align 4
@g3 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define double @le_double() #0 {
  ret double 2.000000e+00
}

; Function Attrs: nounwind uwtable
define i32 @w1() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %0
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @w2() #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @w() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 10, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %26

; <label>:7:                                      ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  br label %10

; <label>:10:                                     ; preds = %24, %7
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %17

; <label>:17:                                     ; preds = %21, %14
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %17

; <label>:24:                                     ; preds = %17
  br label %10

; <label>:25:                                     ; preds = %10
  br label %3

; <label>:26:                                     ; preds = %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @relf() #0 {
  %1 = alloca i32, align 4
  ret i32 100
}

; Function Attrs: nounwind uwtable
define i32 @meeeh() #0 {
  %1 = alloca i32, align 4
  ret i32 100
}

; Function Attrs: nounwind uwtable
define i32 @flow() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @flow2(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  store i32 3, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %7, %2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @shapo() #0 {
  ret i32 100
}

; Function Attrs: nounwind uwtable
define i32 @AND() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @aaa, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %20, label %6

; <label>:6:                                      ; preds = %0
  %7 = call i32 @meeeh()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %6
  %10 = call i32 @shapo()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %9
  %13 = call i32 @meeeh()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = call i32 @shapo()
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18:                                     ; preds = %15, %12, %9, %6
  %19 = phi i1 [ false, %12 ], [ false, %9 ], [ false, %6 ], [ %17, %15 ]
  br label %20

; <label>:20:                                     ; preds = %18, %0
  %21 = phi i1 [ true, %0 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @aaa, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

; <label>:25:                                     ; preds = %20
  %26 = call i32 @meeeh()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

; <label>:28:                                     ; preds = %25
  %29 = call i32 @shapo()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %28
  %32 = call i32 @meeeh()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = call i32 @shapo()
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %34, %31, %28, %25
  %38 = phi i1 [ false, %31 ], [ false, %28 ], [ false, %25 ], [ %36, %34 ]
  br label %39

; <label>:39:                                     ; preds = %37, %20
  %40 = phi i1 [ true, %20 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  %42 = call i32 @relf()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %39
  %45 = call i32 @meeeh()
  %46 = icmp ne i32 %45, 0
  br label %47

; <label>:47:                                     ; preds = %44, %39
  %48 = phi i1 [ false, %39 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @OR() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @aaa, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %18, label %4

; <label>:4:                                      ; preds = %0
  %5 = call i32 @meeeh()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = call i32 @shapo()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %7
  %11 = call i32 @meeeh()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  %14 = call i32 @shapo()
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %13, %10, %7, %4
  %17 = phi i1 [ false, %10 ], [ false, %7 ], [ false, %4 ], [ %15, %13 ]
  br label %18

; <label>:18:                                     ; preds = %16, %0
  %19 = phi i1 [ true, %0 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @XOR() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @rel() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @relf()
  %3 = call i32 @meeeh()
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %0
  br label %6

; <label>:6:                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @f2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  ret i32 105
}

; Function Attrs: nounwind uwtable
define i32 @f3(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 105, %5
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @boo(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %14 = call i32 @boo(i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %0
  %17 = call i32 @boo(i32 2)
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %16, %0
  %20 = phi i1 [ true, %0 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  call void @rel()
  store i32 10, i32* %2, align 4
  store i8 44, i8* %3, align 1
  %22 = call i32 @f3(i32 1, double 1.100000e+00)
  store i32 %22, i32* %4, align 4
  store i32 101, i32* %4, align 4
  store i16 113, i16* %5, align 2
  store i8 93, i8* %6, align 1
  store double 2.100000e+00, double* %7, align 8
  store double 2.200000e+00, double* %8, align 8
  %23 = call i32 @boo(i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %19
  %26 = call i32 @boo(i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %25
  %29 = call i32 @boo(i32 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28, %25, %19
  %32 = call i32 @boo(i32 2)
  %33 = icmp ne i32 %32, 0
  br label %34

; <label>:34:                                     ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = fadd double 2.000000e+02, %37
  store double %38, double* %9, align 8
  %39 = call i32 @f2(i32 2)
  %40 = sitofp i32 %39 to double
  store double %40, double* %7, align 8
  store double 1.000000e+00, double* %7, align 8
  store i16 1, i16* %5, align 2
  store i8 1, i8* %6, align 1
  %41 = call i32 @boo(i32 72)
  %42 = sub nsw i32 0, %41
  %43 = sub nsw i32 0, %42
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = and i32 33, %46
  %48 = sub nsw i32 0, %47
  %49 = sub nsw i32 0, %48
  %50 = sub nsw i32 0, %49
  %51 = mul nsw i32 3, %50
  %52 = add nsw i32 1, %51
  %53 = add nsw i32 %52, 4
  %54 = add nsw i32 %53, 6
  %55 = add nsw i32 %54, 43
  %56 = add nsw i32 %55, 11058
  store i32 %56, i32* %10, align 4
  store i32 97, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %57)
  store i32 99, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %59)
  store i32 100, i32* %2, align 4
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %62 = call i32 @f1(i32 10, double 3.000000e+00)
  %63 = call i32 @boo(i32 99)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
  %66 = call i32 @boo(i32 99)
  %67 = add nsw i32 %66, 10
  %68 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %67)
  %69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %70 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %71 = call i32 @f2(i32 1)
  %72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
  %73 = call i32 @f3(i32 -1, double 1.100000e+00)
  %74 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %73)
  %75 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 90)
  %76 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 9)
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 39)
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 34)
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 92)
  %80 = load i32, i32* %2, align 4
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %80)
  %82 = load i8, i8* %3, align 1
  %83 = sext i8 %82 to i32
  %84 = add nsw i32 %83, 1
  %85 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 0
  %88 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %87)
  %89 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 64)
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %91 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %92 = load i8, i8* %3, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 1
  %95 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %94)
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  %97 = call i32 @boo(i32 0)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %34
  %100 = call i32 @boo(i32 0)
  %101 = icmp ne i32 %100, 0
  br label %102

; <label>:102:                                    ; preds = %99, %34
  %103 = phi i1 [ false, %34 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  %105 = add nsw i32 97, %104
  %106 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %105)
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sitofp i32 %109 to double
  store double %110, double* %12, align 8
  %111 = call i32 @boo(i32 1)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %134

; <label>:113:                                    ; preds = %102
  %114 = call i32 @boo(i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

; <label>:116:                                    ; preds = %113
  %117 = call i32 @boo(i32 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

; <label>:119:                                    ; preds = %116
  %120 = call i32 @boo(i32 2)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %119
  %123 = call i32 @boo(i32 1)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

; <label>:125:                                    ; preds = %122
  %126 = call i32 @boo(i32 2)
  %127 = icmp ne i32 %126, 0
  br label %128

; <label>:128:                                    ; preds = %125, %122
  %129 = phi i1 [ true, %122 ], [ %127, %125 ]
  br label %130

; <label>:130:                                    ; preds = %128, %119
  %131 = phi i1 [ false, %119 ], [ %129, %128 ]
  br label %132

; <label>:132:                                    ; preds = %130, %116
  %133 = phi i1 [ true, %116 ], [ %131, %130 ]
  br label %134

; <label>:134:                                    ; preds = %132, %113, %102
  %135 = phi i1 [ false, %113 ], [ false, %102 ], [ %133, %132 ]
  %136 = zext i1 %135 to i32
  %137 = add nsw i32 96, %136
  %138 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %137)
  %139 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 49)
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 5064)
  %141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 75)
  %142 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %143 = call i32 @boo(i32 104)
  %144 = call i32 @relf()
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  store i32 0, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = mul nsw i32 %146, -1
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* @g2, align 4
  %149 = load i32, i32* @g1, align 4
  %150 = add nsw i32 %148, %149
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %191

; <label>:152:                                    ; preds = %134
  store i32 1, i32* @g3, align 4
  %153 = call i32 @meeeh()
  %154 = call i32 @relf()
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* @g1, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* @aaa, align 4
  %161 = icmp ne i32 %160, 0
  br label %162

; <label>:162:                                    ; preds = %159, %156, %152
  %163 = phi i1 [ false, %156 ], [ false, %152 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = icmp ne i32 %153, %164
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %162
  %167 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  store i32 1, i32* @g3, align 4
  br label %170

; <label>:168:                                    ; preds = %162
  %169 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  store i32 1, i32* @g3, align 4
  %172 = call i32 @meeeh()
  %173 = call i32 @relf()
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

; <label>:175:                                    ; preds = %170
  %176 = load i32, i32* @g1, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* @aaa, align 4
  %180 = icmp ne i32 %179, 0
  br label %181

; <label>:181:                                    ; preds = %178, %175, %170
  %182 = phi i1 [ false, %175 ], [ false, %170 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  %184 = icmp ne i32 %172, %183
  br i1 %184, label %185, label %187

; <label>:185:                                    ; preds = %181
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  store i32 1, i32* @g3, align 4
  br label %189

; <label>:187:                                    ; preds = %181
  %188 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 105)
  br label %189

; <label>:189:                                    ; preds = %187, %185
  %190 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 106)
  br label %193

; <label>:191:                                    ; preds = %134
  %192 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 107)
  store i32 1, i32* @g2, align 4
  br label %193

; <label>:193:                                    ; preds = %191, %189
  %194 = call i32 @boo(i32 1)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %208

; <label>:196:                                    ; preds = %193
  %197 = call i32 @boo(i32 2)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

; <label>:199:                                    ; preds = %196
  %200 = call i32 @boo(i32 3)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

; <label>:202:                                    ; preds = %199
  %203 = call i32 @boo(i32 10)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

; <label>:205:                                    ; preds = %202
  %206 = call i32 @boo(i32 40)
  %207 = icmp ne i32 %206, 0
  br label %208

; <label>:208:                                    ; preds = %205, %202, %199, %196, %193
  %209 = phi i1 [ false, %202 ], [ false, %199 ], [ false, %196 ], [ false, %193 ], [ %207, %205 ]
  %210 = zext i1 %209 to i32
  br label %211

; <label>:211:                                    ; preds = %237, %208
  %212 = call i32 @boo(i32 90)
  %213 = add nsw i32 %212, 1
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

; <label>:215:                                    ; preds = %211
  %216 = call i32 @boo(i32 30)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

; <label>:218:                                    ; preds = %215
  %219 = call i32 @boo(i32 60)
  %220 = icmp ne i32 %219, 0
  br label %221

; <label>:221:                                    ; preds = %218, %215
  %222 = phi i1 [ false, %215 ], [ %220, %218 ]
  br label %223

; <label>:223:                                    ; preds = %221, %211
  %224 = phi i1 [ false, %211 ], [ %222, %221 ]
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %13, align 4
  %227 = icmp slt i32 %226, 10
  br i1 %227, label %228, label %239

; <label>:228:                                    ; preds = %223
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = icmp slt i32 %231, 5
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %228
  %234 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %237

; <label>:235:                                    ; preds = %228
  %236 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %237

; <label>:237:                                    ; preds = %235, %233
  %238 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %211

; <label>:239:                                    ; preds = %223
  br label %240

; <label>:240:                                    ; preds = %265, %239
  %241 = call i32 @boo(i32 90)
  %242 = add nsw i32 %241, 1
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

; <label>:244:                                    ; preds = %240
  %245 = call i32 @boo(i32 30)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

; <label>:247:                                    ; preds = %244
  %248 = call i32 @boo(i32 60)
  %249 = icmp ne i32 %248, 0
  br label %250

; <label>:250:                                    ; preds = %247, %244
  %251 = phi i1 [ false, %244 ], [ %249, %247 ]
  br label %252

; <label>:252:                                    ; preds = %250, %240
  %253 = phi i1 [ false, %240 ], [ %251, %250 ]
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %13, align 4
  %256 = icmp slt i32 %255, 10
  br i1 %256, label %257, label %267

; <label>:257:                                    ; preds = %252
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp slt i32 %260, 5
  br i1 %261, label %262, label %263

; <label>:262:                                    ; preds = %257
  store i32 1, i32* %1, align 4
  br label %312

; <label>:263:                                    ; preds = %257
  %264 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %265

; <label>:265:                                    ; preds = %263
  %266 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %240

; <label>:267:                                    ; preds = %252
  br label %268

; <label>:268:                                    ; preds = %293, %267
  %269 = call i32 @boo(i32 90)
  %270 = add nsw i32 %269, 1
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %280

; <label>:272:                                    ; preds = %268
  %273 = call i32 @boo(i32 30)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

; <label>:275:                                    ; preds = %272
  %276 = call i32 @boo(i32 60)
  %277 = icmp ne i32 %276, 0
  br label %278

; <label>:278:                                    ; preds = %275, %272
  %279 = phi i1 [ false, %272 ], [ %277, %275 ]
  br label %280

; <label>:280:                                    ; preds = %278, %268
  %281 = phi i1 [ false, %268 ], [ %279, %278 ]
  %282 = zext i1 %281 to i32
  %283 = load i32, i32* %13, align 4
  %284 = icmp slt i32 %283, 10
  br i1 %284, label %285, label %295

; <label>:285:                                    ; preds = %280
  %286 = load i32, i32* %13, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* %13, align 4
  %289 = icmp slt i32 %288, 5
  br i1 %289, label %290, label %292

; <label>:290:                                    ; preds = %285
  %291 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %293

; <label>:292:                                    ; preds = %285
  store i32 1, i32* %1, align 4
  br label %312

; <label>:293:                                    ; preds = %290
  %294 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %268

; <label>:295:                                    ; preds = %280
  %296 = load i32, i32* %2, align 4
  %297 = xor i32 %296, 1
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

; <label>:299:                                    ; preds = %295
  %300 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  br label %301

; <label>:301:                                    ; preds = %299, %295
  %302 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %303 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  %304 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %305 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %306 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %307 = call i32 @f1(i32 97, double 1.100000e+00)
  %308 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %307)
  %309 = call signext i16 @f10s()
  %310 = sext i16 %309 to i32
  %311 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %310)
  store i32 0, i32* %1, align 4
  br label %312

; <label>:312:                                    ; preds = %301, %292, %262
  %313 = load i32, i32* %1, align 4
  ret i32 %313
}

; Function Attrs: nounwind uwtable
define i32 @f1(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = call i32 @boo(i32 90)
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define signext i16 @f10s() #0 {
  ret i16 1
}

; Function Attrs: nounwind uwtable
define i32 @f10(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define signext i8 @f10c() #0 {
  %1 = alloca i8, align 1
  %2 = load i8, i8* %1, align 1
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define double @f10d() #0 {
  %1 = alloca double, align 8
  %2 = load double, double* %1, align 8
  ret double %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
