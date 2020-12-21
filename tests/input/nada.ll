; ModuleID = '../tests/input/nada.c'
source_filename = "../tests/input/nada.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g = global i32 10, align 4
@global = global i32 2, align 4
@aaa = global i32 1, align 4
@g1 = global i32 0, align 4
@g2 = global i32 0, align 4
@GLOBAL_DOUBLE = global double 1.000000e+00, align 8
@a = global i32 2, align 4
@bigD = global i32 8, align 4
@yyy = global i32 100, align 4
@GLOBAL_INT = common global i32 0, align 4
@g3 = common global i32 0, align 4
@ff = global double 1.000000e+00, align 8
@aa = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define double @le_double() #0 {
  ret double 9.700000e+01
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
  store i32 100, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %29, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %30

; <label>:7:                                      ; preds = %3
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 98)
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  br label %11

; <label>:11:                                     ; preds = %27, %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %11
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

; <label>:19:                                     ; preds = %23, %15
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %19
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %19

; <label>:27:                                     ; preds = %19
  %28 = call i32 @relf()
  br label %11

; <label>:29:                                     ; preds = %11
  br label %3

; <label>:30:                                     ; preds = %3
  ret i32 1
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @relf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 2, i32* %1, align 4
  store i32 3, i32* %2, align 4
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  ret i32 100
}

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
  %7 = sitofp i32 %6 to double
  %8 = load double, double* @GLOBAL_DOUBLE, align 8
  %9 = fcmp oeq double %7, %8
  br i1 %9, label %18, label %10

; <label>:10:                                     ; preds = %0
  %11 = call i32 @meeeh()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  %14 = call i32 @shapo()
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br label %18

