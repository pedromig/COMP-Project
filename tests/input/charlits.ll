; ModuleID = '../tests/input/charlits.c'
source_filename = "../tests/input/charlits.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
  store i8 1, i8* %2, align 1
  %6 = load i8, i8* %2, align 1
  %7 = sext i8 %6 to i32
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %7)
  store i8 2, i8* %2, align 1
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
  store i8 3, i8* %2, align 1
  %12 = load i8, i8* %2, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %13)
  store i8 4, i8* %2, align 1
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
  store i8 5, i8* %2, align 1
  %18 = load i8, i8* %2, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %19)
  store i8 6, i8* %2, align 1
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
  store i8 7, i8* %2, align 1
  %24 = load i8, i8* %2, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
  store i8 8, i8* %2, align 1
  %27 = load i8, i8* %2, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
  store i8 9, i8* %2, align 1
  %30 = load i8, i8* %2, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
  store i8 10, i8* %2, align 1
  %33 = load i8, i8* %2, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
  store i8 11, i8* %2, align 1
  %36 = load i8, i8* %2, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %37)
  store i8 12, i8* %2, align 1
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
  store i8 13, i8* %2, align 1
  %42 = load i8, i8* %2, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
  store i8 14, i8* %2, align 1
  %45 = load i8, i8* %2, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
  store i8 15, i8* %2, align 1
  %48 = load i8, i8* %2, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %49)
  store i8 16, i8* %2, align 1
  %51 = load i8, i8* %2, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %52)
  store i8 17, i8* %2, align 1
  %54 = load i8, i8* %2, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %55)
  store i8 18, i8* %2, align 1
  %57 = load i8, i8* %2, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %58)
  store i8 19, i8* %2, align 1
  %60 = load i8, i8* %2, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %61)
  store i8 20, i8* %2, align 1
  %63 = load i8, i8* %2, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
  store i8 21, i8* %2, align 1
  %66 = load i8, i8* %2, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %67)
  store i8 22, i8* %2, align 1
  %69 = load i8, i8* %2, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %70)
  store i8 23, i8* %2, align 1
  %72 = load i8, i8* %2, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %73)
  store i8 24, i8* %2, align 1
  %75 = load i8, i8* %2, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %76)
  store i8 25, i8* %2, align 1
  %78 = load i8, i8* %2, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %79)
  store i8 26, i8* %2, align 1
  %81 = load i8, i8* %2, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %82)
  store i8 27, i8* %2, align 1
  %84 = load i8, i8* %2, align 1
  %85 = sext i8 %84 to i32
  %86 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %85)
  store i8 28, i8* %2, align 1
  %87 = load i8, i8* %2, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %88)
  store i8 29, i8* %2, align 1
  %90 = load i8, i8* %2, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %91)
  store i8 30, i8* %2, align 1
  %93 = load i8, i8* %2, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %94)
  store i8 31, i8* %2, align 1
  %96 = load i8, i8* %2, align 1
  %97 = sext i8 %96 to i32
  %98 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %97)
  store i8 32, i8* %2, align 1
  %99 = load i8, i8* %2, align 1
  %100 = sext i8 %99 to i32
  %101 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %100)
  store i8 33, i8* %2, align 1
  %102 = load i8, i8* %2, align 1
  %103 = sext i8 %102 to i32
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %103)
  store i8 34, i8* %2, align 1
  %105 = load i8, i8* %2, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %106)
  store i8 35, i8* %2, align 1
  %108 = load i8, i8* %2, align 1
  %109 = sext i8 %108 to i32
  %110 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %109)
  store i8 36, i8* %2, align 1
  %111 = load i8, i8* %2, align 1
  %112 = sext i8 %111 to i32
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %112)
  store i8 37, i8* %2, align 1
  %114 = load i8, i8* %2, align 1
  %115 = sext i8 %114 to i32
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %115)
  store i8 38, i8* %2, align 1
  %117 = load i8, i8* %2, align 1
  %118 = sext i8 %117 to i32
  %119 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %118)
  store i8 39, i8* %2, align 1
  %120 = load i8, i8* %2, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %121)
  store i8 40, i8* %2, align 1
  %123 = load i8, i8* %2, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %124)
  store i8 41, i8* %2, align 1
  %126 = load i8, i8* %2, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %127)
  store i8 42, i8* %2, align 1
  %129 = load i8, i8* %2, align 1
  %130 = sext i8 %129 to i32
  %131 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %130)
  store i8 43, i8* %2, align 1
  %132 = load i8, i8* %2, align 1
  %133 = sext i8 %132 to i32
  %134 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %133)
  store i8 44, i8* %2, align 1
  %135 = load i8, i8* %2, align 1
  %136 = sext i8 %135 to i32
  %137 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %136)
  store i8 45, i8* %2, align 1
  %138 = load i8, i8* %2, align 1
  %139 = sext i8 %138 to i32
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %139)
  store i8 46, i8* %2, align 1
  %141 = load i8, i8* %2, align 1
  %142 = sext i8 %141 to i32
  %143 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %142)
  store i8 47, i8* %2, align 1
  %144 = load i8, i8* %2, align 1
  %145 = sext i8 %144 to i32
  %146 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %145)
  store i8 48, i8* %2, align 1
  %147 = load i8, i8* %2, align 1
  %148 = sext i8 %147 to i32
  %149 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %148)
  store i8 49, i8* %2, align 1
  %150 = load i8, i8* %2, align 1
  %151 = sext i8 %150 to i32
  %152 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %151)
  store i8 50, i8* %2, align 1
  %153 = load i8, i8* %2, align 1
  %154 = sext i8 %153 to i32
  %155 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %154)
  store i8 51, i8* %2, align 1
  %156 = load i8, i8* %2, align 1
  %157 = sext i8 %156 to i32
  %158 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %157)
  store i8 52, i8* %2, align 1
  %159 = load i8, i8* %2, align 1
  %160 = sext i8 %159 to i32
  %161 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %160)
  store i8 53, i8* %2, align 1
  %162 = load i8, i8* %2, align 1
  %163 = sext i8 %162 to i32
  %164 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %163)
  store i8 54, i8* %2, align 1
  %165 = load i8, i8* %2, align 1
  %166 = sext i8 %165 to i32
  %167 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %166)
  store i8 55, i8* %2, align 1
  %168 = load i8, i8* %2, align 1
  %169 = sext i8 %168 to i32
  %170 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %169)
  store i8 56, i8* %2, align 1
  %171 = load i8, i8* %2, align 1
  %172 = sext i8 %171 to i32
  %173 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %172)
  store i8 57, i8* %2, align 1
  %174 = load i8, i8* %2, align 1
  %175 = sext i8 %174 to i32
  %176 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %175)
  store i8 58, i8* %2, align 1
  %177 = load i8, i8* %2, align 1
  %178 = sext i8 %177 to i32
  %179 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %178)
  store i8 59, i8* %2, align 1
  %180 = load i8, i8* %2, align 1
  %181 = sext i8 %180 to i32
  %182 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %181)
  store i8 60, i8* %2, align 1
  %183 = load i8, i8* %2, align 1
  %184 = sext i8 %183 to i32
  %185 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %184)
  store i8 61, i8* %2, align 1
  %186 = load i8, i8* %2, align 1
  %187 = sext i8 %186 to i32
  %188 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %187)
  store i8 62, i8* %2, align 1
  %189 = load i8, i8* %2, align 1
  %190 = sext i8 %189 to i32
  %191 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %190)
  store i8 63, i8* %2, align 1
  %192 = load i8, i8* %2, align 1
  %193 = sext i8 %192 to i32
  %194 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %193)
  store i8 64, i8* %2, align 1
  %195 = load i8, i8* %2, align 1
  %196 = sext i8 %195 to i32
  %197 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %196)
  store i8 65, i8* %2, align 1
  %198 = load i8, i8* %2, align 1
  %199 = sext i8 %198 to i32
  %200 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %199)
  store i8 66, i8* %2, align 1
  %201 = load i8, i8* %2, align 1
  %202 = sext i8 %201 to i32
  %203 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %202)
  store i8 67, i8* %2, align 1
  %204 = load i8, i8* %2, align 1
  %205 = sext i8 %204 to i32
  %206 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %205)
  store i8 68, i8* %2, align 1
  %207 = load i8, i8* %2, align 1
  %208 = sext i8 %207 to i32
  %209 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %208)
  store i8 69, i8* %2, align 1
  %210 = load i8, i8* %2, align 1
  %211 = sext i8 %210 to i32
  %212 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %211)
  store i8 70, i8* %2, align 1
  %213 = load i8, i8* %2, align 1
  %214 = sext i8 %213 to i32
  %215 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %214)
  store i8 71, i8* %2, align 1
  %216 = load i8, i8* %2, align 1
  %217 = sext i8 %216 to i32
  %218 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %217)
  store i8 72, i8* %2, align 1
  %219 = load i8, i8* %2, align 1
  %220 = sext i8 %219 to i32
  %221 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %220)
  store i8 73, i8* %2, align 1
  %222 = load i8, i8* %2, align 1
  %223 = sext i8 %222 to i32
  %224 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %223)
  store i8 74, i8* %2, align 1
  %225 = load i8, i8* %2, align 1
  %226 = sext i8 %225 to i32
  %227 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %226)
  store i8 75, i8* %2, align 1
  %228 = load i8, i8* %2, align 1
  %229 = sext i8 %228 to i32
  %230 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %229)
  store i8 76, i8* %2, align 1
  %231 = load i8, i8* %2, align 1
  %232 = sext i8 %231 to i32
  %233 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %232)
  store i8 77, i8* %2, align 1
  %234 = load i8, i8* %2, align 1
  %235 = sext i8 %234 to i32
  %236 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %235)
  store i8 78, i8* %2, align 1
  %237 = load i8, i8* %2, align 1
  %238 = sext i8 %237 to i32
  %239 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %238)
  store i8 79, i8* %2, align 1
  %240 = load i8, i8* %2, align 1
  %241 = sext i8 %240 to i32
  %242 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %241)
  store i8 80, i8* %2, align 1
  %243 = load i8, i8* %2, align 1
  %244 = sext i8 %243 to i32
  %245 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %244)
  store i8 81, i8* %2, align 1
  %246 = load i8, i8* %2, align 1
  %247 = sext i8 %246 to i32
  %248 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %247)
  store i8 82, i8* %2, align 1
  %249 = load i8, i8* %2, align 1
  %250 = sext i8 %249 to i32
  %251 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %250)
  store i8 83, i8* %2, align 1
  %252 = load i8, i8* %2, align 1
  %253 = sext i8 %252 to i32
  %254 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %253)
  store i8 84, i8* %2, align 1
  %255 = load i8, i8* %2, align 1
  %256 = sext i8 %255 to i32
  %257 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %256)
  store i8 85, i8* %2, align 1
  %258 = load i8, i8* %2, align 1
  %259 = sext i8 %258 to i32
  %260 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %259)
  store i8 86, i8* %2, align 1
  %261 = load i8, i8* %2, align 1
  %262 = sext i8 %261 to i32
  %263 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %262)
  store i8 87, i8* %2, align 1
  %264 = load i8, i8* %2, align 1
  %265 = sext i8 %264 to i32
  %266 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %265)
  store i8 88, i8* %2, align 1
  %267 = load i8, i8* %2, align 1
  %268 = sext i8 %267 to i32
  %269 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %268)
  store i8 89, i8* %2, align 1
  %270 = load i8, i8* %2, align 1
  %271 = sext i8 %270 to i32
  %272 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %271)
  store i8 90, i8* %2, align 1
  %273 = load i8, i8* %2, align 1
  %274 = sext i8 %273 to i32
  %275 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %274)
  store i8 91, i8* %2, align 1
  %276 = load i8, i8* %2, align 1
  %277 = sext i8 %276 to i32
  %278 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %277)
  store i8 92, i8* %2, align 1
  %279 = load i8, i8* %2, align 1
  %280 = sext i8 %279 to i32
  %281 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %280)
  store i8 93, i8* %2, align 1
  %282 = load i8, i8* %2, align 1
  %283 = sext i8 %282 to i32
  %284 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %283)
  store i8 94, i8* %2, align 1
  %285 = load i8, i8* %2, align 1
  %286 = sext i8 %285 to i32
  %287 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %286)
  store i8 95, i8* %2, align 1
  %288 = load i8, i8* %2, align 1
  %289 = sext i8 %288 to i32
  %290 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %289)
  store i8 96, i8* %2, align 1
  %291 = load i8, i8* %2, align 1
  %292 = sext i8 %291 to i32
  %293 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %292)
  store i8 97, i8* %2, align 1
  %294 = load i8, i8* %2, align 1
  %295 = sext i8 %294 to i32
  %296 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %295)
  store i8 98, i8* %2, align 1
  %297 = load i8, i8* %2, align 1
  %298 = sext i8 %297 to i32
  %299 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %298)
  store i8 99, i8* %2, align 1
  %300 = load i8, i8* %2, align 1
  %301 = sext i8 %300 to i32
  %302 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %301)
  store i8 100, i8* %2, align 1
  %303 = load i8, i8* %2, align 1
  %304 = sext i8 %303 to i32
  %305 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %304)
  store i8 101, i8* %2, align 1
  %306 = load i8, i8* %2, align 1
  %307 = sext i8 %306 to i32
  %308 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %307)
  store i8 102, i8* %2, align 1
  %309 = load i8, i8* %2, align 1
  %310 = sext i8 %309 to i32
  %311 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %310)
  store i8 103, i8* %2, align 1
  %312 = load i8, i8* %2, align 1
  %313 = sext i8 %312 to i32
  %314 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %313)
  store i8 104, i8* %2, align 1
  %315 = load i8, i8* %2, align 1
  %316 = sext i8 %315 to i32
  %317 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %316)
  store i8 105, i8* %2, align 1
  %318 = load i8, i8* %2, align 1
  %319 = sext i8 %318 to i32
  %320 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %319)
  store i8 106, i8* %2, align 1
  %321 = load i8, i8* %2, align 1
  %322 = sext i8 %321 to i32
  %323 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %322)
  store i8 107, i8* %2, align 1
  %324 = load i8, i8* %2, align 1
  %325 = sext i8 %324 to i32
  %326 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %325)
  store i8 108, i8* %2, align 1
  %327 = load i8, i8* %2, align 1
  %328 = sext i8 %327 to i32
  %329 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %328)
  store i8 109, i8* %2, align 1
  %330 = load i8, i8* %2, align 1
  %331 = sext i8 %330 to i32
  %332 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %331)
  store i8 110, i8* %2, align 1
  %333 = load i8, i8* %2, align 1
  %334 = sext i8 %333 to i32
  %335 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %334)
  store i8 111, i8* %2, align 1
  %336 = load i8, i8* %2, align 1
  %337 = sext i8 %336 to i32
  %338 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %337)
  store i8 112, i8* %2, align 1
  %339 = load i8, i8* %2, align 1
  %340 = sext i8 %339 to i32
  %341 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %340)
  store i8 113, i8* %2, align 1
  %342 = load i8, i8* %2, align 1
  %343 = sext i8 %342 to i32
  %344 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %343)
  store i8 114, i8* %2, align 1
  %345 = load i8, i8* %2, align 1
  %346 = sext i8 %345 to i32
  %347 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %346)
  store i8 115, i8* %2, align 1
  %348 = load i8, i8* %2, align 1
  %349 = sext i8 %348 to i32
  %350 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %349)
  store i8 116, i8* %2, align 1
  %351 = load i8, i8* %2, align 1
  %352 = sext i8 %351 to i32
  %353 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %352)
  store i8 117, i8* %2, align 1
  %354 = load i8, i8* %2, align 1
  %355 = sext i8 %354 to i32
  %356 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %355)
  store i8 118, i8* %2, align 1
  %357 = load i8, i8* %2, align 1
  %358 = sext i8 %357 to i32
  %359 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %358)
  store i8 119, i8* %2, align 1
  %360 = load i8, i8* %2, align 1
  %361 = sext i8 %360 to i32
  %362 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %361)
  store i8 120, i8* %2, align 1
  %363 = load i8, i8* %2, align 1
  %364 = sext i8 %363 to i32
  %365 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %364)
  store i8 121, i8* %2, align 1
  %366 = load i8, i8* %2, align 1
  %367 = sext i8 %366 to i32
  %368 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %367)
  store i8 122, i8* %2, align 1
  %369 = load i8, i8* %2, align 1
  %370 = sext i8 %369 to i32
  %371 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %370)
  store i8 123, i8* %2, align 1
  %372 = load i8, i8* %2, align 1
  %373 = sext i8 %372 to i32
  %374 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %373)
  store i8 124, i8* %2, align 1
  %375 = load i8, i8* %2, align 1
  %376 = sext i8 %375 to i32
  %377 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %376)
  store i8 125, i8* %2, align 1
  %378 = load i8, i8* %2, align 1
  %379 = sext i8 %378 to i32
  %380 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %379)
  store i8 126, i8* %2, align 1
  %381 = load i8, i8* %2, align 1
  %382 = sext i8 %381 to i32
  %383 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %382)
  store i8 127, i8* %2, align 1
  %384 = load i8, i8* %2, align 1
  %385 = sext i8 %384 to i32
  %386 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %385)
  store i8 -128, i8* %2, align 1
  %387 = load i8, i8* %2, align 1
  %388 = sext i8 %387 to i32
  %389 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %388)
  store i8 -127, i8* %2, align 1
  %390 = load i8, i8* %2, align 1
  %391 = sext i8 %390 to i32
  %392 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %391)
  store i8 -126, i8* %2, align 1
  %393 = load i8, i8* %2, align 1
  %394 = sext i8 %393 to i32
  %395 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %394)
  store i8 -125, i8* %2, align 1
  %396 = load i8, i8* %2, align 1
  %397 = sext i8 %396 to i32
  %398 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %397)
  store i8 -124, i8* %2, align 1
  %399 = load i8, i8* %2, align 1
  %400 = sext i8 %399 to i32
  %401 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %400)
  store i8 -123, i8* %2, align 1
  %402 = load i8, i8* %2, align 1
  %403 = sext i8 %402 to i32
  %404 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %403)
  store i8 -122, i8* %2, align 1
  %405 = load i8, i8* %2, align 1
  %406 = sext i8 %405 to i32
  %407 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %406)
  store i8 -121, i8* %2, align 1
  %408 = load i8, i8* %2, align 1
  %409 = sext i8 %408 to i32
  %410 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %409)
  store i8 -120, i8* %2, align 1
  %411 = load i8, i8* %2, align 1
  %412 = sext i8 %411 to i32
  %413 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %412)
  store i8 -119, i8* %2, align 1
  %414 = load i8, i8* %2, align 1
  %415 = sext i8 %414 to i32
  %416 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %415)
  store i8 -118, i8* %2, align 1
  %417 = load i8, i8* %2, align 1
  %418 = sext i8 %417 to i32
  %419 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %418)
  store i8 -117, i8* %2, align 1
  %420 = load i8, i8* %2, align 1
  %421 = sext i8 %420 to i32
  %422 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %421)
  store i8 -116, i8* %2, align 1
  %423 = load i8, i8* %2, align 1
  %424 = sext i8 %423 to i32
  %425 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %424)
  store i8 -115, i8* %2, align 1
  %426 = load i8, i8* %2, align 1
  %427 = sext i8 %426 to i32
  %428 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %427)
  store i8 -114, i8* %2, align 1
  %429 = load i8, i8* %2, align 1
  %430 = sext i8 %429 to i32
  %431 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %430)
  store i8 -113, i8* %2, align 1
  %432 = load i8, i8* %2, align 1
  %433 = sext i8 %432 to i32
  %434 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %433)
  store i8 -112, i8* %2, align 1
  %435 = load i8, i8* %2, align 1
  %436 = sext i8 %435 to i32
  %437 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %436)
  store i8 -111, i8* %2, align 1
  %438 = load i8, i8* %2, align 1
  %439 = sext i8 %438 to i32
  %440 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %439)
  store i8 -110, i8* %2, align 1
  %441 = load i8, i8* %2, align 1
  %442 = sext i8 %441 to i32
  %443 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %442)
  store i8 -109, i8* %2, align 1
  %444 = load i8, i8* %2, align 1
  %445 = sext i8 %444 to i32
  %446 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %445)
  store i8 -108, i8* %2, align 1
  %447 = load i8, i8* %2, align 1
  %448 = sext i8 %447 to i32
  %449 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %448)
  store i8 -107, i8* %2, align 1
  %450 = load i8, i8* %2, align 1
  %451 = sext i8 %450 to i32
  %452 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %451)
  store i8 -106, i8* %2, align 1
  %453 = load i8, i8* %2, align 1
  %454 = sext i8 %453 to i32
  %455 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %454)
  store i8 -105, i8* %2, align 1
  %456 = load i8, i8* %2, align 1
  %457 = sext i8 %456 to i32
  %458 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %457)
  store i8 -104, i8* %2, align 1
  %459 = load i8, i8* %2, align 1
  %460 = sext i8 %459 to i32
  %461 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %460)
  store i8 -103, i8* %2, align 1
  %462 = load i8, i8* %2, align 1
  %463 = sext i8 %462 to i32
  %464 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %463)
  store i8 -102, i8* %2, align 1
  %465 = load i8, i8* %2, align 1
  %466 = sext i8 %465 to i32
  %467 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %466)
  store i8 -101, i8* %2, align 1
  %468 = load i8, i8* %2, align 1
  %469 = sext i8 %468 to i32
  %470 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %469)
  store i8 -100, i8* %2, align 1
  %471 = load i8, i8* %2, align 1
  %472 = sext i8 %471 to i32
  %473 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %472)
  store i8 -99, i8* %2, align 1
  %474 = load i8, i8* %2, align 1
  %475 = sext i8 %474 to i32
  %476 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %475)
  store i8 -98, i8* %2, align 1
  %477 = load i8, i8* %2, align 1
  %478 = sext i8 %477 to i32
  %479 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %478)
  store i8 -97, i8* %2, align 1
  %480 = load i8, i8* %2, align 1
  %481 = sext i8 %480 to i32
  %482 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %481)
  store i8 -96, i8* %2, align 1
  %483 = load i8, i8* %2, align 1
  %484 = sext i8 %483 to i32
  %485 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %484)
  store i8 -95, i8* %2, align 1
  %486 = load i8, i8* %2, align 1
  %487 = sext i8 %486 to i32
  %488 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %487)
  store i8 -94, i8* %2, align 1
  %489 = load i8, i8* %2, align 1
  %490 = sext i8 %489 to i32
  %491 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %490)
  store i8 -93, i8* %2, align 1
  %492 = load i8, i8* %2, align 1
  %493 = sext i8 %492 to i32
  %494 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %493)
  store i8 -92, i8* %2, align 1
  %495 = load i8, i8* %2, align 1
  %496 = sext i8 %495 to i32
  %497 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %496)
  store i8 -91, i8* %2, align 1
  %498 = load i8, i8* %2, align 1
  %499 = sext i8 %498 to i32
  %500 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %499)
  store i8 -90, i8* %2, align 1
  %501 = load i8, i8* %2, align 1
  %502 = sext i8 %501 to i32
  %503 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %502)
  store i8 -89, i8* %2, align 1
  %504 = load i8, i8* %2, align 1
  %505 = sext i8 %504 to i32
  %506 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %505)
  store i8 -88, i8* %2, align 1
  %507 = load i8, i8* %2, align 1
  %508 = sext i8 %507 to i32
  %509 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %508)
  store i8 -87, i8* %2, align 1
  %510 = load i8, i8* %2, align 1
  %511 = sext i8 %510 to i32
  %512 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %511)
  store i8 -86, i8* %2, align 1
  %513 = load i8, i8* %2, align 1
  %514 = sext i8 %513 to i32
  %515 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %514)
  store i8 -85, i8* %2, align 1
  %516 = load i8, i8* %2, align 1
  %517 = sext i8 %516 to i32
  %518 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %517)
  store i8 -84, i8* %2, align 1
  %519 = load i8, i8* %2, align 1
  %520 = sext i8 %519 to i32
  %521 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %520)
  store i8 -83, i8* %2, align 1
  %522 = load i8, i8* %2, align 1
  %523 = sext i8 %522 to i32
  %524 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %523)
  store i8 -82, i8* %2, align 1
  %525 = load i8, i8* %2, align 1
  %526 = sext i8 %525 to i32
  %527 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %526)
  store i8 -81, i8* %2, align 1
  %528 = load i8, i8* %2, align 1
  %529 = sext i8 %528 to i32
  %530 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %529)
  store i8 -80, i8* %2, align 1
  %531 = load i8, i8* %2, align 1
  %532 = sext i8 %531 to i32
  %533 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %532)
  store i8 -79, i8* %2, align 1
  %534 = load i8, i8* %2, align 1
  %535 = sext i8 %534 to i32
  %536 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %535)
  store i8 -78, i8* %2, align 1
  %537 = load i8, i8* %2, align 1
  %538 = sext i8 %537 to i32
  %539 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %538)
  store i8 -77, i8* %2, align 1
  %540 = load i8, i8* %2, align 1
  %541 = sext i8 %540 to i32
  %542 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %541)
  store i8 -76, i8* %2, align 1
  %543 = load i8, i8* %2, align 1
  %544 = sext i8 %543 to i32
  %545 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %544)
  store i8 -75, i8* %2, align 1
  %546 = load i8, i8* %2, align 1
  %547 = sext i8 %546 to i32
  %548 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %547)
  store i8 -74, i8* %2, align 1
  %549 = load i8, i8* %2, align 1
  %550 = sext i8 %549 to i32
  %551 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %550)
  store i8 -73, i8* %2, align 1
  %552 = load i8, i8* %2, align 1
  %553 = sext i8 %552 to i32
  %554 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %553)
  store i8 -72, i8* %2, align 1
  %555 = load i8, i8* %2, align 1
  %556 = sext i8 %555 to i32
  %557 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %556)
  store i8 -71, i8* %2, align 1
  %558 = load i8, i8* %2, align 1
  %559 = sext i8 %558 to i32
  %560 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %559)
  store i8 -70, i8* %2, align 1
  %561 = load i8, i8* %2, align 1
  %562 = sext i8 %561 to i32
  %563 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %562)
  store i8 -69, i8* %2, align 1
  %564 = load i8, i8* %2, align 1
  %565 = sext i8 %564 to i32
  %566 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %565)
  store i8 -68, i8* %2, align 1
  %567 = load i8, i8* %2, align 1
  %568 = sext i8 %567 to i32
  %569 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %568)
  store i8 -67, i8* %2, align 1
  %570 = load i8, i8* %2, align 1
  %571 = sext i8 %570 to i32
  %572 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %571)
  store i8 -66, i8* %2, align 1
  %573 = load i8, i8* %2, align 1
  %574 = sext i8 %573 to i32
  %575 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %574)
  store i8 -65, i8* %2, align 1
  %576 = load i8, i8* %2, align 1
  %577 = sext i8 %576 to i32
  %578 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %577)
  store i8 -64, i8* %2, align 1
  %579 = load i8, i8* %2, align 1
  %580 = sext i8 %579 to i32
  %581 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %580)
  store i8 -63, i8* %2, align 1
  %582 = load i8, i8* %2, align 1
  %583 = sext i8 %582 to i32
  %584 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %583)
  store i8 -62, i8* %2, align 1
  %585 = load i8, i8* %2, align 1
  %586 = sext i8 %585 to i32
  %587 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %586)
  store i8 -61, i8* %2, align 1
  %588 = load i8, i8* %2, align 1
  %589 = sext i8 %588 to i32
  %590 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %589)
  store i8 -60, i8* %2, align 1
  %591 = load i8, i8* %2, align 1
  %592 = sext i8 %591 to i32
  %593 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %592)
  store i8 -59, i8* %2, align 1
  %594 = load i8, i8* %2, align 1
  %595 = sext i8 %594 to i32
  %596 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %595)
  store i8 -58, i8* %2, align 1
  %597 = load i8, i8* %2, align 1
  %598 = sext i8 %597 to i32
  %599 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %598)
  store i8 -57, i8* %2, align 1
  %600 = load i8, i8* %2, align 1
  %601 = sext i8 %600 to i32
  %602 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %601)
  store i8 -56, i8* %2, align 1
  %603 = load i8, i8* %2, align 1
  %604 = sext i8 %603 to i32
  %605 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %604)
  store i8 -55, i8* %2, align 1
  %606 = load i8, i8* %2, align 1
  %607 = sext i8 %606 to i32
  %608 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %607)
  store i8 -54, i8* %2, align 1
  %609 = load i8, i8* %2, align 1
  %610 = sext i8 %609 to i32
  %611 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %610)
  store i8 -53, i8* %2, align 1
  %612 = load i8, i8* %2, align 1
  %613 = sext i8 %612 to i32
  %614 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %613)
  store i8 -52, i8* %2, align 1
  %615 = load i8, i8* %2, align 1
  %616 = sext i8 %615 to i32
  %617 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %616)
  store i8 -51, i8* %2, align 1
  %618 = load i8, i8* %2, align 1
  %619 = sext i8 %618 to i32
  %620 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %619)
  store i8 -50, i8* %2, align 1
  %621 = load i8, i8* %2, align 1
  %622 = sext i8 %621 to i32
  %623 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %622)
  store i8 -49, i8* %2, align 1
  %624 = load i8, i8* %2, align 1
  %625 = sext i8 %624 to i32
  %626 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %625)
  store i8 -48, i8* %2, align 1
  %627 = load i8, i8* %2, align 1
  %628 = sext i8 %627 to i32
  %629 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %628)
  store i8 -47, i8* %2, align 1
  %630 = load i8, i8* %2, align 1
  %631 = sext i8 %630 to i32
  %632 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %631)
  store i8 -46, i8* %2, align 1
  %633 = load i8, i8* %2, align 1
  %634 = sext i8 %633 to i32
  %635 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %634)
  store i8 -45, i8* %2, align 1
  %636 = load i8, i8* %2, align 1
  %637 = sext i8 %636 to i32
  %638 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %637)
  store i8 -44, i8* %2, align 1
  %639 = load i8, i8* %2, align 1
  %640 = sext i8 %639 to i32
  %641 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %640)
  store i8 -43, i8* %2, align 1
  %642 = load i8, i8* %2, align 1
  %643 = sext i8 %642 to i32
  %644 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %643)
  store i8 -42, i8* %2, align 1
  %645 = load i8, i8* %2, align 1
  %646 = sext i8 %645 to i32
  %647 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %646)
  store i8 -41, i8* %2, align 1
  %648 = load i8, i8* %2, align 1
  %649 = sext i8 %648 to i32
  %650 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %649)
  store i8 -40, i8* %2, align 1
  %651 = load i8, i8* %2, align 1
  %652 = sext i8 %651 to i32
  %653 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %652)
  store i8 -39, i8* %2, align 1
  %654 = load i8, i8* %2, align 1
  %655 = sext i8 %654 to i32
  %656 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %655)
  store i8 -38, i8* %2, align 1
  %657 = load i8, i8* %2, align 1
  %658 = sext i8 %657 to i32
  %659 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %658)
  store i8 -37, i8* %2, align 1
  %660 = load i8, i8* %2, align 1
  %661 = sext i8 %660 to i32
  %662 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %661)
  store i8 -36, i8* %2, align 1
  %663 = load i8, i8* %2, align 1
  %664 = sext i8 %663 to i32
  %665 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %664)
  store i8 -35, i8* %2, align 1
  %666 = load i8, i8* %2, align 1
  %667 = sext i8 %666 to i32
  %668 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %667)
  store i8 -34, i8* %2, align 1
  %669 = load i8, i8* %2, align 1
  %670 = sext i8 %669 to i32
  %671 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %670)
  store i8 -33, i8* %2, align 1
  %672 = load i8, i8* %2, align 1
  %673 = sext i8 %672 to i32
  %674 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %673)
  store i8 -32, i8* %2, align 1
  %675 = load i8, i8* %2, align 1
  %676 = sext i8 %675 to i32
  %677 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %676)
  store i8 -31, i8* %2, align 1
  %678 = load i8, i8* %2, align 1
  %679 = sext i8 %678 to i32
  %680 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %679)
  store i8 -30, i8* %2, align 1
  %681 = load i8, i8* %2, align 1
  %682 = sext i8 %681 to i32
  %683 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %682)
  store i8 -29, i8* %2, align 1
  %684 = load i8, i8* %2, align 1
  %685 = sext i8 %684 to i32
  %686 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %685)
  store i8 -28, i8* %2, align 1
  %687 = load i8, i8* %2, align 1
  %688 = sext i8 %687 to i32
  %689 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %688)
  store i8 -27, i8* %2, align 1
  %690 = load i8, i8* %2, align 1
  %691 = sext i8 %690 to i32
  %692 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %691)
  store i8 -26, i8* %2, align 1
  %693 = load i8, i8* %2, align 1
  %694 = sext i8 %693 to i32
  %695 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %694)
  store i8 -25, i8* %2, align 1
  %696 = load i8, i8* %2, align 1
  %697 = sext i8 %696 to i32
  %698 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %697)
  store i8 -24, i8* %2, align 1
  %699 = load i8, i8* %2, align 1
  %700 = sext i8 %699 to i32
  %701 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %700)
  store i8 -23, i8* %2, align 1
  %702 = load i8, i8* %2, align 1
  %703 = sext i8 %702 to i32
  %704 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %703)
  store i8 -22, i8* %2, align 1
  %705 = load i8, i8* %2, align 1
  %706 = sext i8 %705 to i32
  %707 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %706)
  store i8 -21, i8* %2, align 1
  %708 = load i8, i8* %2, align 1
  %709 = sext i8 %708 to i32
  %710 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %709)
  store i8 -20, i8* %2, align 1
  %711 = load i8, i8* %2, align 1
  %712 = sext i8 %711 to i32
  %713 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %712)
  store i8 -19, i8* %2, align 1
  %714 = load i8, i8* %2, align 1
  %715 = sext i8 %714 to i32
  %716 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %715)
  store i8 -18, i8* %2, align 1
  %717 = load i8, i8* %2, align 1
  %718 = sext i8 %717 to i32
  %719 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %718)
  store i8 -17, i8* %2, align 1
  %720 = load i8, i8* %2, align 1
  %721 = sext i8 %720 to i32
  %722 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %721)
  store i8 -16, i8* %2, align 1
  %723 = load i8, i8* %2, align 1
  %724 = sext i8 %723 to i32
  %725 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %724)
  store i8 -15, i8* %2, align 1
  %726 = load i8, i8* %2, align 1
  %727 = sext i8 %726 to i32
  %728 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %727)
  store i8 -14, i8* %2, align 1
  %729 = load i8, i8* %2, align 1
  %730 = sext i8 %729 to i32
  %731 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %730)
  store i8 -13, i8* %2, align 1
  %732 = load i8, i8* %2, align 1
  %733 = sext i8 %732 to i32
  %734 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %733)
  store i8 -12, i8* %2, align 1
  %735 = load i8, i8* %2, align 1
  %736 = sext i8 %735 to i32
  %737 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %736)
  store i8 -11, i8* %2, align 1
  %738 = load i8, i8* %2, align 1
  %739 = sext i8 %738 to i32
  %740 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %739)
  store i8 -10, i8* %2, align 1
  %741 = load i8, i8* %2, align 1
  %742 = sext i8 %741 to i32
  %743 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %742)
  store i8 -9, i8* %2, align 1
  %744 = load i8, i8* %2, align 1
  %745 = sext i8 %744 to i32
  %746 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %745)
  store i8 -8, i8* %2, align 1
  %747 = load i8, i8* %2, align 1
  %748 = sext i8 %747 to i32
  %749 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %748)
  store i8 -7, i8* %2, align 1
  %750 = load i8, i8* %2, align 1
  %751 = sext i8 %750 to i32
  %752 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %751)
  store i8 -6, i8* %2, align 1
  %753 = load i8, i8* %2, align 1
  %754 = sext i8 %753 to i32
  %755 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %754)
  store i8 -5, i8* %2, align 1
  %756 = load i8, i8* %2, align 1
  %757 = sext i8 %756 to i32
  %758 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %757)
  store i8 -4, i8* %2, align 1
  %759 = load i8, i8* %2, align 1
  %760 = sext i8 %759 to i32
  %761 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %760)
  store i8 -3, i8* %2, align 1
  %762 = load i8, i8* %2, align 1
  %763 = sext i8 %762 to i32
  %764 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %763)
  store i8 -2, i8* %2, align 1
  %765 = load i8, i8* %2, align 1
  %766 = sext i8 %765 to i32
  %767 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %766)
  store i8 0, i8* %2, align 1
  %768 = load i8, i8* %2, align 1
  %769 = sext i8 %768 to i32
  %770 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %769)
  store i8 0, i8* %2, align 1
  %771 = load i8, i8* %2, align 1
  %772 = sext i8 %771 to i32
  %773 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %772)
  store i8 0, i8* %2, align 1
  %774 = load i8, i8* %2, align 1
  %775 = sext i8 %774 to i32
  %776 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %775)
  store i8 1, i8* %2, align 1
  %777 = load i8, i8* %2, align 1
  %778 = sext i8 %777 to i32
  %779 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %778)
  store i8 2, i8* %2, align 1
  %780 = load i8, i8* %2, align 1
  %781 = sext i8 %780 to i32
  %782 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %781)
  store i8 3, i8* %2, align 1
  %783 = load i8, i8* %2, align 1
  %784 = sext i8 %783 to i32
  %785 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %784)
  store i8 4, i8* %2, align 1
  %786 = load i8, i8* %2, align 1
  %787 = sext i8 %786 to i32
  %788 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %787)
  store i8 5, i8* %2, align 1
  %789 = load i8, i8* %2, align 1
  %790 = sext i8 %789 to i32
  %791 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %790)
  store i8 6, i8* %2, align 1
  %792 = load i8, i8* %2, align 1
  %793 = sext i8 %792 to i32
  %794 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %793)
  store i8 7, i8* %2, align 1
  %795 = load i8, i8* %2, align 1
  %796 = sext i8 %795 to i32
  %797 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %796)
  store i8 1, i8* %2, align 1
  %798 = load i8, i8* %2, align 1
  %799 = sext i8 %798 to i32
  %800 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %799)
  store i8 8, i8* %2, align 1
  %801 = load i8, i8* %2, align 1
  %802 = sext i8 %801 to i32
  %803 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %802)
  store i8 9, i8* %2, align 1
  %804 = load i8, i8* %2, align 1
  %805 = sext i8 %804 to i32
  %806 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %805)
  store i8 10, i8* %2, align 1
  %807 = load i8, i8* %2, align 1
  %808 = sext i8 %807 to i32
  %809 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %808)
  store i8 11, i8* %2, align 1
  %810 = load i8, i8* %2, align 1
  %811 = sext i8 %810 to i32
  %812 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %811)
  store i8 12, i8* %2, align 1
  %813 = load i8, i8* %2, align 1
  %814 = sext i8 %813 to i32
  %815 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %814)
  store i8 13, i8* %2, align 1
  %816 = load i8, i8* %2, align 1
  %817 = sext i8 %816 to i32
  %818 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %817)
  store i8 14, i8* %2, align 1
  %819 = load i8, i8* %2, align 1
  %820 = sext i8 %819 to i32
  %821 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %820)
  store i8 15, i8* %2, align 1
  %822 = load i8, i8* %2, align 1
  %823 = sext i8 %822 to i32
  %824 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %823)
  store i8 2, i8* %2, align 1
  %825 = load i8, i8* %2, align 1
  %826 = sext i8 %825 to i32
  %827 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %826)
  store i8 16, i8* %2, align 1
  %828 = load i8, i8* %2, align 1
  %829 = sext i8 %828 to i32
  %830 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %829)
  store i8 17, i8* %2, align 1
  %831 = load i8, i8* %2, align 1
  %832 = sext i8 %831 to i32
  %833 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %832)
  store i8 18, i8* %2, align 1
  %834 = load i8, i8* %2, align 1
  %835 = sext i8 %834 to i32
  %836 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %835)
  store i8 19, i8* %2, align 1
  %837 = load i8, i8* %2, align 1
  %838 = sext i8 %837 to i32
  %839 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %838)
  store i8 20, i8* %2, align 1
  %840 = load i8, i8* %2, align 1
  %841 = sext i8 %840 to i32
  %842 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %841)
  store i8 21, i8* %2, align 1
  %843 = load i8, i8* %2, align 1
  %844 = sext i8 %843 to i32
  %845 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %844)
  store i8 22, i8* %2, align 1
  %846 = load i8, i8* %2, align 1
  %847 = sext i8 %846 to i32
  %848 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %847)
  store i8 23, i8* %2, align 1
  %849 = load i8, i8* %2, align 1
  %850 = sext i8 %849 to i32
  %851 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %850)
  store i8 3, i8* %2, align 1
  %852 = load i8, i8* %2, align 1
  %853 = sext i8 %852 to i32
  %854 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %853)
  store i8 24, i8* %2, align 1
  %855 = load i8, i8* %2, align 1
  %856 = sext i8 %855 to i32
  %857 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %856)
  store i8 25, i8* %2, align 1
  %858 = load i8, i8* %2, align 1
  %859 = sext i8 %858 to i32
  %860 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %859)
  store i8 26, i8* %2, align 1
  %861 = load i8, i8* %2, align 1
  %862 = sext i8 %861 to i32
  %863 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %862)
  store i8 27, i8* %2, align 1
  %864 = load i8, i8* %2, align 1
  %865 = sext i8 %864 to i32
  %866 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %865)
  store i8 28, i8* %2, align 1
  %867 = load i8, i8* %2, align 1
  %868 = sext i8 %867 to i32
  %869 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %868)
  store i8 29, i8* %2, align 1
  %870 = load i8, i8* %2, align 1
  %871 = sext i8 %870 to i32
  %872 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %871)
  store i8 30, i8* %2, align 1
  %873 = load i8, i8* %2, align 1
  %874 = sext i8 %873 to i32
  %875 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %874)
  store i8 31, i8* %2, align 1
  %876 = load i8, i8* %2, align 1
  %877 = sext i8 %876 to i32
  %878 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %877)
  store i8 4, i8* %2, align 1
  %879 = load i8, i8* %2, align 1
  %880 = sext i8 %879 to i32
  %881 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %880)
  store i8 32, i8* %2, align 1
  %882 = load i8, i8* %2, align 1
  %883 = sext i8 %882 to i32
  %884 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %883)
  store i8 33, i8* %2, align 1
  %885 = load i8, i8* %2, align 1
  %886 = sext i8 %885 to i32
  %887 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %886)
  store i8 34, i8* %2, align 1
  %888 = load i8, i8* %2, align 1
  %889 = sext i8 %888 to i32
  %890 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %889)
  store i8 35, i8* %2, align 1
  %891 = load i8, i8* %2, align 1
  %892 = sext i8 %891 to i32
  %893 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %892)
  store i8 36, i8* %2, align 1
  %894 = load i8, i8* %2, align 1
  %895 = sext i8 %894 to i32
  %896 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %895)
  store i8 37, i8* %2, align 1
  %897 = load i8, i8* %2, align 1
  %898 = sext i8 %897 to i32
  %899 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %898)
  store i8 38, i8* %2, align 1
  %900 = load i8, i8* %2, align 1
  %901 = sext i8 %900 to i32
  %902 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %901)
  store i8 39, i8* %2, align 1
  %903 = load i8, i8* %2, align 1
  %904 = sext i8 %903 to i32
  %905 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %904)
  store i8 5, i8* %2, align 1
  %906 = load i8, i8* %2, align 1
  %907 = sext i8 %906 to i32
  %908 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %907)
  store i8 40, i8* %2, align 1
  %909 = load i8, i8* %2, align 1
  %910 = sext i8 %909 to i32
  %911 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %910)
  store i8 41, i8* %2, align 1
  %912 = load i8, i8* %2, align 1
  %913 = sext i8 %912 to i32
  %914 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %913)
  store i8 42, i8* %2, align 1
  %915 = load i8, i8* %2, align 1
  %916 = sext i8 %915 to i32
  %917 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %916)
  store i8 43, i8* %2, align 1
  %918 = load i8, i8* %2, align 1
  %919 = sext i8 %918 to i32
  %920 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %919)
  store i8 44, i8* %2, align 1
  %921 = load i8, i8* %2, align 1
  %922 = sext i8 %921 to i32
  %923 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %922)
  store i8 45, i8* %2, align 1
  %924 = load i8, i8* %2, align 1
  %925 = sext i8 %924 to i32
  %926 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %925)
  store i8 46, i8* %2, align 1
  %927 = load i8, i8* %2, align 1
  %928 = sext i8 %927 to i32
  %929 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %928)
  store i8 47, i8* %2, align 1
  %930 = load i8, i8* %2, align 1
  %931 = sext i8 %930 to i32
  %932 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %931)
  store i8 6, i8* %2, align 1
  %933 = load i8, i8* %2, align 1
  %934 = sext i8 %933 to i32
  %935 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %934)
  store i8 48, i8* %2, align 1
  %936 = load i8, i8* %2, align 1
  %937 = sext i8 %936 to i32
  %938 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %937)
  store i8 49, i8* %2, align 1
  %939 = load i8, i8* %2, align 1
  %940 = sext i8 %939 to i32
  %941 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %940)
  store i8 50, i8* %2, align 1
  %942 = load i8, i8* %2, align 1
  %943 = sext i8 %942 to i32
  %944 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %943)
  store i8 51, i8* %2, align 1
  %945 = load i8, i8* %2, align 1
  %946 = sext i8 %945 to i32
  %947 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %946)
  store i8 52, i8* %2, align 1
  %948 = load i8, i8* %2, align 1
  %949 = sext i8 %948 to i32
  %950 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %949)
  store i8 53, i8* %2, align 1
  %951 = load i8, i8* %2, align 1
  %952 = sext i8 %951 to i32
  %953 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %952)
  store i8 54, i8* %2, align 1
  %954 = load i8, i8* %2, align 1
  %955 = sext i8 %954 to i32
  %956 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %955)
  store i8 55, i8* %2, align 1
  %957 = load i8, i8* %2, align 1
  %958 = sext i8 %957 to i32
  %959 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %958)
  store i8 7, i8* %2, align 1
  %960 = load i8, i8* %2, align 1
  %961 = sext i8 %960 to i32
  %962 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %961)
  store i8 56, i8* %2, align 1
  %963 = load i8, i8* %2, align 1
  %964 = sext i8 %963 to i32
  %965 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %964)
  store i8 57, i8* %2, align 1
  %966 = load i8, i8* %2, align 1
  %967 = sext i8 %966 to i32
  %968 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %967)
  store i8 58, i8* %2, align 1
  %969 = load i8, i8* %2, align 1
  %970 = sext i8 %969 to i32
  %971 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %970)
  store i8 59, i8* %2, align 1
  %972 = load i8, i8* %2, align 1
  %973 = sext i8 %972 to i32
  %974 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %973)
  store i8 60, i8* %2, align 1
  %975 = load i8, i8* %2, align 1
  %976 = sext i8 %975 to i32
  %977 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %976)
  store i8 61, i8* %2, align 1
  %978 = load i8, i8* %2, align 1
  %979 = sext i8 %978 to i32
  %980 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %979)
  store i8 62, i8* %2, align 1
  %981 = load i8, i8* %2, align 1
  %982 = sext i8 %981 to i32
  %983 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %982)
  store i8 63, i8* %2, align 1
  %984 = load i8, i8* %2, align 1
  %985 = sext i8 %984 to i32
  %986 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %985)
  store i8 1, i8* %2, align 1
  %987 = load i8, i8* %2, align 1
  %988 = sext i8 %987 to i32
  %989 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %988)
  store i8 8, i8* %2, align 1
  %990 = load i8, i8* %2, align 1
  %991 = sext i8 %990 to i32
  %992 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %991)
  store i8 64, i8* %2, align 1
  %993 = load i8, i8* %2, align 1
  %994 = sext i8 %993 to i32
  %995 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %994)
  store i8 65, i8* %2, align 1
  %996 = load i8, i8* %2, align 1
  %997 = sext i8 %996 to i32
  %998 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %997)
  store i8 66, i8* %2, align 1
  %999 = load i8, i8* %2, align 1
  %1000 = sext i8 %999 to i32
  %1001 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1000)
  store i8 67, i8* %2, align 1
  %1002 = load i8, i8* %2, align 1
  %1003 = sext i8 %1002 to i32
  %1004 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1003)
  store i8 68, i8* %2, align 1
  %1005 = load i8, i8* %2, align 1
  %1006 = sext i8 %1005 to i32
  %1007 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1006)
  store i8 69, i8* %2, align 1
  %1008 = load i8, i8* %2, align 1
  %1009 = sext i8 %1008 to i32
  %1010 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1009)
  store i8 70, i8* %2, align 1
  %1011 = load i8, i8* %2, align 1
  %1012 = sext i8 %1011 to i32
  %1013 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1012)
  store i8 71, i8* %2, align 1
  %1014 = load i8, i8* %2, align 1
  %1015 = sext i8 %1014 to i32
  %1016 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1015)
  store i8 9, i8* %2, align 1
  %1017 = load i8, i8* %2, align 1
  %1018 = sext i8 %1017 to i32
  %1019 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1018)
  store i8 72, i8* %2, align 1
  %1020 = load i8, i8* %2, align 1
  %1021 = sext i8 %1020 to i32
  %1022 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1021)
  store i8 73, i8* %2, align 1
  %1023 = load i8, i8* %2, align 1
  %1024 = sext i8 %1023 to i32
  %1025 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1024)
  store i8 74, i8* %2, align 1
  %1026 = load i8, i8* %2, align 1
  %1027 = sext i8 %1026 to i32
  %1028 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1027)
  store i8 75, i8* %2, align 1
  %1029 = load i8, i8* %2, align 1
  %1030 = sext i8 %1029 to i32
  %1031 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1030)
  store i8 76, i8* %2, align 1
  %1032 = load i8, i8* %2, align 1
  %1033 = sext i8 %1032 to i32
  %1034 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1033)
  store i8 77, i8* %2, align 1
  %1035 = load i8, i8* %2, align 1
  %1036 = sext i8 %1035 to i32
  %1037 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1036)
  store i8 78, i8* %2, align 1
  %1038 = load i8, i8* %2, align 1
  %1039 = sext i8 %1038 to i32
  %1040 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1039)
  store i8 79, i8* %2, align 1
  %1041 = load i8, i8* %2, align 1
  %1042 = sext i8 %1041 to i32
  %1043 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1042)
  store i8 10, i8* %2, align 1
  %1044 = load i8, i8* %2, align 1
  %1045 = sext i8 %1044 to i32
  %1046 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1045)
  store i8 80, i8* %2, align 1
  %1047 = load i8, i8* %2, align 1
  %1048 = sext i8 %1047 to i32
  %1049 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1048)
  store i8 81, i8* %2, align 1
  %1050 = load i8, i8* %2, align 1
  %1051 = sext i8 %1050 to i32
  %1052 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1051)
  store i8 82, i8* %2, align 1
  %1053 = load i8, i8* %2, align 1
  %1054 = sext i8 %1053 to i32
  %1055 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1054)
  store i8 83, i8* %2, align 1
  %1056 = load i8, i8* %2, align 1
  %1057 = sext i8 %1056 to i32
  %1058 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1057)
  store i8 84, i8* %2, align 1
  %1059 = load i8, i8* %2, align 1
  %1060 = sext i8 %1059 to i32
  %1061 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1060)
  store i8 85, i8* %2, align 1
  %1062 = load i8, i8* %2, align 1
  %1063 = sext i8 %1062 to i32
  %1064 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1063)
  store i8 86, i8* %2, align 1
  %1065 = load i8, i8* %2, align 1
  %1066 = sext i8 %1065 to i32
  %1067 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1066)
  store i8 87, i8* %2, align 1
  %1068 = load i8, i8* %2, align 1
  %1069 = sext i8 %1068 to i32
  %1070 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1069)
  store i8 11, i8* %2, align 1
  %1071 = load i8, i8* %2, align 1
  %1072 = sext i8 %1071 to i32
  %1073 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1072)
  store i8 88, i8* %2, align 1
  %1074 = load i8, i8* %2, align 1
  %1075 = sext i8 %1074 to i32
  %1076 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1075)
  store i8 89, i8* %2, align 1
  %1077 = load i8, i8* %2, align 1
  %1078 = sext i8 %1077 to i32
  %1079 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1078)
  store i8 90, i8* %2, align 1
  %1080 = load i8, i8* %2, align 1
  %1081 = sext i8 %1080 to i32
  %1082 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1081)
  store i8 91, i8* %2, align 1
  %1083 = load i8, i8* %2, align 1
  %1084 = sext i8 %1083 to i32
  %1085 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1084)
  store i8 92, i8* %2, align 1
  %1086 = load i8, i8* %2, align 1
  %1087 = sext i8 %1086 to i32
  %1088 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1087)
  store i8 93, i8* %2, align 1
  %1089 = load i8, i8* %2, align 1
  %1090 = sext i8 %1089 to i32
  %1091 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1090)
  store i8 94, i8* %2, align 1
  %1092 = load i8, i8* %2, align 1
  %1093 = sext i8 %1092 to i32
  %1094 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1093)
  store i8 95, i8* %2, align 1
  %1095 = load i8, i8* %2, align 1
  %1096 = sext i8 %1095 to i32
  %1097 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1096)
  store i8 12, i8* %2, align 1
  %1098 = load i8, i8* %2, align 1
  %1099 = sext i8 %1098 to i32
  %1100 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1099)
  store i8 96, i8* %2, align 1
  %1101 = load i8, i8* %2, align 1
  %1102 = sext i8 %1101 to i32
  %1103 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1102)
  store i8 97, i8* %2, align 1
  %1104 = load i8, i8* %2, align 1
  %1105 = sext i8 %1104 to i32
  %1106 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1105)
  store i8 98, i8* %2, align 1
  %1107 = load i8, i8* %2, align 1
  %1108 = sext i8 %1107 to i32
  %1109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1108)
  store i8 99, i8* %2, align 1
  %1110 = load i8, i8* %2, align 1
  %1111 = sext i8 %1110 to i32
  %1112 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1111)
  store i8 100, i8* %2, align 1
  %1113 = load i8, i8* %2, align 1
  %1114 = sext i8 %1113 to i32
  %1115 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1114)
  store i8 101, i8* %2, align 1
  %1116 = load i8, i8* %2, align 1
  %1117 = sext i8 %1116 to i32
  %1118 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1117)
  store i8 102, i8* %2, align 1
  %1119 = load i8, i8* %2, align 1
  %1120 = sext i8 %1119 to i32
  %1121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1120)
  store i8 103, i8* %2, align 1
  %1122 = load i8, i8* %2, align 1
  %1123 = sext i8 %1122 to i32
  %1124 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1123)
  store i8 13, i8* %2, align 1
  %1125 = load i8, i8* %2, align 1
  %1126 = sext i8 %1125 to i32
  %1127 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1126)
  store i8 104, i8* %2, align 1
  %1128 = load i8, i8* %2, align 1
  %1129 = sext i8 %1128 to i32
  %1130 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1129)
  store i8 105, i8* %2, align 1
  %1131 = load i8, i8* %2, align 1
  %1132 = sext i8 %1131 to i32
  %1133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1132)
  store i8 106, i8* %2, align 1
  %1134 = load i8, i8* %2, align 1
  %1135 = sext i8 %1134 to i32
  %1136 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1135)
  store i8 107, i8* %2, align 1
  %1137 = load i8, i8* %2, align 1
  %1138 = sext i8 %1137 to i32
  %1139 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1138)
  store i8 108, i8* %2, align 1
  %1140 = load i8, i8* %2, align 1
  %1141 = sext i8 %1140 to i32
  %1142 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1141)
  store i8 109, i8* %2, align 1
  %1143 = load i8, i8* %2, align 1
  %1144 = sext i8 %1143 to i32
  %1145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1144)
  store i8 110, i8* %2, align 1
  %1146 = load i8, i8* %2, align 1
  %1147 = sext i8 %1146 to i32
  %1148 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1147)
  store i8 111, i8* %2, align 1
  %1149 = load i8, i8* %2, align 1
  %1150 = sext i8 %1149 to i32
  %1151 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1150)
  store i8 14, i8* %2, align 1
  %1152 = load i8, i8* %2, align 1
  %1153 = sext i8 %1152 to i32
  %1154 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1153)
  store i8 112, i8* %2, align 1
  %1155 = load i8, i8* %2, align 1
  %1156 = sext i8 %1155 to i32
  %1157 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1156)
  store i8 113, i8* %2, align 1
  %1158 = load i8, i8* %2, align 1
  %1159 = sext i8 %1158 to i32
  %1160 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1159)
  store i8 114, i8* %2, align 1
  %1161 = load i8, i8* %2, align 1
  %1162 = sext i8 %1161 to i32
  %1163 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1162)
  store i8 115, i8* %2, align 1
  %1164 = load i8, i8* %2, align 1
  %1165 = sext i8 %1164 to i32
  %1166 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1165)
  store i8 116, i8* %2, align 1
  %1167 = load i8, i8* %2, align 1
  %1168 = sext i8 %1167 to i32
  %1169 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1168)
  store i8 117, i8* %2, align 1
  %1170 = load i8, i8* %2, align 1
  %1171 = sext i8 %1170 to i32
  %1172 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1171)
  store i8 118, i8* %2, align 1
  %1173 = load i8, i8* %2, align 1
  %1174 = sext i8 %1173 to i32
  %1175 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1174)
  store i8 119, i8* %2, align 1
  %1176 = load i8, i8* %2, align 1
  %1177 = sext i8 %1176 to i32
  %1178 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1177)
  store i8 15, i8* %2, align 1
  %1179 = load i8, i8* %2, align 1
  %1180 = sext i8 %1179 to i32
  %1181 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1180)
  store i8 120, i8* %2, align 1
  %1182 = load i8, i8* %2, align 1
  %1183 = sext i8 %1182 to i32
  %1184 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1183)
  store i8 121, i8* %2, align 1
  %1185 = load i8, i8* %2, align 1
  %1186 = sext i8 %1185 to i32
  %1187 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1186)
  store i8 122, i8* %2, align 1
  %1188 = load i8, i8* %2, align 1
  %1189 = sext i8 %1188 to i32
  %1190 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1189)
  store i8 123, i8* %2, align 1
  %1191 = load i8, i8* %2, align 1
  %1192 = sext i8 %1191 to i32
  %1193 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1192)
  store i8 124, i8* %2, align 1
  %1194 = load i8, i8* %2, align 1
  %1195 = sext i8 %1194 to i32
  %1196 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1195)
  store i8 125, i8* %2, align 1
  %1197 = load i8, i8* %2, align 1
  %1198 = sext i8 %1197 to i32
  %1199 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1198)
  store i8 126, i8* %2, align 1
  %1200 = load i8, i8* %2, align 1
  %1201 = sext i8 %1200 to i32
  %1202 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1201)
  store i8 127, i8* %2, align 1
  %1203 = load i8, i8* %2, align 1
  %1204 = sext i8 %1203 to i32
  %1205 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1204)
  store i8 2, i8* %2, align 1
  %1206 = load i8, i8* %2, align 1
  %1207 = sext i8 %1206 to i32
  %1208 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1207)
  store i8 16, i8* %2, align 1
  %1209 = load i8, i8* %2, align 1
  %1210 = sext i8 %1209 to i32
  %1211 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1210)
  store i8 -128, i8* %2, align 1
  %1212 = load i8, i8* %2, align 1
  %1213 = sext i8 %1212 to i32
  %1214 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1213)
  store i8 -127, i8* %2, align 1
  %1215 = load i8, i8* %2, align 1
  %1216 = sext i8 %1215 to i32
  %1217 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1216)
  store i8 -126, i8* %2, align 1
  %1218 = load i8, i8* %2, align 1
  %1219 = sext i8 %1218 to i32
  %1220 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1219)
  store i8 -125, i8* %2, align 1
  %1221 = load i8, i8* %2, align 1
  %1222 = sext i8 %1221 to i32
  %1223 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1222)
  store i8 -124, i8* %2, align 1
  %1224 = load i8, i8* %2, align 1
  %1225 = sext i8 %1224 to i32
  %1226 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1225)
  store i8 -123, i8* %2, align 1
  %1227 = load i8, i8* %2, align 1
  %1228 = sext i8 %1227 to i32
  %1229 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1228)
  store i8 -122, i8* %2, align 1
  %1230 = load i8, i8* %2, align 1
  %1231 = sext i8 %1230 to i32
  %1232 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1231)
  store i8 -121, i8* %2, align 1
  %1233 = load i8, i8* %2, align 1
  %1234 = sext i8 %1233 to i32
  %1235 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1234)
  store i8 17, i8* %2, align 1
  %1236 = load i8, i8* %2, align 1
  %1237 = sext i8 %1236 to i32
  %1238 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1237)
  store i8 -120, i8* %2, align 1
  %1239 = load i8, i8* %2, align 1
  %1240 = sext i8 %1239 to i32
  %1241 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1240)
  store i8 -119, i8* %2, align 1
  %1242 = load i8, i8* %2, align 1
  %1243 = sext i8 %1242 to i32
  %1244 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1243)
  store i8 -118, i8* %2, align 1
  %1245 = load i8, i8* %2, align 1
  %1246 = sext i8 %1245 to i32
  %1247 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1246)
  store i8 -117, i8* %2, align 1
  %1248 = load i8, i8* %2, align 1
  %1249 = sext i8 %1248 to i32
  %1250 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1249)
  store i8 -116, i8* %2, align 1
  %1251 = load i8, i8* %2, align 1
  %1252 = sext i8 %1251 to i32
  %1253 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1252)
  store i8 -115, i8* %2, align 1
  %1254 = load i8, i8* %2, align 1
  %1255 = sext i8 %1254 to i32
  %1256 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1255)
  store i8 -114, i8* %2, align 1
  %1257 = load i8, i8* %2, align 1
  %1258 = sext i8 %1257 to i32
  %1259 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1258)
  store i8 -113, i8* %2, align 1
  %1260 = load i8, i8* %2, align 1
  %1261 = sext i8 %1260 to i32
  %1262 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1261)
  store i8 18, i8* %2, align 1
  %1263 = load i8, i8* %2, align 1
  %1264 = sext i8 %1263 to i32
  %1265 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1264)
  store i8 -112, i8* %2, align 1
  %1266 = load i8, i8* %2, align 1
  %1267 = sext i8 %1266 to i32
  %1268 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1267)
  store i8 -111, i8* %2, align 1
  %1269 = load i8, i8* %2, align 1
  %1270 = sext i8 %1269 to i32
  %1271 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1270)
  store i8 -110, i8* %2, align 1
  %1272 = load i8, i8* %2, align 1
  %1273 = sext i8 %1272 to i32
  %1274 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1273)
  store i8 -109, i8* %2, align 1
  %1275 = load i8, i8* %2, align 1
  %1276 = sext i8 %1275 to i32
  %1277 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1276)
  store i8 -108, i8* %2, align 1
  %1278 = load i8, i8* %2, align 1
  %1279 = sext i8 %1278 to i32
  %1280 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1279)
  store i8 -107, i8* %2, align 1
  %1281 = load i8, i8* %2, align 1
  %1282 = sext i8 %1281 to i32
  %1283 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1282)
  store i8 -106, i8* %2, align 1
  %1284 = load i8, i8* %2, align 1
  %1285 = sext i8 %1284 to i32
  %1286 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1285)
  store i8 -105, i8* %2, align 1
  %1287 = load i8, i8* %2, align 1
  %1288 = sext i8 %1287 to i32
  %1289 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1288)
  store i8 19, i8* %2, align 1
  %1290 = load i8, i8* %2, align 1
  %1291 = sext i8 %1290 to i32
  %1292 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1291)
  store i8 -104, i8* %2, align 1
  %1293 = load i8, i8* %2, align 1
  %1294 = sext i8 %1293 to i32
  %1295 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1294)
  store i8 -103, i8* %2, align 1
  %1296 = load i8, i8* %2, align 1
  %1297 = sext i8 %1296 to i32
  %1298 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1297)
  store i8 -102, i8* %2, align 1
  %1299 = load i8, i8* %2, align 1
  %1300 = sext i8 %1299 to i32
  %1301 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1300)
  store i8 -101, i8* %2, align 1
  %1302 = load i8, i8* %2, align 1
  %1303 = sext i8 %1302 to i32
  %1304 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1303)
  store i8 -100, i8* %2, align 1
  %1305 = load i8, i8* %2, align 1
  %1306 = sext i8 %1305 to i32
  %1307 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1306)
  store i8 -99, i8* %2, align 1
  %1308 = load i8, i8* %2, align 1
  %1309 = sext i8 %1308 to i32
  %1310 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1309)
  store i8 -98, i8* %2, align 1
  %1311 = load i8, i8* %2, align 1
  %1312 = sext i8 %1311 to i32
  %1313 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1312)
  store i8 -97, i8* %2, align 1
  %1314 = load i8, i8* %2, align 1
  %1315 = sext i8 %1314 to i32
  %1316 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1315)
  store i8 20, i8* %2, align 1
  %1317 = load i8, i8* %2, align 1
  %1318 = sext i8 %1317 to i32
  %1319 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1318)
  store i8 -96, i8* %2, align 1
  %1320 = load i8, i8* %2, align 1
  %1321 = sext i8 %1320 to i32
  %1322 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1321)
  store i8 -95, i8* %2, align 1
  %1323 = load i8, i8* %2, align 1
  %1324 = sext i8 %1323 to i32
  %1325 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1324)
  store i8 -94, i8* %2, align 1
  %1326 = load i8, i8* %2, align 1
  %1327 = sext i8 %1326 to i32
  %1328 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1327)
  store i8 -93, i8* %2, align 1
  %1329 = load i8, i8* %2, align 1
  %1330 = sext i8 %1329 to i32
  %1331 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1330)
  store i8 -92, i8* %2, align 1
  %1332 = load i8, i8* %2, align 1
  %1333 = sext i8 %1332 to i32
  %1334 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1333)
  store i8 -91, i8* %2, align 1
  %1335 = load i8, i8* %2, align 1
  %1336 = sext i8 %1335 to i32
  %1337 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1336)
  store i8 -90, i8* %2, align 1
  %1338 = load i8, i8* %2, align 1
  %1339 = sext i8 %1338 to i32
  %1340 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1339)
  store i8 -89, i8* %2, align 1
  %1341 = load i8, i8* %2, align 1
  %1342 = sext i8 %1341 to i32
  %1343 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1342)
  store i8 21, i8* %2, align 1
  %1344 = load i8, i8* %2, align 1
  %1345 = sext i8 %1344 to i32
  %1346 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1345)
  store i8 -88, i8* %2, align 1
  %1347 = load i8, i8* %2, align 1
  %1348 = sext i8 %1347 to i32
  %1349 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1348)
  store i8 -87, i8* %2, align 1
  %1350 = load i8, i8* %2, align 1
  %1351 = sext i8 %1350 to i32
  %1352 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1351)
  store i8 -86, i8* %2, align 1
  %1353 = load i8, i8* %2, align 1
  %1354 = sext i8 %1353 to i32
  %1355 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1354)
  store i8 -85, i8* %2, align 1
  %1356 = load i8, i8* %2, align 1
  %1357 = sext i8 %1356 to i32
  %1358 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1357)
  store i8 -84, i8* %2, align 1
  %1359 = load i8, i8* %2, align 1
  %1360 = sext i8 %1359 to i32
  %1361 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1360)
  store i8 -83, i8* %2, align 1
  %1362 = load i8, i8* %2, align 1
  %1363 = sext i8 %1362 to i32
  %1364 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1363)
  store i8 -82, i8* %2, align 1
  %1365 = load i8, i8* %2, align 1
  %1366 = sext i8 %1365 to i32
  %1367 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1366)
  store i8 -81, i8* %2, align 1
  %1368 = load i8, i8* %2, align 1
  %1369 = sext i8 %1368 to i32
  %1370 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1369)
  store i8 22, i8* %2, align 1
  %1371 = load i8, i8* %2, align 1
  %1372 = sext i8 %1371 to i32
  %1373 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1372)
  store i8 -80, i8* %2, align 1
  %1374 = load i8, i8* %2, align 1
  %1375 = sext i8 %1374 to i32
  %1376 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1375)
  store i8 -79, i8* %2, align 1
  %1377 = load i8, i8* %2, align 1
  %1378 = sext i8 %1377 to i32
  %1379 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1378)
  store i8 -78, i8* %2, align 1
  %1380 = load i8, i8* %2, align 1
  %1381 = sext i8 %1380 to i32
  %1382 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1381)
  store i8 -77, i8* %2, align 1
  %1383 = load i8, i8* %2, align 1
  %1384 = sext i8 %1383 to i32
  %1385 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1384)
  store i8 -76, i8* %2, align 1
  %1386 = load i8, i8* %2, align 1
  %1387 = sext i8 %1386 to i32
  %1388 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1387)
  store i8 -75, i8* %2, align 1
  %1389 = load i8, i8* %2, align 1
  %1390 = sext i8 %1389 to i32
  %1391 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1390)
  store i8 -74, i8* %2, align 1
  %1392 = load i8, i8* %2, align 1
  %1393 = sext i8 %1392 to i32
  %1394 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1393)
  store i8 -73, i8* %2, align 1
  %1395 = load i8, i8* %2, align 1
  %1396 = sext i8 %1395 to i32
  %1397 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1396)
  store i8 23, i8* %2, align 1
  %1398 = load i8, i8* %2, align 1
  %1399 = sext i8 %1398 to i32
  %1400 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1399)
  store i8 -72, i8* %2, align 1
  %1401 = load i8, i8* %2, align 1
  %1402 = sext i8 %1401 to i32
  %1403 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1402)
  store i8 -71, i8* %2, align 1
  %1404 = load i8, i8* %2, align 1
  %1405 = sext i8 %1404 to i32
  %1406 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1405)
  store i8 -70, i8* %2, align 1
  %1407 = load i8, i8* %2, align 1
  %1408 = sext i8 %1407 to i32
  %1409 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1408)
  store i8 -69, i8* %2, align 1
  %1410 = load i8, i8* %2, align 1
  %1411 = sext i8 %1410 to i32
  %1412 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1411)
  store i8 -68, i8* %2, align 1
  %1413 = load i8, i8* %2, align 1
  %1414 = sext i8 %1413 to i32
  %1415 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1414)
  store i8 -67, i8* %2, align 1
  %1416 = load i8, i8* %2, align 1
  %1417 = sext i8 %1416 to i32
  %1418 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1417)
  store i8 -66, i8* %2, align 1
  %1419 = load i8, i8* %2, align 1
  %1420 = sext i8 %1419 to i32
  %1421 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1420)
  store i8 -65, i8* %2, align 1
  %1422 = load i8, i8* %2, align 1
  %1423 = sext i8 %1422 to i32
  %1424 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1423)
  store i8 3, i8* %2, align 1
  %1425 = load i8, i8* %2, align 1
  %1426 = sext i8 %1425 to i32
  %1427 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1426)
  store i8 24, i8* %2, align 1
  %1428 = load i8, i8* %2, align 1
  %1429 = sext i8 %1428 to i32
  %1430 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1429)
  store i8 -64, i8* %2, align 1
  %1431 = load i8, i8* %2, align 1
  %1432 = sext i8 %1431 to i32
  %1433 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1432)
  store i8 -63, i8* %2, align 1
  %1434 = load i8, i8* %2, align 1
  %1435 = sext i8 %1434 to i32
  %1436 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1435)
  store i8 -62, i8* %2, align 1
  %1437 = load i8, i8* %2, align 1
  %1438 = sext i8 %1437 to i32
  %1439 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1438)
  store i8 -61, i8* %2, align 1
  %1440 = load i8, i8* %2, align 1
  %1441 = sext i8 %1440 to i32
  %1442 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1441)
  store i8 -60, i8* %2, align 1
  %1443 = load i8, i8* %2, align 1
  %1444 = sext i8 %1443 to i32
  %1445 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1444)
  store i8 -59, i8* %2, align 1
  %1446 = load i8, i8* %2, align 1
  %1447 = sext i8 %1446 to i32
  %1448 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1447)
  store i8 -58, i8* %2, align 1
  %1449 = load i8, i8* %2, align 1
  %1450 = sext i8 %1449 to i32
  %1451 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1450)
  store i8 -57, i8* %2, align 1
  %1452 = load i8, i8* %2, align 1
  %1453 = sext i8 %1452 to i32
  %1454 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1453)
  store i8 25, i8* %2, align 1
  %1455 = load i8, i8* %2, align 1
  %1456 = sext i8 %1455 to i32
  %1457 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1456)
  store i8 -56, i8* %2, align 1
  %1458 = load i8, i8* %2, align 1
  %1459 = sext i8 %1458 to i32
  %1460 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1459)
  store i8 -55, i8* %2, align 1
  %1461 = load i8, i8* %2, align 1
  %1462 = sext i8 %1461 to i32
  %1463 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1462)
  store i8 -54, i8* %2, align 1
  %1464 = load i8, i8* %2, align 1
  %1465 = sext i8 %1464 to i32
  %1466 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1465)
  store i8 -53, i8* %2, align 1
  %1467 = load i8, i8* %2, align 1
  %1468 = sext i8 %1467 to i32
  %1469 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1468)
  store i8 -52, i8* %2, align 1
  %1470 = load i8, i8* %2, align 1
  %1471 = sext i8 %1470 to i32
  %1472 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1471)
  store i8 -51, i8* %2, align 1
  %1473 = load i8, i8* %2, align 1
  %1474 = sext i8 %1473 to i32
  %1475 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1474)
  store i8 -50, i8* %2, align 1
  %1476 = load i8, i8* %2, align 1
  %1477 = sext i8 %1476 to i32
  %1478 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1477)
  store i8 -49, i8* %2, align 1
  %1479 = load i8, i8* %2, align 1
  %1480 = sext i8 %1479 to i32
  %1481 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1480)
  store i8 26, i8* %2, align 1
  %1482 = load i8, i8* %2, align 1
  %1483 = sext i8 %1482 to i32
  %1484 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1483)
  store i8 -48, i8* %2, align 1
  %1485 = load i8, i8* %2, align 1
  %1486 = sext i8 %1485 to i32
  %1487 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1486)
  store i8 -47, i8* %2, align 1
  %1488 = load i8, i8* %2, align 1
  %1489 = sext i8 %1488 to i32
  %1490 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1489)
  store i8 -46, i8* %2, align 1
  %1491 = load i8, i8* %2, align 1
  %1492 = sext i8 %1491 to i32
  %1493 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1492)
  store i8 -45, i8* %2, align 1
  %1494 = load i8, i8* %2, align 1
  %1495 = sext i8 %1494 to i32
  %1496 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1495)
  store i8 -44, i8* %2, align 1
  %1497 = load i8, i8* %2, align 1
  %1498 = sext i8 %1497 to i32
  %1499 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1498)
  store i8 -43, i8* %2, align 1
  %1500 = load i8, i8* %2, align 1
  %1501 = sext i8 %1500 to i32
  %1502 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1501)
  store i8 -42, i8* %2, align 1
  %1503 = load i8, i8* %2, align 1
  %1504 = sext i8 %1503 to i32
  %1505 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1504)
  store i8 -41, i8* %2, align 1
  %1506 = load i8, i8* %2, align 1
  %1507 = sext i8 %1506 to i32
  %1508 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1507)
  store i8 27, i8* %2, align 1
  %1509 = load i8, i8* %2, align 1
  %1510 = sext i8 %1509 to i32
  %1511 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1510)
  store i8 -40, i8* %2, align 1
  %1512 = load i8, i8* %2, align 1
  %1513 = sext i8 %1512 to i32
  %1514 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1513)
  store i8 -39, i8* %2, align 1
  %1515 = load i8, i8* %2, align 1
  %1516 = sext i8 %1515 to i32
  %1517 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1516)
  store i8 -38, i8* %2, align 1
  %1518 = load i8, i8* %2, align 1
  %1519 = sext i8 %1518 to i32
  %1520 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1519)
  store i8 -37, i8* %2, align 1
  %1521 = load i8, i8* %2, align 1
  %1522 = sext i8 %1521 to i32
  %1523 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1522)
  store i8 -36, i8* %2, align 1
  %1524 = load i8, i8* %2, align 1
  %1525 = sext i8 %1524 to i32
  %1526 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1525)
  store i8 -35, i8* %2, align 1
  %1527 = load i8, i8* %2, align 1
  %1528 = sext i8 %1527 to i32
  %1529 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1528)
  store i8 -34, i8* %2, align 1
  %1530 = load i8, i8* %2, align 1
  %1531 = sext i8 %1530 to i32
  %1532 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1531)
  store i8 -33, i8* %2, align 1
  %1533 = load i8, i8* %2, align 1
  %1534 = sext i8 %1533 to i32
  %1535 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1534)
  store i8 28, i8* %2, align 1
  %1536 = load i8, i8* %2, align 1
  %1537 = sext i8 %1536 to i32
  %1538 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1537)
  store i8 -32, i8* %2, align 1
  %1539 = load i8, i8* %2, align 1
  %1540 = sext i8 %1539 to i32
  %1541 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1540)
  store i8 -31, i8* %2, align 1
  %1542 = load i8, i8* %2, align 1
  %1543 = sext i8 %1542 to i32
  %1544 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1543)
  store i8 -30, i8* %2, align 1
  %1545 = load i8, i8* %2, align 1
  %1546 = sext i8 %1545 to i32
  %1547 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1546)
  store i8 -29, i8* %2, align 1
  %1548 = load i8, i8* %2, align 1
  %1549 = sext i8 %1548 to i32
  %1550 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1549)
  store i8 -28, i8* %2, align 1
  %1551 = load i8, i8* %2, align 1
  %1552 = sext i8 %1551 to i32
  %1553 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1552)
  store i8 -27, i8* %2, align 1
  %1554 = load i8, i8* %2, align 1
  %1555 = sext i8 %1554 to i32
  %1556 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1555)
  store i8 -26, i8* %2, align 1
  %1557 = load i8, i8* %2, align 1
  %1558 = sext i8 %1557 to i32
  %1559 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1558)
  store i8 -25, i8* %2, align 1
  %1560 = load i8, i8* %2, align 1
  %1561 = sext i8 %1560 to i32
  %1562 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1561)
  store i8 29, i8* %2, align 1
  %1563 = load i8, i8* %2, align 1
  %1564 = sext i8 %1563 to i32
  %1565 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1564)
  store i8 -24, i8* %2, align 1
  %1566 = load i8, i8* %2, align 1
  %1567 = sext i8 %1566 to i32
  %1568 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1567)
  store i8 -23, i8* %2, align 1
  %1569 = load i8, i8* %2, align 1
  %1570 = sext i8 %1569 to i32
  %1571 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1570)
  store i8 -22, i8* %2, align 1
  %1572 = load i8, i8* %2, align 1
  %1573 = sext i8 %1572 to i32
  %1574 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1573)
  store i8 -21, i8* %2, align 1
  %1575 = load i8, i8* %2, align 1
  %1576 = sext i8 %1575 to i32
  %1577 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1576)
  store i8 -20, i8* %2, align 1
  %1578 = load i8, i8* %2, align 1
  %1579 = sext i8 %1578 to i32
  %1580 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1579)
  store i8 -19, i8* %2, align 1
  %1581 = load i8, i8* %2, align 1
  %1582 = sext i8 %1581 to i32
  %1583 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1582)
  store i8 -18, i8* %2, align 1
  %1584 = load i8, i8* %2, align 1
  %1585 = sext i8 %1584 to i32
  %1586 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1585)
  store i8 -17, i8* %2, align 1
  %1587 = load i8, i8* %2, align 1
  %1588 = sext i8 %1587 to i32
  %1589 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1588)
  store i8 30, i8* %2, align 1
  %1590 = load i8, i8* %2, align 1
  %1591 = sext i8 %1590 to i32
  %1592 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1591)
  store i8 -16, i8* %2, align 1
  %1593 = load i8, i8* %2, align 1
  %1594 = sext i8 %1593 to i32
  %1595 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1594)
  store i8 -15, i8* %2, align 1
  %1596 = load i8, i8* %2, align 1
  %1597 = sext i8 %1596 to i32
  %1598 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1597)
  store i8 -14, i8* %2, align 1
  %1599 = load i8, i8* %2, align 1
  %1600 = sext i8 %1599 to i32
  %1601 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1600)
  store i8 -13, i8* %2, align 1
  %1602 = load i8, i8* %2, align 1
  %1603 = sext i8 %1602 to i32
  %1604 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1603)
  store i8 -12, i8* %2, align 1
  %1605 = load i8, i8* %2, align 1
  %1606 = sext i8 %1605 to i32
  %1607 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1606)
  store i8 -11, i8* %2, align 1
  %1608 = load i8, i8* %2, align 1
  %1609 = sext i8 %1608 to i32
  %1610 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1609)
  store i8 -10, i8* %2, align 1
  %1611 = load i8, i8* %2, align 1
  %1612 = sext i8 %1611 to i32
  %1613 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1612)
  store i8 -9, i8* %2, align 1
  %1614 = load i8, i8* %2, align 1
  %1615 = sext i8 %1614 to i32
  %1616 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1615)
  store i8 31, i8* %2, align 1
  %1617 = load i8, i8* %2, align 1
  %1618 = sext i8 %1617 to i32
  %1619 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1618)
  store i8 -8, i8* %2, align 1
  %1620 = load i8, i8* %2, align 1
  %1621 = sext i8 %1620 to i32
  %1622 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1621)
  store i8 -7, i8* %2, align 1
  %1623 = load i8, i8* %2, align 1
  %1624 = sext i8 %1623 to i32
  %1625 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1624)
  store i8 -6, i8* %2, align 1
  %1626 = load i8, i8* %2, align 1
  %1627 = sext i8 %1626 to i32
  %1628 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1627)
  store i8 -5, i8* %2, align 1
  %1629 = load i8, i8* %2, align 1
  %1630 = sext i8 %1629 to i32
  %1631 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1630)
  store i8 -4, i8* %2, align 1
  %1632 = load i8, i8* %2, align 1
  %1633 = sext i8 %1632 to i32
  %1634 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1633)
  store i8 -3, i8* %2, align 1
  %1635 = load i8, i8* %2, align 1
  %1636 = sext i8 %1635 to i32
  %1637 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1636)
  store i8 -2, i8* %2, align 1
  %1638 = load i8, i8* %2, align 1
  %1639 = sext i8 %1638 to i32
  %1640 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1639)
  store i8 -1, i8* %2, align 1
  %1641 = load i8, i8* %2, align 1
  %1642 = sext i8 %1641 to i32
  %1643 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1642)
  store i8 4, i8* %2, align 1
  %1644 = load i8, i8* %2, align 1
  %1645 = sext i8 %1644 to i32
  %1646 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1645)
  store i8 32, i8* %2, align 1
  %1647 = load i8, i8* %2, align 1
  %1648 = sext i8 %1647 to i32
  %1649 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1648)
  store i8 33, i8* %2, align 1
  %1650 = load i8, i8* %2, align 1
  %1651 = sext i8 %1650 to i32
  %1652 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1651)
  store i8 34, i8* %2, align 1
  %1653 = load i8, i8* %2, align 1
  %1654 = sext i8 %1653 to i32
  %1655 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1654)
  store i8 35, i8* %2, align 1
  %1656 = load i8, i8* %2, align 1
  %1657 = sext i8 %1656 to i32
  %1658 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1657)
  store i8 36, i8* %2, align 1
  %1659 = load i8, i8* %2, align 1
  %1660 = sext i8 %1659 to i32
  %1661 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1660)
  store i8 37, i8* %2, align 1
  %1662 = load i8, i8* %2, align 1
  %1663 = sext i8 %1662 to i32
  %1664 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1663)
  store i8 38, i8* %2, align 1
  %1665 = load i8, i8* %2, align 1
  %1666 = sext i8 %1665 to i32
  %1667 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1666)
  store i8 39, i8* %2, align 1
  %1668 = load i8, i8* %2, align 1
  %1669 = sext i8 %1668 to i32
  %1670 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1669)
  store i8 5, i8* %2, align 1
  %1671 = load i8, i8* %2, align 1
  %1672 = sext i8 %1671 to i32
  %1673 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1672)
  store i8 40, i8* %2, align 1
  %1674 = load i8, i8* %2, align 1
  %1675 = sext i8 %1674 to i32
  %1676 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1675)
  store i8 41, i8* %2, align 1
  %1677 = load i8, i8* %2, align 1
  %1678 = sext i8 %1677 to i32
  %1679 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1678)
  store i8 42, i8* %2, align 1
  %1680 = load i8, i8* %2, align 1
  %1681 = sext i8 %1680 to i32
  %1682 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1681)
  store i8 43, i8* %2, align 1
  %1683 = load i8, i8* %2, align 1
  %1684 = sext i8 %1683 to i32
  %1685 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1684)
  store i8 44, i8* %2, align 1
  %1686 = load i8, i8* %2, align 1
  %1687 = sext i8 %1686 to i32
  %1688 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1687)
  store i8 45, i8* %2, align 1
  %1689 = load i8, i8* %2, align 1
  %1690 = sext i8 %1689 to i32
  %1691 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1690)
  store i8 46, i8* %2, align 1
  %1692 = load i8, i8* %2, align 1
  %1693 = sext i8 %1692 to i32
  %1694 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1693)
  store i8 47, i8* %2, align 1
  %1695 = load i8, i8* %2, align 1
  %1696 = sext i8 %1695 to i32
  %1697 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1696)
  store i8 6, i8* %2, align 1
  %1698 = load i8, i8* %2, align 1
  %1699 = sext i8 %1698 to i32
  %1700 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1699)
  store i8 48, i8* %2, align 1
  %1701 = load i8, i8* %2, align 1
  %1702 = sext i8 %1701 to i32
  %1703 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1702)
  store i8 49, i8* %2, align 1
  %1704 = load i8, i8* %2, align 1
  %1705 = sext i8 %1704 to i32
  %1706 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1705)
  store i8 50, i8* %2, align 1
  %1707 = load i8, i8* %2, align 1
  %1708 = sext i8 %1707 to i32
  %1709 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1708)
  store i8 51, i8* %2, align 1
  %1710 = load i8, i8* %2, align 1
  %1711 = sext i8 %1710 to i32
  %1712 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1711)
  store i8 52, i8* %2, align 1
  %1713 = load i8, i8* %2, align 1
  %1714 = sext i8 %1713 to i32
  %1715 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1714)
  store i8 53, i8* %2, align 1
  %1716 = load i8, i8* %2, align 1
  %1717 = sext i8 %1716 to i32
  %1718 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1717)
  store i8 54, i8* %2, align 1
  %1719 = load i8, i8* %2, align 1
  %1720 = sext i8 %1719 to i32
  %1721 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1720)
  store i8 55, i8* %2, align 1
  %1722 = load i8, i8* %2, align 1
  %1723 = sext i8 %1722 to i32
  %1724 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1723)
  store i8 7, i8* %2, align 1
  %1725 = load i8, i8* %2, align 1
  %1726 = sext i8 %1725 to i32
  %1727 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1726)
  store i8 56, i8* %2, align 1
  %1728 = load i8, i8* %2, align 1
  %1729 = sext i8 %1728 to i32
  %1730 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1729)
  store i8 57, i8* %2, align 1
  %1731 = load i8, i8* %2, align 1
  %1732 = sext i8 %1731 to i32
  %1733 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1732)
  store i8 58, i8* %2, align 1
  %1734 = load i8, i8* %2, align 1
  %1735 = sext i8 %1734 to i32
  %1736 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1735)
  store i8 59, i8* %2, align 1
  %1737 = load i8, i8* %2, align 1
  %1738 = sext i8 %1737 to i32
  %1739 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1738)
  store i8 60, i8* %2, align 1
  %1740 = load i8, i8* %2, align 1
  %1741 = sext i8 %1740 to i32
  %1742 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1741)
  store i8 61, i8* %2, align 1
  %1743 = load i8, i8* %2, align 1
  %1744 = sext i8 %1743 to i32
  %1745 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1744)
  store i8 62, i8* %2, align 1
  %1746 = load i8, i8* %2, align 1
  %1747 = sext i8 %1746 to i32
  %1748 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1747)
  store i8 63, i8* %2, align 1
  %1749 = load i8, i8* %2, align 1
  %1750 = sext i8 %1749 to i32
  %1751 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1750)
  ret i32 0
}

declare i32 @putchar(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
