; ModuleID = '../tests/input/m4_atualizado.c'
source_filename = "../tests/input/m4_atualizado.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g = global i32 10, align 4
@global = global i32 2, align 4
@aaa = global i32 1, align 4
@g1 = global i32 0, align 4
@g2 = global i32 0, align 4
@a = global i32 2, align 4
@g3 = common global i32 0, align 4
@ff = global double 1.000000e+00, align 8
@aa = common global i32 0, align 4

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
  %2 = alloca i32, align 4
  store i32 2, i32* %1, align 4
  store i32 3, i32* %2, align 4
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  ret i32 100
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @meeeh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = load i32, i32* @aaa, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @aaa, align 4
  %9 = srem i32 %8, 2
  %10 = sitofp i32 %9 to double
  store double %10, double* %3, align 8
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 987)
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
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %2
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  store i32 3, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %8
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  store i32 1, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %13
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  store i32 1, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %13
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %22

; <label>:22:                                     ; preds = %20, %8
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  br label %24

; <label>:24:                                     ; preds = %22, %2
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @shapo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = add nsw i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %0
  store i32 1, i32* %1, align 4
  %8 = call i32 @relf()
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %7
  %12 = call i32 @meeeh()
  br label %13

; <label>:13:                                     ; preds = %11, %7
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 40)
  %16 = call i32 @meeeh()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %14
  %19 = call i32 @relf()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

; <label>:21:                                     ; preds = %18, %14
  %22 = load i32, i32* @g, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @aaa, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

; <label>:27:                                     ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br label %29

; <label>:29:                                     ; preds = %27, %18
  %30 = phi i1 [ true, %18 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  ret i32 100
}

; Function Attrs: nounwind uwtable
define i32 @AND() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @aaa, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

; <label>:7:                                      ; preds = %0
  %8 = call i32 @meeeh()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

; <label>:10:                                     ; preds = %7
  %11 = call i32 @shapo()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = call i32 @meeeh()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %13
  %17 = call i32 @shapo()
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %16, %13, %10, %7
  %20 = phi i1 [ false, %13 ], [ false, %10 ], [ false, %7 ], [ %18, %16 ]
  br label %21