; <label>:18:                                     ; preds = %16, %0
  %19 = phi i1 [ true, %0 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %1, align 4
  %21 = call i32 @relf()
  %22 = call i32 @meeeh()
  %23 = or i32 %21, %22
  store i32 %23, i32* %2, align 4
  %24 = call i32 @relf()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %18
  %27 = call i32 @meeeh()
  %28 = icmp ne i32 %27, 0
  br label %29

; <label>:29:                                     ; preds = %26, %18
  %30 = phi i1 [ true, %18 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = call i32 @relf()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %29
  %35 = call i32 @meeeh()
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @relf()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %37
  %43 = call i32 @meeeh()
  %44 = icmp ne i32 %43, 0
  br label %45

; <label>:45:                                     ; preds = %42, %37
  %46 = phi i1 [ true, %37 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = call i32 @relf()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

; <label>:50:                                     ; preds = %45
  %51 = call i32 @meeeh()
  %52 = icmp ne i32 %51, 0
  br label %53

; <label>:53:                                     ; preds = %50, %45
  %54 = phi i1 [ true, %45 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @relf()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

; <label>:58:                                     ; preds = %53
  %59 = call i32 @meeeh()
  %60 = icmp ne i32 %59, 0
  br label %61

; <label>:61:                                     ; preds = %58, %53
  %62 = phi i1 [ true, %53 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @relf()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %61
  %67 = call i32 @meeeh()
  %68 = icmp ne i32 %67, 0
  br label %69

; <label>:69:                                     ; preds = %66, %61
  %70 = phi i1 [ true, %61 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @relf()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

; <label>:74:                                     ; preds = %69
  %75 = call i32 @meeeh()
  %76 = icmp ne i32 %75, 0
  br label %77

; <label>:77:                                     ; preds = %74, %69
  %78 = phi i1 [ true, %69 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @relf()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

; <label>:82:                                     ; preds = %77
  %83 = call i32 @meeeh()
  %84 = icmp ne i32 %83, 0
  br label %85

; <label>:85:                                     ; preds = %82, %77
  %86 = phi i1 [ true, %77 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @relf()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

; <label>:90:                                     ; preds = %85
  %91 = call i32 @meeeh()
  %92 = icmp ne i32 %91, 0
  br label %93

; <label>:93:                                     ; preds = %90, %85
  %94 = phi i1 [ true, %85 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  %96 = add nsw i32 %87, %95
  %97 = call i32 @relf()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

; <label>:99:                                     ; preds = %93
  %100 = call i32 @meeeh()
  %101 = icmp ne i32 %100, 0
  br label %102

; <label>:102:                                    ; preds = %99, %93
  %103 = phi i1 [ true, %93 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @relf()
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

; <label>:107:                                    ; preds = %102
  %108 = call i32 @meeeh()
  %109 = icmp ne i32 %108, 0
  br label %110

; <label>:110:                                    ; preds = %107, %102
  %111 = phi i1 [ true, %102 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %5, align 4
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
  store i32 97, i32* %3, align 4
  br label %18

; <label>:17:                                     ; preds = %13, %9
  br label %18

; <label>:18:                                     ; preds = %16, %17, %2
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @tap() #0 {
  br label %1

; <label>:1:                                      ; preds = %12, %0
  %2 = load i32, i32* @yyy, align 4
  %3 = icmp sgt i32 %2, 50
  br i1 %3, label %4, label %15

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @yyy, align 4
  %6 = srem i32 %5, 10
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %4
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 65)
  br label %12

; <label>:10:                                     ; preds = %4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = load i32, i32* @yyy, align 4
  %14 = sub nsw i32 %13, 2
  store i32 %14, i32* @yyy, align 4
  br label %1

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* @GLOBAL_INT, align 4
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  call void @primes(i32 30)
  ret i32 99
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %18 = call i32 @w()
  %19 = call i32 @w1()
  %20 = call i32 @w2()
  store double 9.562000e+02, double* %2, align 8
  store i16 1, i16* %3, align 2
  store i32 1, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 0, %21
  %23 = add nsw i32 4444, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 1)
  %28 = call i32 @factorial(i32 10)
  call void @printint(i32 %28)
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %30 = load i32, i32* @GLOBAL_INT, align 4
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 90)
  %33 = call i32 @tap()
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
  store i32 99, i32* @GLOBAL_INT, align 4
  %35 = call i32 @tap()
  %36 = load i32, i32* @yyy, align 4
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 7)
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %40 = call i32 @ffff(i32 1, i32 10)
  call void @primes(i32 100)
  %41 = call i32 @mod(i32 197, i32 100)
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %44 = call i32 @mod(i32 97, i32 100)
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
  %46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %47 = call i32 @factorial(i32 5)
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
  %49 = call i32 @factorial(i32 6)
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %49)
  %51 = call i32 @factorial(i32 7)
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %51)
  %53 = call i32 @boo(i32 41)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

; <label>:55:                                     ; preds = %0
  %56 = call i32 @boo(i32 42)
  %57 = icmp ne i32 %56, 0
  br label %58

; <label>:58:                                     ; preds = %55, %0
  %59 = phi i1 [ true, %0 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %6, align 4
  call void @rel()
  store i32 10, i32* %6, align 4
  store i8 44, i8* %7, align 1
  %61 = call i32 @f3(i32 1, double 1.100000e+00)
  store i32 %61, i32* %8, align 4
  store i32 101, i32* %8, align 4
  store i16 113, i16* %9, align 2
  store i8 93, i8* %10, align 1
  store double 2.100000e+00, double* %11, align 8
  store double 2.200000e+00, double* %12, align 8
  %62 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %63 = call i32 @boo(i32 41)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %58
  %66 = call i32 @boo(i32 40)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %65
  %69 = call i32 @boo(i32 41)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

; <label>:71:                                     ; preds = %68, %65, %58
  %72 = call i32 @boo(i32 210)
  %73 = icmp ne i32 %72, 0
  br label %74

; <label>:74:                                     ; preds = %71, %68
  %75 = phi i1 [ true, %68 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  %77 = sitofp i32 %76 to double
  %78 = fadd double 2.000000e+02, %77
  store double %78, double* %13, align 8
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %80 = call i32 @f2(i32 2)
  %81 = sitofp i32 %80 to double
  store double %81, double* %11, align 8
  %82 = call i32 @f2(i32 4)
  store i32 %82, i32* %8, align 4
  store double 1.000000e+00, double* %11, align 8
  store i32 1, i32* %8, align 4
  store i16 1, i16* %9, align 2
  store i8 1, i8* %10, align 1
  %83 = call i32 @boo(i32 72)
  %84 = sub nsw i32 0, %83
  %85 = sub nsw i32 0, %84
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = and i32 33, %88
  %90 = sub nsw i32 0, %89
  %91 = sub nsw i32 0, %90
  %92 = sub nsw i32 0, %91
  %93 = mul nsw i32 3, %92
  %94 = add nsw i32 1, %93
  %95 = add nsw i32 %94, 4
  %96 = add nsw i32 %95, 6
  %97 = add nsw i32 %96, 43
  %98 = add nsw i32 %97, 11058
  store i32 %98, i32* %14, align 4
  store i32 97, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %99)
  store i32 99, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  store i32 100, i32* %6, align 4
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %106 = call i32 @f1(i32 10, double 3.000000e+00)
  %107 = call i32 @boo(i32 99)
  %108 = load i32, i32* %14, align 4
  %109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %108)
  %110 = call i32 @boo(i32 99)
  %111 = add nsw i32 %110, 10
  %112 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %111)
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %114 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  %115 = call i32 @f2(i32 1)
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %115)
  %117 = call i32 @f3(i32 -1, double 1.100000e+00)
  %118 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %117)
  %119 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 90)
  %120 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 9)
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 39)
  %122 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 34)
  %123 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 92)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %124)
  %126 = load i8, i8* %7, align 1
  %127 = sext i8 %126 to i32
  %128 = add nsw i32 %127, 1
  %129 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 0
  %132 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %131)
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 64)
  %134 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %135 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %136 = load i8, i8* %7, align 1
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 60, %137
  %139 = sub nsw i32 %138, 1
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %139)
  %141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  %142 = call i32 @boo(i32 70)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

