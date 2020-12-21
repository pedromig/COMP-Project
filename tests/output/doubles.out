declare i32 @putchar(...)
declare i32 @getchar(...)


define void @print_equality(double, double) {
	%3 = alloca double
	store double %0, double* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = load double, double* %3
	%6 = load double, double* %4
	%7 = fcmp oeq double %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	%10 = add i32 0, 121
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 101
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	%14 = add i32 0, 115
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	br label %label2

label1:
	%16 = add i32 0, 110
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	%18 = add i32 0, 111
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	br label %label2

label2:
	%20 = add i32 0, 10
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	ret void
}

define i32 @main() {
	%1 = alloca double
	store double 1.200000e+00, double* %1
	%2 = alloca double
	store double 1.300000e+00, double* %2
	%3 = alloca double
	store double 1.400000e+00, double* %3
	%4 = alloca double
	store double 1.200000e+00, double* %4
	%5 = alloca double
	store double 1.797693e+02, double* %5
	%6 = alloca double
	%7 = alloca double
	%8 = alloca double
	%9 = load double, double* %5
	%10 = add i32 0, 12
	%11 = sitofp i32 %10 to double
	%12 = fmul double %9, %11
	store double %12, double* %6
	%13 = load double, double* %1
	%14 = load double, double* %2
	%15 = fmul double %13, %14
	store double %15, double* %7
	store double 5.200000e+01, double* %8
	%16 = load double, double* %8
	%17 = load double, double* %7
	%18 = fdiv double %16, %17
	%19 = alloca double
	store double %18, double* %19
	%20 = add i32 0, 5
	%21 = load double, double* %5
	%22 = sitofp i32 %20 to double
	%23 = fmul double %22, %21
	%24 = add i32 0, 5
	%25 = sitofp i32 %24 to double
	%26 = fdiv double %23, %25
	%27 = add i32 0, 23
	%28 = sitofp i32 %27 to double
	%29 = fadd double %26, %28
	%30 = add i32 0, 98
	%31 = add i32 0, 4
	%32 = sub i32 %30, %31
	%33 = add i32 0, 5
	%34 = mul i32 %33, %32
	%35 = add i32 0, 6
	%36 = load double, double* %7
	%37 = sitofp i32 %35 to double
	%38 = fmul double %37, %36
	%39 = add i32 0, 42
	%40 = sitofp i32 %39 to double
	%41 = fsub double %38, %40
	%42 = sitofp i32 %34 to double
	%43 = fdiv double %42, %41
	%44 = fsub double %29, %43
	%45 = alloca double
	store double %44, double* %45
	%46 = add i32 0, 2
	%47 = load double, double* %2
	%48 = sitofp i32 %46 to double
	%49 = fadd double %48, %47
	%50 = add i32 0, 5
	%51 = sitofp i32 %50 to double
	%52 = fmul double %49, %51
	%53 = alloca double
	store double %52, double* %53
	%54 = add i32 0, 17
	%55 = add i32 0, 2
	%56 = mul i32 %54, %55
	%57 = add i32 0, 30
	%58 = sub i32 %56, %57
	%59 = add i32 0, 5
	%60 = mul i32 %58, %59
	%61 = load double, double* %4
	%62 = sitofp i32 %60 to double
	%63 = fadd double %61, %62
	%64 = add i32 0, 2
	%65 = sitofp i32 %64 to double
	%66 = fadd double %63, %65
	%67 = add i32 0, 8
	%68 = load double, double* %6
	%69 = sitofp i32 %67 to double
	%70 = fdiv double %69, %68
	%71 = add i32 0, 4
	%72 = sitofp i32 %71 to double
	%73 = fmul double %70, %72
	%74 = fsub double %66, %73
	%75 = alloca double
	store double %74, double* %75
	%76 = add i32 0, 2
	%77 = add i32 0, 3
	%78 = mul i32 %76, %77
	%79 = add i32 0, 67
	%80 = add i32 %79, %78
	%81 = add i32 0, 67
	%82 = sub i32 %80, %81
	%83 = add i32 0, 2
	%84 = add i32 0, 1
	%85 = sdiv i32 %83, %84
	%86 = add i32 %82, %85
	%87 = add i32 0, 7
	%88 = sub i32 %86, %87
	%89 = sitofp i32 %88 to double
	%90 = alloca double
	store double %89, double* %90
	%91 = add i32 0, 2
	%92 = add i32 0, 3
	%93 = mul i32 %91, %92
	%94 = add i32 0, 4
	%95 = mul i32 %93, %94
	%96 = add i32 0, 8
	%97 = sdiv i32 %95, %96
	%98 = add i32 0, 5
	%99 = add i32 0, 2
	%100 = sdiv i32 %98, %99
	%101 = add i32 0, 4
	%102 = mul i32 %100, %101
	%103 = sub i32 %97, %102
	%104 = add i32 0, 6
	%105 = add i32 %103, %104
	%106 = add i32 0, 0
	%107 = add i32 0, 3
	%108 = sdiv i32 %106, %107
	%109 = add i32 0, 7
	%110 = sdiv i32 %108, %109
	%111 = add i32 %105, %110
	%112 = add i32 0, 2
	%113 = and i32 %111, %112
	%114 = sitofp i32 %113 to double
	%115 = alloca double
	store double %114, double* %115
	%116 = fadd double 0.0, 5.000500e+00
	%117 = fadd double 0.0, 9.500000e-03
	%118 = fadd double %116, %117
	%119 = alloca double
	store double %118, double* %119
	%120 = fadd double 0.0, 5.000500e+00
	%121 = fadd double 0.0, 9.500000e-03
	%122 = fadd double %120, %121
	%123 = alloca double
	store double %122, double* %123
	%124 = add i32 0, 2
	%125 = add i32 0, 3
	%126 = add i32 %124, %125
	%127 = add i32 0, 1
	%128 = add i32 0, 2
	%129 = add i32 %127, %128
	%130 = mul i32 %126, %129
	%131 = add i32 0, 4
	%132 = mul i32 %130, %131
	%133 = add i32 0, 2
	%134 = and i32 %132, %133
	%135 = sitofp i32 %134 to double
	%136 = alloca double
	store double %135, double* %136
	%137 = add i32 0, 2
	%138 = add i32 0, 3
	%139 = add i32 %137, %138
	%140 = add i32 0, 1
	%141 = add i32 0, 2
	%142 = add i32 %140, %141
	%143 = mul i32 %139, %142
	%144 = add i32 0, 4
	%145 = mul i32 %143, %144
	%146 = add i32 0, 2
	%147 = sub i32 0, %146
	%148 = and i32 %145, %147
	%149 = sitofp i32 %148 to double
	%150 = alloca double
	store double %149, double* %150
	%151 = load double, double* %3
	%152 = load double, double* %5
	%153 = fmul double %151, %152
	%154 = load double, double* %7
	%155 = fsub double %153, %154
	%156 = load double, double* %19
	%157 = fmul double %155, %156
	%158 = load double, double* %1
	%159 = fadd double %158, %157
	%160 = load double, double* %53
	%161 = fadd double %159, %160
	%162 = load double, double* %90
	%163 = load double, double* %119
	%164 = fdiv double %162, %163
	%165 = load double, double* %136
	%166 = fmul double %164, %165
	%167 = fsub double %161, %166
	%168 = alloca double
	store double %167, double* %168
	%169 = load double, double* %3
	%170 = load double, double* %5
	%171 = fmul double %169, %170
	%172 = load double, double* %7
	%173 = fsub double %171, %172
	%174 = load double, double* %19
	%175 = fmul double %173, %174
	%176 = load double, double* %1
	%177 = fadd double %176, %175
	%178 = load double, double* %53
	%179 = fadd double %177, %178
	%180 = load double, double* %90
	%181 = load double, double* %119
	%182 = fdiv double %180, %181
	%183 = load double, double* %136
	%184 = fmul double %182, %183
	%185 = fsub double %179, %184
	%186 = alloca double
	store double %185, double* %186
	%187 = load double, double* %2
	%188 = load double, double* %75
	%189 = fadd double %187, %188
	%190 = add i32 0, 23
	%191 = add i32 0, 1
	%192 = and i32 %190, %191
	%193 = add i32 0, 42
	%194 = or i32 %192, %193
	%195 = sitofp i32 %194 to double
	%196 = fadd double %189, %195
	%197 = load double, double* %115
	%198 = load double, double* %123
	%199 = fdiv double %197, %198
	%200 = load double, double* %168
	%201 = fmul double %199, %200
	%202 = fsub double %196, %201
	%203 = alloca double
	store double %202, double* %203
	%204 = add i32 0, 97
	%205 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %204)
	%206 = add i32 0, 32
	%207 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %206)
	%208 = load double, double* %1
	%209 = fadd double 0.0, 1.200000e+00
	call void @print_equality(double %208, double %209)
	%210 = add i32 0, 98
	%211 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %210)
	%212 = add i32 0, 32
	%213 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %212)
	%214 = load double, double* %2
	%215 = fadd double 0.0, 1.300000e+00
	call void @print_equality(double %214, double %215)
	%216 = add i32 0, 99
	%217 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %216)
	%218 = add i32 0, 32
	%219 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %218)
	%220 = load double, double* %3
	%221 = fadd double 0.0, 1.400000e+00
	call void @print_equality(double %220, double %221)
	%222 = add i32 0, 100
	%223 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %222)
	%224 = add i32 0, 32
	%225 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %224)
	%226 = load double, double* %4
	%227 = fadd double 0.0, 1.200000e+00
	call void @print_equality(double %226, double %227)
	%228 = add i32 0, 101
	%229 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %228)
	%230 = add i32 0, 32
	%231 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %230)
	%232 = load double, double* %5
	%233 = fadd double 0.0, 1.797693e+02
	call void @print_equality(double %232, double %233)
	%234 = add i32 0, 102
	%235 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %234)
	%236 = add i32 0, 32
	%237 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %236)
	%238 = load double, double* %6
	%239 = fadd double 0.0, 2.157232e+03
	call void @print_equality(double %238, double %239)
	%240 = add i32 0, 103
	%241 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %240)
	%242 = add i32 0, 32
	%243 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %242)
	%244 = load double, double* %7
	%245 = fadd double 0.0, 1.560000e+00
	call void @print_equality(double %244, double %245)
	%246 = add i32 0, 104
	%247 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %246)
	%248 = add i32 0, 32
	%249 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %248)
	%250 = load double, double* %8
	%251 = fadd double 0.0, 5.200000e+01
	call void @print_equality(double %250, double %251)
	%252 = add i32 0, 105
	%253 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %252)
	%254 = add i32 0, 32
	%255 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %254)
	%256 = load double, double* %19
	%257 = fadd double 0.0, 3.333333e+01
	call void @print_equality(double %256, double %257)
	%258 = add i32 0, 106
	%259 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %258)
	%260 = add i32 0, 32
	%261 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %260)
	%262 = load double, double* %45
	%263 = fadd double 0.0, 2.171688e+02
	call void @print_equality(double %262, double %263)
	%264 = add i32 0, 107
	%265 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %264)
	%266 = add i32 0, 32
	%267 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %266)
	%268 = load double, double* %53
	%269 = fadd double 0.0, 1.650000e+01
	call void @print_equality(double %268, double %269)
	%270 = add i32 0, 108
	%271 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %270)
	%272 = add i32 0, 32
	%273 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %272)
	%274 = load double, double* %75
	%275 = fadd double 0.0, 2.318517e+01
	call void @print_equality(double %274, double %275)
	%276 = add i32 0, 109
	%277 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %276)
	%278 = add i32 0, 32
	%279 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %278)
	%280 = load double, double* %90
	%281 = fadd double 0.0, 1.000000e+00
	call void @print_equality(double %280, double %281)
	%282 = add i32 0, 110
	%283 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %282)
	%284 = add i32 0, 32
	%285 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %284)
	%286 = load double, double* %115
	%287 = fadd double 0.0, 0.000000e+00
	call void @print_equality(double %286, double %287)
	%288 = add i32 0, 111
	%289 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %288)
	%290 = add i32 0, 32
	%291 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %290)
	%292 = load double, double* %119
	%293 = fadd double 0.0, 5.010000e+00
	call void @print_equality(double %292, double %293)
	%294 = add i32 0, 112
	%295 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %294)
	%296 = add i32 0, 32
	%297 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %296)
	%298 = load double, double* %123
	%299 = fadd double 0.0, 5.010000e+00
	call void @print_equality(double %298, double %299)
	%300 = add i32 0, 113
	%301 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %300)
	%302 = add i32 0, 32
	%303 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %302)
	%304 = load double, double* %136
	%305 = fadd double 0.0, 0.000000e+00
	call void @print_equality(double %304, double %305)
	%306 = add i32 0, 114
	%307 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %306)
	%308 = add i32 0, 32
	%309 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %308)
	%310 = load double, double* %150
	%311 = fadd double 0.0, 6.000000e+01
	call void @print_equality(double %310, double %311)
	%312 = add i32 0, 115
	%313 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %312)
	%314 = add i32 0, 32
	%315 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %314)
	%316 = load double, double* %168
	%317 = fadd double 0.0, 8.354935e+03
	call void @print_equality(double %316, double %317)
	%318 = add i32 0, 116
	%319 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %318)
	%320 = add i32 0, 32
	%321 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %320)
	%322 = load double, double* %186
	%323 = fadd double 0.0, 8.354935e+03
	call void @print_equality(double %322, double %323)
	%324 = add i32 0, 117
	%325 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %324)
	%326 = add i32 0, 32
	%327 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %326)
	%328 = load double, double* %203
	%329 = fadd double 0.0, 6.748517e+01
	call void @print_equality(double %328, double %329)
	ret i32 0
}
