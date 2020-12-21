; ModuleID = '../tests/input/expressions3.c'
source_filename = "../tests/input/expressions3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @print_number(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 48)
  br label %43

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 45)
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %11, %8
  store i32 1, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %21, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 10
  store i32 %23, i32* %3, align 4
  br label %16

; <label>:24:                                     ; preds = %16
  br label %25

; <label>:25:                                     ; preds = %28, %24
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sdiv i32 %30, 10
  %32 = sdiv i32 %29, %31
  %33 = add nsw i32 48, %32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %34, %35
  %37 = mul nsw i32 %36, 10
  %38 = sub nsw i32 %33, %37
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = sdiv i32 %40, 10
  store i32 %41, i32* %3, align 4
  br label %25

; <label>:42:                                     ; preds = %25
  br label %43

; <label>:43:                                     ; preds = %42, %6
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10)
  ret void
}

declare i32 @putchar(...) #1

; Function Attrs: nounwind uwtable
define i32 @return1() #0 {
  %1 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 63)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 3, i32* %3, align 4
  store i32 4, i32* %4, align 4
  store i32 2, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 12
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  store i32 52, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %15, %16
  call void @print_number(i32 %17)
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 5, %18
  %20 = sdiv i32 %19, 5
  call void @print_number(i32 %20)
  call void @print_number(i32 470)
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 6, %21
  %23 = sub nsw i32 %22, 42
  call void @print_number(i32 %23)
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 6, %24
  %26 = sub nsw i32 %25, 42
  call void @print_number(i32 %26)
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 6, %27
  %29 = sub nsw i32 %28, 42
  %30 = sdiv i32 470, %29
  call void @print_number(i32 %30)
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 5, %31
  %33 = sdiv i32 %32, 5
  %34 = add nsw i32 %33, 23
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 6, %35
  %37 = sub nsw i32 %36, 42
  %38 = sdiv i32 470, %37
  %39 = sub nsw i32 %34, %38
  call void @print_number(i32 %39)
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 2, %40
  %42 = mul nsw i32 %41, 5
  call void @print_number(i32 %42)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 20
  %45 = add nsw i32 %44, 2
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 8, %46
  %48 = mul nsw i32 %47, 4
  %49 = sub nsw i32 %45, %48
  call void @print_number(i32 %49)
  call void @print_number(i32 1)
  call void @print_number(i32 0)
  call void @print_number(i32 5)
  call void @print_number(i32 0)
  call void @print_number(i32 60)
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %50, %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32, i32* %3, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sub nsw i32 %60, %65
  call void @print_number(i32 %66)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  %73 = mul nsw i32 %72, 23
  %74 = add nsw i32 %67, %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sub nsw i32 %76, %81
  call void @print_number(i32 %82)
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 43
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %3, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* %4, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sub nsw i32 %86, %91
  call void @print_number(i32 %92)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = mul nsw i32 %93, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

; <label>:100:                                    ; preds = %0
  br label %101

; <label>:101:                                    ; preds = %100, %0
  %102 = phi i1 [ true, %0 ], [ true, %100 ]
  %103 = zext i1 %102 to i32
  call void @print_number(i32 %103)
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = mul nsw i32 %104, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %101
  br label %112

; <label>:112:                                    ; preds = %111, %101
  %113 = phi i1 [ false, %101 ], [ true, %111 ]
  %114 = zext i1 %113 to i32
  call void @print_number(i32 %114)
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

; <label>:118:                                    ; preds = %112
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = sub nsw i32 0, %122
  %124 = icmp ne i32 %123, 0
  br label %125

; <label>:125:                                    ; preds = %118, %112
  %126 = phi i1 [ true, %112 ], [ %124, %118 ]
  %127 = zext i1 %126 to i32
  %128 = mul nsw i32 %127, 23
  %129 = add nsw i32 %115, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

; <label>:131:                                    ; preds = %125
  store i32 1, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @return1()
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = add nsw i32 %132, %136
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sub nsw i32 1, %139
  %141 = icmp ne i32 %140, 0
  br label %142

; <label>:142:                                    ; preds = %131, %125
  %143 = phi i1 [ false, %125 ], [ %141, %131 ]
  %144 = zext i1 %143 to i32
  call void @print_number(i32 %144)
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = mul nsw i32 %145, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

; <label>:152:                                    ; preds = %142
  br label %153

; <label>:153:                                    ; preds = %152, %142
  %154 = phi i1 [ true, %142 ], [ true, %152 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = mul nsw i32 %156, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %153
  br label %164

; <label>:164:                                    ; preds = %163, %153
  %165 = phi i1 [ false, %153 ], [ true, %163 ]
  %166 = zext i1 %165 to i32
  %167 = add nsw i32 %155, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

; <label>:169:                                    ; preds = %164
  br i1 true, label %170, label %207

; <label>:170:                                    ; preds = %169, %164
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %190, label %173

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br label %182

; <label>:182:                                    ; preds = %179, %176
  %183 = phi i1 [ false, %176 ], [ %181, %179 ]
  br label %184

; <label>:184:                                    ; preds = %182, %173
  %185 = phi i1 [ true, %173 ], [ %183, %182 ]
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = sub nsw i32 0, %187
  %189 = icmp ne i32 %188, 0
  br label %190

; <label>:190:                                    ; preds = %184, %170
  %191 = phi i1 [ true, %170 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32
  %193 = mul nsw i32 %192, 2
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

; <label>:195:                                    ; preds = %190
  store i32 32, i32* %9, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @return1()
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = sdiv i32 %196, %199
  %201 = sub nsw i32 32, %200
  %202 = load i32, i32* %7, align 4
  %203 = xor i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br label %205

; <label>:205:                                    ; preds = %195, %190
  %206 = phi i1 [ false, %190 ], [ %204, %195 ]
  br label %207

; <label>:207:                                    ; preds = %205, %169
  %208 = phi i1 [ false, %169 ], [ %206, %205 ]
  %209 = zext i1 %208 to i32
  call void @print_number(i32 %209)
  %210 = load i32, i32* %2, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %215

; <label>:212:                                    ; preds = %207
  %213 = call i32 @return1()
  %214 = icmp ne i32 %213, 0
  br label %215

; <label>:215:                                    ; preds = %212, %207
  %216 = phi i1 [ false, %207 ], [ %214, %212 ]
  %217 = zext i1 %216 to i32
  call void @print_number(i32 %217)
  %218 = load i32, i32* %2, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %223

; <label>:220:                                    ; preds = %215
  %221 = call i32 @return1()
  %222 = icmp ne i32 %221, 0
  br label %223

; <label>:223:                                    ; preds = %220, %215
  %224 = phi i1 [ false, %215 ], [ %222, %220 ]
  %225 = zext i1 %224 to i32
  call void @print_number(i32 %225)
  store i32 0, i32* %9, align 4
  call void @print_number(i32 0)
  %226 = load i32, i32* %1, align 4
  ret i32 %226
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