; <label>:144:                                    ; preds = %74
  %145 = call i32 @boo(i32 80)
  %146 = icmp ne i32 %145, 0
  br label %147

; <label>:147:                                    ; preds = %144, %74
  %148 = phi i1 [ false, %74 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  %150 = add nsw i32 97, %149
  %151 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sitofp i32 %154 to double
  store double %155, double* %16, align 8
  %156 = call i32 @boo(i32 40)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %179

; <label>:158:                                    ; preds = %147
  %159 = call i32 @boo(i32 40)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %179

; <label>:161:                                    ; preds = %158
  %162 = call i32 @boo(i32 51)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %177, label %164

; <label>:164:                                    ; preds = %161
  %165 = call i32 @boo(i32 52)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

; <label>:167:                                    ; preds = %164
  %168 = call i32 @boo(i32 51)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

; <label>:170:                                    ; preds = %167
  %171 = call i32 @boo(i32 92)
  %172 = icmp ne i32 %171, 0
  br label %173

; <label>:173:                                    ; preds = %170, %167
  %174 = phi i1 [ true, %167 ], [ %172, %170 ]
  br label %175

; <label>:175:                                    ; preds = %173, %164
  %176 = phi i1 [ false, %164 ], [ %174, %173 ]
  br label %177

; <label>:177:                                    ; preds = %175, %161
  %178 = phi i1 [ true, %161 ], [ %176, %175 ]
  br label %179

; <label>:179:                                    ; preds = %177, %158, %147
  %180 = phi i1 [ false, %158 ], [ false, %147 ], [ %178, %177 ]
  %181 = zext i1 %180 to i32
  %182 = add nsw i32 96, %181
  %183 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %182)
  %184 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 49)
  %185 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 5064)
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 75)
  %187 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %188 = call i32 @boo(i32 104)
  %189 = call i32 @relf()
  %190 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %191 = call i32 @maind()
  store i32 0, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = mul nsw i32 %192, -1
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* @g2, align 4
  %195 = load i32, i32* @g1, align 4
  %196 = add nsw i32 %194, %195
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %237

; <label>:198:                                    ; preds = %179
  store i32 1, i32* @g3, align 4
  %199 = call i32 @meeeh()
  %200 = call i32 @relf()
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