; <label>:21:                                     ; preds = %19, %0
  %22 = phi i1 [ true, %0 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @aaa, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

; <label>:26:                                     ; preds = %21
  %27 = call i32 @meeeh()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

; <label>:29:                                     ; preds = %26
  %30 = call i32 @shapo()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %29
  %33 = call i32 @meeeh()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %32
  %36 = call i32 @shapo()
  %37 = icmp ne i32 %36, 0
  br label %38

; <label>:38:                                     ; preds = %35, %32, %29, %26
  %39 = phi i1 [ false, %32 ], [ false, %29 ], [ false, %26 ], [ %37, %35 ]
  br label %40

; <label>:40:                                     ; preds = %38, %21
  %41 = phi i1 [ true, %21 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @aaa, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

; <label>:45:                                     ; preds = %40
  %46 = call i32 @meeeh()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %45
  %49 = call i32 @shapo()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

; <label>:51:                                     ; preds = %48, %45
  %52 = call i32 @meeeh()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %51
  %55 = call i32 @shapo()
  %56 = icmp ne i32 %55, 0
  br label %57

; <label>:57:                                     ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br label %59

; <label>:59:                                     ; preds = %57, %48, %40
  %60 = phi i1 [ true, %48 ], [ true, %40 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @relf()
  %63 = call i32 @meeeh()
  %64 = and i32 %62, %63
  store i32 %64, i32* %3, align 4
  %65 = call i32 @relf()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %59
  %68 = call i32 @meeeh()
  %69 = icmp ne i32 %68, 0
  br label %70

; <label>:70:                                     ; preds = %67, %59
  %71 = phi i1 [ false, %59 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %4, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @OR() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @aaa, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

; <label>:8:                                      ; preds = %0
  %9 = call i32 @meeeh()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %8
  %12 = call i32 @shapo()
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14:                                     ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br label %16

; <label>:16:                                     ; preds = %14, %0
  %17 = phi i1 [ true, %0 ], [ %15, %14 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %1, align 4
  %19 = call i32 @relf()
  %20 = call i32 @meeeh()
  %21 = or i32 %19, %20
  store i32 %21, i32* %2, align 4
  %22 = call i32 @relf()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %16
  %25 = call i32 @meeeh()
  %26 = icmp ne i32 %25, 0
  br label %27

; <label>:27:                                     ; preds = %24, %16
  %28 = phi i1 [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = call i32 @relf()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %27
  %33 = call i32 @meeeh()
  %34 = icmp ne i32 %33, 0
  br label %35

; <label>:35:                                     ; preds = %32, %27
  %36 = phi i1 [ false, %27 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @relf()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

; <label>:40:                                     ; preds = %35
  %41 = call i32 @meeeh()
  %42 = icmp ne i32 %41, 0
  br label %43

; <label>:43:                                     ; preds = %40, %35
  %44 = phi i1 [ true, %35 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = call i32 @relf()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %43
  %49 = call i32 @meeeh()
  %50 = icmp ne i32 %49, 0
  br label %51

; <label>:51:                                     ; preds = %48, %43
  %52 = phi i1 [ true, %43 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @relf()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %51
  %57 = call i32 @meeeh()
  %58 = icmp ne i32 %57, 0
  br label %59

; <label>:59:                                     ; preds = %56, %51
  %60 = phi i1 [ true, %51 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @relf()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

; <label>:64:                                     ; preds = %59
  %65 = call i32 @meeeh()
  %66 = icmp ne i32 %65, 0
  br label %67

; <label>:67:                                     ; preds = %64, %59
  %68 = phi i1 [ true, %59 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @relf()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

; <label>:72:                                     ; preds = %67
  %73 = call i32 @meeeh()
  %74 = icmp ne i32 %73, 0
  br label %75

; <label>:75:                                     ; preds = %72, %67
  %76 = phi i1 [ true, %67 ], [ %74, %72 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @relf()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

; <label>:80:                                     ; preds = %75
  %81 = call i32 @meeeh()
  %82 = icmp ne i32 %81, 0
  br label %83

; <label>:83:                                     ; preds = %80, %75
  %84 = phi i1 [ true, %75 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @relf()
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

; <label>:88:                                     ; preds = %83
  %89 = call i32 @meeeh()
  %90 = icmp ne i32 %89, 0
  br label %91

; <label>:91:                                     ; preds = %88, %83
  %92 = phi i1 [ true, %83 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = add nsw i32 %85, %93
  %95 = call i32 @relf()
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

; <label>:97:                                     ; preds = %91
  %98 = call i32 @meeeh()
  %99 = icmp ne i32 %98, 0
  br label %100

; <label>:100:                                    ; preds = %97, %91
  %101 = phi i1 [ true, %91 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @relf()
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

; <label>:105:                                    ; preds = %100
  %106 = call i32 @meeeh()
  %107 = icmp ne i32 %106, 0
  br label %108

; <label>:108:                                    ; preds = %105, %100
  %109 = phi i1 [ true, %100 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @XOR() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @relf()
  %4 = call i32 @meeeh()
  %5 = xor i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = call i32 @relf()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %0
  %9 = call i32 @meeeh()
  %10 = icmp ne i32 %9, 0
  br label %11

; <label>:11:                                     ; preds = %8, %0
  %12 = phi i1 [ true, %0 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = call i32 @relf()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %11
  %17 = call i32 @meeeh()
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  br label %22

; <label>:22:                                     ; preds = %26, %19
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @relf()
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %22
  store i32 2, i32* %1, align 4
  br label %22

; <label>:27:                                     ; preds = %22
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

; Function Attrs: nounwind uwtable
define i32 @factorial(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @factorial(i32 %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %7, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @mod(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mod(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %17

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %15, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @printint(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 45)
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %5, %1
  %10 = load i32, i32* %2, align 4
  %11 = sdiv i32 %10, 10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 10
  call void @printint(i32 %15)
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = load i32, i32* %2, align 4
  %18 = srem i32 %17, 10
  %19 = add nsw i32 %18, 48
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @prime(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 2, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %15, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = srem i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4
  br label %19

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %5

; <label>:18:                                     ; preds = %5
  store i32 1, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @primes(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 5, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @prime(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %3, align 4
  call void @printint(i32 %13)
  br label %14

; <label>:14:                                     ; preds = %12, %8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

; <label>:17:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ffff(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 63, i32* %3, align 4
  br label %19

; <label>:17:                                     ; preds = %13, %9
  store i32 62, i32* %3, align 4
  br label %19

; <label>:18:                                     ; preds = %2
  store i32 61, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %17, %16
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

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
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 7)
  %15 = call i32 @ffff(i32 1, i32 10)
  call void @primes(i32 10)
  %16 = call i32 @mod(i32 197, i32 100)
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  %18 = call i32 @mod(i32 97, i32 100)
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
  %20 = call i32 @factorial(i32 5)
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = call i32 @factorial(i32 6)
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
  %24 = call i32 @factorial(i32 7)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
  %26 = call i32 @boo(i32 41)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %0
  %29 = call i32 @boo(i32 42)
  %30 = icmp ne i32 %29, 0
  br label %31

; <label>:31:                                     ; preds = %28, %0
  %32 = phi i1 [ true, %0 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  call void @rel()
  store i32 10, i32* %2, align 4
  store i8 44, i8* %3, align 1
  %34 = call i32 @f3(i32 1, double 1.100000e+00)
  store i32 %34, i32* %4, align 4
  store i32 101, i32* %4, align 4
  store i16 113, i16* %5, align 2
  store i8 93, i8* %6, align 1
  store double 2.100000e+00, double* %7, align 8
  store double 2.200000e+00, double* %8, align 8
  %35 = call i32 @boo(i32 41)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %31
  %38 = call i32 @boo(i32 40)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %37
  %41 = call i32 @boo(i32 41)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %40, %37, %31
  %44 = call i32 @boo(i32 210)
  %45 = icmp ne i32 %44, 0
  br label %46

; <label>:46:                                     ; preds = %43, %40
  %47 = phi i1 [ true, %40 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fadd double 2.000000e+02, %49
  store double %50, double* %9, align 8
  %51 = call i32 @f2(i32 2)
  %52 = sitofp i32 %51 to double
  store double %52, double* %7, align 8
  store double 1.000000e+00, double* %7, align 8
  store i16 1, i16* %5, align 2
  store i8 1, i8* %6, align 1
  %53 = call i32 @boo(i32 72)
  %54 = sub nsw i32 0, %53
  %55 = sub nsw i32 0, %54
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = and i32 33, %58
  %60 = sub nsw i32 0, %59
  %61 = sub nsw i32 0, %60
  %62 = sub nsw i32 0, %61
  %63 = mul nsw i32 3, %62
  %64 = add nsw i32 1, %63
  %65 = add nsw i32 %64, 4
  %66 = add nsw i32 %65, 6
  %67 = add nsw i32 %66, 43
  %68 = add nsw i32 %67, 11058
  store i32 %68, i32* %10, align 4
  store i32 97, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %69)
  store i32 99, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  store i32 100, i32* %2, align 4
  %75 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %76 = call i32 @f1(i32 10, double 3.000000e+00)
  %77 = call i32 @boo(i32 99)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %78)
  %80 = call i32 @boo(i32 99)
  %81 = add nsw i32 %80, 10
  %82 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %81)
  %83 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %85 = call i32 @f2(i32 1)
  %86 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %85)
  %87 = call i32 @f3(i32 -1, double 1.100000e+00)
  %88 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %87)
  %89 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 90)
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 9)
  %91 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 39)
  %92 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 34)
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 92)
  %94 = load i32, i32* %2, align 4
  %95 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %94)
  %96 = load i8, i8* %3, align 1
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 0
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %101)
  %103 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 64)
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %106 = load i8, i8* %3, align 1
  %107 = sext i8 %106 to i32
  %108 = add nsw i32 60, %107
  %109 = sub nsw i32 %108, 1
  %110 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %109)
  %111 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  %112 = call i32 @boo(i32 70)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %46
  %115 = call i32 @boo(i32 80)
  %116 = icmp ne i32 %115, 0
  br label %117

; <label>:117:                                    ; preds = %114, %46
  %118 = phi i1 [ false, %46 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = add nsw i32 97, %119
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %120)
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %2, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sitofp i32 %124 to double
  store double %125, double* %12, align 8
  %126 = call i32 @boo(i32 40)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %149

; <label>:128:                                    ; preds = %117
  %129 = call i32 @boo(i32 40)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %149

; <label>:131:                                    ; preds = %128
  %132 = call i32 @boo(i32 51)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

; <label>:134:                                    ; preds = %131
  %135 = call i32 @boo(i32 52)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

; <label>:137:                                    ; preds = %134
  %138 = call i32 @boo(i32 51)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

; <label>:140:                                    ; preds = %137
  %141 = call i32 @boo(i32 92)
  %142 = icmp ne i32 %141, 0
  br label %143

; <label>:143:                                    ; preds = %140, %137
  %144 = phi i1 [ true, %137 ], [ %142, %140 ]
  br label %145

; <label>:145:                                    ; preds = %143, %134
  %146 = phi i1 [ false, %134 ], [ %144, %143 ]
  br label %147

; <label>:147:                                    ; preds = %145, %131
  %148 = phi i1 [ true, %131 ], [ %146, %145 ]
  br label %149

; <label>:149:                                    ; preds = %147, %128, %117
  %150 = phi i1 [ false, %128 ], [ false, %117 ], [ %148, %147 ]
  %151 = zext i1 %150 to i32
  %152 = add nsw i32 96, %151
  %153 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %152)
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 49)
  %155 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 5064)
  %156 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 75)
  %157 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %158 = call i32 @boo(i32 104)
  %159 = call i32 @relf()
  %160 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %161 = call i32 @maind()
  store i32 0, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = mul nsw i32 %162, -1
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* @g2, align 4
  %165 = load i32, i32* @g1, align 4
  %166 = add nsw i32 %164, %165
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %207

; <label>:168:                                    ; preds = %149
  store i32 1, i32* @g3, align 4
  %169 = call i32 @meeeh()
  %170 = call i32 @relf()
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

; <label>:172:                                    ; preds = %168
  %173 = load i32, i32* @g1, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

; <label>:175:                                    ; preds = %172
  %176 = load i32, i32* @aaa, align 4
  %177 = icmp ne i32 %176, 0
  br label %178

; <label>:178:                                    ; preds = %175, %172, %168
  %179 = phi i1 [ false, %172 ], [ false, %168 ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  %181 = icmp ne i32 %169, %180
  br i1 %181, label %182, label %184

; <label>:182:                                    ; preds = %178
  %183 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  store i32 1, i32* @g3, align 4
  br label %186

; <label>:184:                                    ; preds = %178
  %185 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %186

; <label>:186:                                    ; preds = %184, %182
  %187 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  store i32 1, i32* @g3, align 4
  %188 = call i32 @meeeh()
  %189 = call i32 @relf()
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

; <label>:191:                                    ; preds = %186
  %192 = load i32, i32* @g1, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

; <label>:194:                                    ; preds = %191
  %195 = load i32, i32* @aaa, align 4
  %196 = icmp ne i32 %195, 0
  br label %197

; <label>:197:                                    ; preds = %194, %191, %186
  %198 = phi i1 [ false, %191 ], [ false, %186 ], [ %196, %194 ]
  %199 = zext i1 %198 to i32
  %200 = icmp ne i32 %188, %199
  br i1 %200, label %201, label %203

; <label>:201:                                    ; preds = %197
  %202 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  store i32 1, i32* @g3, align 4
  br label %205

; <label>:203:                                    ; preds = %197
  %204 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 105)
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 106)
  br label %209

; <label>:207:                                    ; preds = %149
  %208 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 107)
  store i32 1, i32* @g2, align 4
  br label %209

; <label>:209:                                    ; preds = %207, %205
  %210 = call i32 @boo(i32 10)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

; <label>:212:                                    ; preds = %209
  %213 = call i32 @boo(i32 20)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

; <label>:215:                                    ; preds = %212
  %216 = call i32 @boo(i32 30)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

; <label>:218:                                    ; preds = %215
  %219 = call i32 @boo(i32 10)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

; <label>:221:                                    ; preds = %218
  %222 = call i32 @boo(i32 40)
  %223 = icmp ne i32 %222, 0
  br label %224

; <label>:224:                                    ; preds = %221, %218, %215, %212, %209
  %225 = phi i1 [ false, %218 ], [ false, %215 ], [ false, %212 ], [ false, %209 ], [ %223, %221 ]
  %226 = zext i1 %225 to i32
  br label %227

; <label>:227:                                    ; preds = %239, %224
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %228, 10
  br i1 %229, label %230, label %241

; <label>:230:                                    ; preds = %227
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 5
  br i1 %234, label %235, label %237

; <label>:235:                                    ; preds = %230
  %236 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %239

; <label>:237:                                    ; preds = %230
  %238 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %239

; <label>:239:                                    ; preds = %237, %235
  %240 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %227

; <label>:241:                                    ; preds = %227
  br label %242

; <label>:242:                                    ; preds = %267, %241
  %243 = call i32 @boo(i32 90)
  %244 = add nsw i32 %243, 1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

; <label>:246:                                    ; preds = %242
  %247 = call i32 @boo(i32 30)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

; <label>:249:                                    ; preds = %246
  %250 = call i32 @boo(i32 60)
  %251 = icmp ne i32 %250, 0
  br label %252

; <label>:252:                                    ; preds = %249, %246
  %253 = phi i1 [ false, %246 ], [ %251, %249 ]
  br label %254

; <label>:254:                                    ; preds = %252, %242
  %255 = phi i1 [ false, %242 ], [ %253, %252 ]
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %13, align 4
  %258 = icmp slt i32 %257, 10
  br i1 %258, label %259, label %269

; <label>:259:                                    ; preds = %254
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp slt i32 %262, 5
  br i1 %263, label %264, label %265

; <label>:264:                                    ; preds = %259
  store i32 1, i32* %1, align 4
  br label %314

; <label>:265:                                    ; preds = %259
  %266 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %267

; <label>:267:                                    ; preds = %265
  %268 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %242

; <label>:269:                                    ; preds = %254
  br label %270

; <label>:270:                                    ; preds = %295, %269
  %271 = call i32 @boo(i32 90)
  %272 = add nsw i32 %271, 1
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

; <label>:274:                                    ; preds = %270
  %275 = call i32 @boo(i32 30)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

; <label>:277:                                    ; preds = %274
  %278 = call i32 @boo(i32 60)
  %279 = icmp ne i32 %278, 0
  br label %280

; <label>:280:                                    ; preds = %277, %274
  %281 = phi i1 [ false, %274 ], [ %279, %277 ]
  br label %282

; <label>:282:                                    ; preds = %280, %270
  %283 = phi i1 [ false, %270 ], [ %281, %280 ]
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %13, align 4
  %286 = icmp slt i32 %285, 10
  br i1 %286, label %287, label %297

; <label>:287:                                    ; preds = %282
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  %290 = load i32, i32* %13, align 4
  %291 = icmp slt i32 %290, 5
  br i1 %291, label %292, label %294

; <label>:292:                                    ; preds = %287
  %293 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %295

; <label>:294:                                    ; preds = %287
  store i32 1, i32* %1, align 4
  br label %314

; <label>:295:                                    ; preds = %292
  %296 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %270

; <label>:297:                                    ; preds = %282
  store i32 2, i32* %2, align 4
  %298 = load i32, i32* %2, align 4
  %299 = and i32 %298, 1
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

; <label>:301:                                    ; preds = %297
  %302 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  br label %303

; <label>:303:                                    ; preds = %301, %297
  %304 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %305 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  %306 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %307 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %308 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %309 = call i32 @f1(i32 97, double 1.100000e+00)
  %310 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %309)
  %311 = call signext i16 @f10s()
  %312 = sext i16 %311 to i32
  %313 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %312)
  store i32 0, i32* %1, align 4
  br label %314

; <label>:314:                                    ; preds = %303, %294, %264
  %315 = load i32, i32* %1, align 4
  ret i32 %315
}

; Function Attrs: nounwind uwtable
define i32 @f1(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = call i32 @boo(i32 90)
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
  ret i32 98
}

; Function Attrs: nounwind uwtable
define i32 @maind() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 97, i32* %3, align 4
  store double 1.100000e+00, double* %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %8
  %12 = call i32 @params_(i32 1, double 1.000000e+00, i8 signext 1, i16 signext 1)
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14:                                     ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br label %16

; <label>:16:                                     ; preds = %14, %0
  %17 = phi i1 [ false, %0 ], [ %15, %14 ]
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %18, 99
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 9)
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 39)
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 34)
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 47)
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 11)
  %32 = call i32 @params_(i32 81, double 5.400000e+00, i8 signext 1, i16 signext 1)
  call void @void_f_()
  %33 = call i32 @f3_()
  %34 = call i32 @f2_()
  %35 = call i32 @f4_()
  %36 = call i32 @f5_()
  %37 = call i32 @f6_()
  %38 = call double @f7_()
  %39 = call signext i16 @f8_()
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define signext i16 @f10s() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32 1, i32* %2, align 4
  store i16 10, i16* %3, align 2
  store i8 97, i8* %4, align 1
  store double 2.000000e+00, double* %5, align 8
  store double 2.000000e+01, double* %6, align 8
  %7 = load double, double* %5, align 8
  %8 = load double, double* %6, align 8
  %9 = fcmp ogt double %7, %8
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %0
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %10
  %15 = load double, double* %5, align 8
  %16 = call i32 @f1(i32 1, double %15)
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = load double, double* %5, align 8
  %23 = call i32 @f1(i32 %21, double %22)
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %1, align 2
  br label %47

