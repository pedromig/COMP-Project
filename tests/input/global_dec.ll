; ModuleID = '../tests/input/global_dec.c'
source_filename = "../tests/input/global_dec.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a1 = global i32 1, align 4
@a2 = global i32 1, align 4
@a3 = global i32 1, align 4
@a4 = global i32 0, align 4
@a5 = global i32 3, align 4
@a6 = global i32 3, align 4
@a7 = global i32 0, align 4
@a8 = global i32 1, align 4
@a9 = global i32 1, align 4
@a10 = global i32 0, align 4
@a11 = global i32 1, align 4
@a12 = global i32 0, align 4
@a13 = global i32 3, align 4
@a14 = global i32 -1, align 4
@a15 = global i32 2, align 4
@a16 = global i32 2, align 4
@a17 = global i32 2, align 4
@a18 = global i32 -2, align 4
@a19 = global i32 0, align 4
@b1 = global i16 1, align 2
@b2 = global i16 1, align 2
@b3 = global i16 1, align 2
@b4 = global i16 0, align 2
@b5 = global i16 3, align 2
@b6 = global i16 3, align 2
@b7 = global i16 0, align 2
@b8 = global i16 1, align 2
@b9 = global i16 1, align 2
@b10 = global i16 0, align 2
@b11 = global i16 1, align 2
@b12 = global i16 0, align 2
@b13 = global i16 3, align 2
@b14 = global i16 -1, align 2
@b15 = global i16 2, align 2
@b16 = global i16 2, align 2
@b17 = global i16 2, align 2
@b18 = global i16 -2, align 2
@b19 = global i16 0, align 2
@c1 = global i8 1, align 1
@c2 = global i8 1, align 1
@c3 = global i8 1, align 1
@c4 = global i8 0, align 1
@c5 = global i8 67, align 1
@c6 = global i8 67, align 1
@c7 = global i8 0, align 1
@c8 = global i8 1, align 1
@c9 = global i8 0, align 1
@c10 = global i8 1, align 1
@c11 = global i8 0, align 1
@c12 = global i8 1, align 1
@c13 = global i8 67, align 1
@c14 = global i8 63, align 1
@c16 = global i8 32, align 1
@c17 = global i8 65, align 1
@c18 = global i8 -65, align 1
@c19 = global i8 0, align 1
@d1 = global double 1.000000e+00, align 8
@d2 = global double 1.000000e+00, align 8
@d3 = global double 1.000000e+00, align 8
@d4 = global double 0.000000e+00, align 8
@d5 = global double 3.000000e+00, align 8
@d7 = global double 0.000000e+00, align 8
@d8 = global double 1.000000e+00, align 8
@d9 = global double 1.000000e+00, align 8
@d10 = global double 0.000000e+00, align 8
@d11 = global double 1.000000e+00, align 8
@d12 = global double 0.000000e+00, align 8
@d13 = global double 3.500000e+00, align 8
@d14 = global double -5.000000e-01, align 8
@d15 = global double 3.000000e+00, align 8
@d16 = global double 2.250000e+00, align 8
@d17 = global double 2.500000e+00, align 8
@d18 = global double -2.500000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = load i32, i32* @a1, align 4
  %2 = add nsw i32 48, %1
  %3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
  %4 = load i32, i32* @a2, align 4
  %5 = add nsw i32 48, %4
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
  %7 = load i32, i32* @a3, align 4
  %8 = add nsw i32 48, %7
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
  %10 = load i32, i32* @a4, align 4
  %11 = add nsw i32 48, %10
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %11)
  %13 = load i32, i32* @a5, align 4
  %14 = add nsw i32 48, %13
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
  %16 = load i32, i32* @a6, align 4
  %17 = add nsw i32 48, %16
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
  %19 = load i32, i32* @a7, align 4
  %20 = add nsw i32 48, %19
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
  %22 = load i32, i32* @a8, align 4
  %23 = add nsw i32 48, %22
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %23)
  %25 = load i32, i32* @a9, align 4
  %26 = add nsw i32 48, %25
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
  %28 = load i32, i32* @a10, align 4
  %29 = add nsw i32 48, %28
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
  %31 = load i32, i32* @a11, align 4
  %32 = add nsw i32 48, %31
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
  %34 = load i32, i32* @a12, align 4
  %35 = add nsw i32 48, %34
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
  %37 = load i32, i32* @a13, align 4
  %38 = add nsw i32 48, %37
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %38)
  %40 = load i32, i32* @a14, align 4
  %41 = add nsw i32 48, %40
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
  %43 = load i32, i32* @a15, align 4
  %44 = add nsw i32 48, %43
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
  %46 = load i32, i32* @a16, align 4
  %47 = add nsw i32 48, %46
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
  %49 = load i32, i32* @a17, align 4
  %50 = add nsw i32 48, %49
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %50)
  %52 = load i32, i32* @a18, align 4
  %53 = add nsw i32 48, %52
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %53)
  %55 = load i32, i32* @a19, align 4
  %56 = add nsw i32 48, %55
  %57 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %56)
  %58 = load i16, i16* @b1, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 48, %59
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %60)
  %62 = load i16, i16* @b2, align 2
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 48, %63
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
  %66 = load i16, i16* @b3, align 2
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 48, %67
  %69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
  %70 = load i16, i16* @b4, align 2
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 48, %71
  %73 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %72)
  %74 = load i16, i16* @b5, align 2
  %75 = sext i16 %74 to i32
  %76 = add nsw i32 48, %75
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %76)
  %78 = load i16, i16* @b6, align 2
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 48, %79
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %80)
  %82 = load i16, i16* @b7, align 2
  %83 = sext i16 %82 to i32
  %84 = add nsw i32 48, %83
  %85 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %84)
  %86 = load i16, i16* @b8, align 2
  %87 = sext i16 %86 to i32
  %88 = add nsw i32 48, %87
  %89 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %88)
  %90 = load i16, i16* @b9, align 2
  %91 = sext i16 %90 to i32
  %92 = add nsw i32 48, %91
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %92)
  %94 = load i16, i16* @b10, align 2
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 48, %95
  %97 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %96)
  %98 = load i16, i16* @b11, align 2
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 48, %99
  %101 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %100)
  %102 = load i16, i16* @b12, align 2
  %103 = sext i16 %102 to i32
  %104 = add nsw i32 48, %103
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %104)
  %106 = load i16, i16* @b13, align 2
  %107 = sext i16 %106 to i32
  %108 = add nsw i32 48, %107
  %109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %108)
  %110 = load i16, i16* @b14, align 2
  %111 = sext i16 %110 to i32
  %112 = add nsw i32 48, %111
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %112)
  %114 = load i16, i16* @b15, align 2
  %115 = sext i16 %114 to i32
  %116 = add nsw i32 48, %115
  %117 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %116)
  %118 = load i16, i16* @b16, align 2
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 48, %119
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %120)
  %122 = load i16, i16* @b17, align 2
  %123 = sext i16 %122 to i32
  %124 = add nsw i32 48, %123
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %124)
  %126 = load i16, i16* @b18, align 2
  %127 = sext i16 %126 to i32
  %128 = add nsw i32 48, %127
  %129 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %128)
  %130 = load i16, i16* @b19, align 2
  %131 = sext i16 %130 to i32
  %132 = add nsw i32 48, %131
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %132)
  %134 = load i8, i8* @c1, align 1
  %135 = sext i8 %134 to i32
  %136 = add nsw i32 48, %135
  %137 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %136)
  %138 = load i8, i8* @c2, align 1
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 48, %139
  %141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %140)
  %142 = load i8, i8* @c3, align 1
  %143 = sext i8 %142 to i32
  %144 = add nsw i32 48, %143
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %144)
  %146 = load i8, i8* @c4, align 1
  %147 = sext i8 %146 to i32
  %148 = add nsw i32 48, %147
  %149 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %148)
  %150 = load i8, i8* @c5, align 1
  %151 = sext i8 %150 to i32
  %152 = add nsw i32 48, %151
  %153 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %152)
  %154 = load i8, i8* @c6, align 1
  %155 = sext i8 %154 to i32
  %156 = add nsw i32 48, %155
  %157 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %156)
  %158 = load i8, i8* @c7, align 1
  %159 = sext i8 %158 to i32
  %160 = add nsw i32 48, %159
  %161 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %160)
  %162 = load i8, i8* @c8, align 1
  %163 = sext i8 %162 to i32
  %164 = add nsw i32 48, %163
  %165 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %164)
  %166 = load i8, i8* @c9, align 1
  %167 = sext i8 %166 to i32
  %168 = add nsw i32 48, %167
  %169 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %168)
  %170 = load i8, i8* @c10, align 1
  %171 = sext i8 %170 to i32
  %172 = add nsw i32 48, %171
  %173 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %172)
  %174 = load i8, i8* @c11, align 1
  %175 = sext i8 %174 to i32
  %176 = add nsw i32 48, %175
  %177 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %176)
  %178 = load i8, i8* @c12, align 1
  %179 = sext i8 %178 to i32
  %180 = add nsw i32 48, %179
  %181 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %180)
  %182 = load i8, i8* @c13, align 1
  %183 = sext i8 %182 to i32
  %184 = add nsw i32 48, %183
  %185 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %184)
  %186 = load i8, i8* @c14, align 1
  %187 = sext i8 %186 to i32
  %188 = add nsw i32 48, %187
  %189 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %188)
  %190 = load i8, i8* @c16, align 1
  %191 = sext i8 %190 to i32
  %192 = add nsw i32 48, %191
  %193 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %192)
  %194 = load i8, i8* @c17, align 1
  %195 = sext i8 %194 to i32
  %196 = add nsw i32 48, %195
  %197 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %196)
  %198 = load i8, i8* @c18, align 1
  %199 = sext i8 %198 to i32
  %200 = add nsw i32 48, %199
  %201 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %200)
  %202 = load i8, i8* @c19, align 1
  %203 = sext i8 %202 to i32
  %204 = add nsw i32 48, %203
  %205 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %204)
  ret i32 0
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