; <label>:202:                                    ; preds = %198
  %203 = load i32, i32* @g1, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* @aaa, align 4
  %207 = icmp ne i32 %206, 0
  br label %208

; <label>:208:                                    ; preds = %205, %202, %198
  %209 = phi i1 [ false, %202 ], [ false, %198 ], [ %207, %205 ]
  %210 = zext i1 %209 to i32
  %211 = icmp ne i32 %199, %210
  br i1 %211, label %212, label %214

; <label>:212:                                    ; preds = %208
  %213 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 101)
  store i32 1, i32* @g3, align 4
  br label %216

; <label>:214:                                    ; preds = %208
  %215 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 102)
  br label %216

; <label>:216:                                    ; preds = %214, %212
  %217 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 103)
  store i32 1, i32* @g3, align 4
  %218 = call i32 @meeeh()
  %219 = call i32 @relf()
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

; <label>:221:                                    ; preds = %216
  %222 = load i32, i32* @g1, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

; <label>:224:                                    ; preds = %221
  %225 = load i32, i32* @aaa, align 4
  %226 = icmp ne i32 %225, 0
  br label %227

; <label>:227:                                    ; preds = %224, %221, %216
  %228 = phi i1 [ false, %221 ], [ false, %216 ], [ %226, %224 ]
  %229 = zext i1 %228 to i32
  %230 = icmp ne i32 %218, %229
  br i1 %230, label %231, label %233

; <label>:231:                                    ; preds = %227
  %232 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 104)
  store i32 1, i32* @g3, align 4
  br label %235

; <label>:233:                                    ; preds = %227
  %234 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 105)
  br label %235

; <label>:235:                                    ; preds = %233, %231
  %236 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 106)
  br label %239

; <label>:237:                                    ; preds = %179
  %238 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 107)
  store i32 1, i32* @g2, align 4
  br label %239

; <label>:239:                                    ; preds = %237, %235
  %240 = call i32 @boo(i32 10)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %254

; <label>:242:                                    ; preds = %239
  %243 = call i32 @boo(i32 20)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

; <label>:245:                                    ; preds = %242
  %246 = call i32 @boo(i32 30)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

; <label>:248:                                    ; preds = %245
  %249 = call i32 @boo(i32 10)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

; <label>:251:                                    ; preds = %248
  %252 = call i32 @boo(i32 40)
  %253 = icmp ne i32 %252, 0
  br label %254

; <label>:254:                                    ; preds = %251, %248, %245, %242, %239
  %255 = phi i1 [ false, %248 ], [ false, %245 ], [ false, %242 ], [ false, %239 ], [ %253, %251 ]
  %256 = zext i1 %255 to i32
  br label %257

; <label>:257:                                    ; preds = %269, %254
  %258 = load i32, i32* %17, align 4
  %259 = icmp slt i32 %258, 10
  br i1 %259, label %260, label %271

; <label>:260:                                    ; preds = %257
  %261 = load i32, i32* %17, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %17, align 4
  %264 = icmp slt i32 %263, 5
  br i1 %264, label %265, label %267

; <label>:265:                                    ; preds = %260
  %266 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 66)
  br label %269

; <label>:267:                                    ; preds = %260
  %268 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %269

; <label>:269:                                    ; preds = %267, %265
  %270 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %257

; <label>:271:                                    ; preds = %257
  br label %272

; <label>:272:                                    ; preds = %297, %271
  %273 = call i32 @boo(i32 90)
  %274 = add nsw i32 %273, 1
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %284

; <label>:276:                                    ; preds = %272
  %277 = call i32 @boo(i32 30)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

; <label>:279:                                    ; preds = %276
  %280 = call i32 @boo(i32 60)
  %281 = icmp ne i32 %280, 0
  br label %282

; <label>:282:                                    ; preds = %279, %276
  %283 = phi i1 [ false, %276 ], [ %281, %279 ]
  br label %284

; <label>:284:                                    ; preds = %282, %272
  %285 = phi i1 [ false, %272 ], [ %283, %282 ]
  %286 = zext i1 %285 to i32
  %287 = load i32, i32* %17, align 4
  %288 = icmp slt i32 %287, 10
  br i1 %288, label %289, label %299