; <label>:25:                                     ; preds = %0
  %26 = call i32 @f10(i32 0)
  br label %27

; <label>:27:                                     ; preds = %25
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  br label %29

; <label>:29:                                     ; preds = %41, %27
  %30 = load double, double* %5, align 8
  %31 = load double, double* %6, align 8
  %32 = fcmp olt double %30, %31
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = srem i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %33
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %41

; <label>:39:                                     ; preds = %33
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  br label %41

; <label>:41:                                     ; preds = %39, %37
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  %44 = load double, double* %5, align 8
  %45 = fadd double %44, 1.000000e+00
  store double %45, double* %5, align 8
  br label %29

; <label>:46:                                     ; preds = %29
  store i16 66, i16* %1, align 2
  br label %47

; <label>:47:                                     ; preds = %46, %19
  %48 = load i16, i16* %1, align 2
  ret i16 %48
}

; Function Attrs: nounwind uwtable
define i32 @f10(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 80)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f10c() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @falala(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 2, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @factorial_(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @factorial_(i32 %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %7, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @void_f_() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @f3_() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  ret i32 99
}

; Function Attrs: nounwind uwtable
define i32 @params_(i32, double, i8 signext, i16 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
  ret i32 103
}

; Function Attrs: nounwind uwtable
define i32 @f2_() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = or i32 %4, %5
  %7 = sitofp i32 %6 to double
  store double %7, double* %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %8, %9
  %11 = sitofp i32 %10 to double
  store double %11, double* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  %14 = xor i32 %12, %13
  %15 = sitofp i32 %14 to double
  store double %15, double* %3, align 8
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  ret i32 101
}

; Function Attrs: nounwind uwtable
define i32 @f4_() #0 {
  %1 = call i32 @f2_()
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @f2_()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  ret i32 99
}