; <label>:289:                                    ; preds = %284
  %290 = load i32, i32* %17, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %17, align 4
  %292 = load i32, i32* %17, align 4
  %293 = icmp slt i32 %292, 5
  br i1 %293, label %294, label %295

; <label>:294:                                    ; preds = %289
  store i32 1, i32* %1, align 4
  br label %347

; <label>:295:                                    ; preds = %289
  %296 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %297

; <label>:297:                                    ; preds = %295
  %298 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %272

; <label>:299:                                    ; preds = %284
  br label %300

; <label>:300:                                    ; preds = %325, %299
  %301 = call i32 @boo(i32 90)
  %302 = add nsw i32 %301, 1
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

; <label>:304:                                    ; preds = %300
  %305 = call i32 @boo(i32 30)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

; <label>:307:                                    ; preds = %304
  %308 = call i32 @boo(i32 60)
  %309 = icmp ne i32 %308, 0
  br label %310

; <label>:310:                                    ; preds = %307, %304
  %311 = phi i1 [ false, %304 ], [ %309, %307 ]
  br label %312

; <label>:312:                                    ; preds = %310, %300
  %313 = phi i1 [ false, %300 ], [ %311, %310 ]
  %314 = zext i1 %313 to i32
  %315 = load i32, i32* %17, align 4
  %316 = icmp slt i32 %315, 10
  br i1 %316, label %317, label %327

; <label>:317:                                    ; preds = %312
  %318 = load i32, i32* %17, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %17, align 4
  %320 = load i32, i32* %17, align 4
  %321 = icmp slt i32 %320, 5
  br i1 %321, label %322, label %324

; <label>:322:                                    ; preds = %317
  %323 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  br label %325

; <label>:324:                                    ; preds = %317
  store i32 1, i32* %1, align 4
  br label %347

; <label>:325:                                    ; preds = %322
  %326 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  br label %300

; <label>:327:                                    ; preds = %312
  store i32 2, i32* %6, align 4
  %328 = load i32, i32* %6, align 4
  %329 = and i32 %328, 1
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

; <label>:331:                                    ; preds = %327
  %332 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  br label %333

; <label>:333:                                    ; preds = %331, %327
  %334 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 67)
  %335 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 108)
  %336 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %337 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %338 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %339 = call i32 @f1(i32 97, double 1.100000e+00)
  %340 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %339)
  %341 = call signext i16 @f10s()
  %342 = sext i16 %341 to i32
  %343 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %342)
  %344 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %345 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %346 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  store i32 0, i32* %1, align 4
  br label %347

; <label>:347:                                    ; preds = %333, %324, %294
  %348 = load i32, i32* %1, align 4
  ret i32 %348
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
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 97, i32* %2, align 4
  store double 1.100000e+00, double* %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  %11 = call i32 @params_(i32 1, double 1.000000e+00, i8 signext 1, i16 signext 1)
  %12 = icmp ne i32 %11, 0
  br label %13

; <label>:13:                                     ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  br label %15

; <label>:15:                                     ; preds = %13, %0
  %16 = phi i1 [ false, %0 ], [ %14, %13 ]
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %17, 99
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 9)
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 39)
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 34)
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 97)
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 47)
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 11)
  %31 = call i32 @params_(i32 81, double 5.400000e+00, i8 signext 1, i16 signext 1)
  call void @void_f_()
  %32 = call i32 @f3_()
  %33 = call i32 @f2_()
  %34 = call i32 @f4_()
  %35 = call i32 @f5_()
  %36 = call i32 @f6_()
  %37 = call double @f7_()
  %38 = call signext i16 @f8_()
  ret i32 1
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
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = call i32 @f2_()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @f2_()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 100)
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 99)
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %12, %13
  ret i32 99
}

; Function Attrs: nounwind uwtable
define i32 @f5_() #0 {
  %1 = alloca i32, align 4
  store i32 100, i32* %1, align 4
  store i32 40, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
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