; Function Attrs: nounwind uwtable
define i32 @f5_() #0 {
  %1 = alloca i32, align 4
  store i32 100, i32* %1, align 4
  store i32 40, i32* %1, align 4
  ret i32 65
}

; Function Attrs: nounwind uwtable
define i32 @f6_() #0 {
  store i32 10, i32* @a, align 4
  %1 = load i32, i32* @a, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = call i32 @f5_()
  %5 = icmp ne i32 %4, 0
  br label %6

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  %8 = zext i1 %7 to i32
  %9 = call i32 @f5_()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %6
  %12 = call i32 @f5_()
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14:                                     ; preds = %11, %6
  %15 = phi i1 [ false, %6 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %8, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
  %20 = call i32 @f5_()
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = call i32 @f5_()
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define double @f7_() #0 {
  %1 = load i32, i32* @a, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  store i32 1, i32* @a, align 4
  br label %4

; <label>:4:                                      ; preds = %3, %0
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  ret double 1.000000e+01
}

; Function Attrs: nounwind uwtable
define signext i16 @f8_() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %6, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %3
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  br label %3

; <label>:10:                                     ; preds = %3
  %11 = load i16, i16* %1, align 2
  ret i16 %11
}

; Function Attrs: nounwind uwtable
define i32 @f1_() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca double, align 8
  %4 = alloca i8, align 1
  %5 = load i32, i32* %1, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %1, align 4
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i32
  %9 = sub nsw i32 0, %8
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %2, align 2
  %11 = load double, double* %3, align 8
  %12 = fsub double -0.000000e+00, %11
  store double %12, double* %3, align 8
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = sub nsw i32 0, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %4, align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
