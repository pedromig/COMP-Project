declare i32 @putchar(...)
declare i32 @getchar(...)


define void @print_number(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	%4 = load i32, i32* %2
	%5 = add i32 0, 0
	%6 = icmp eq i32 %4, %5
	%7 = zext i1 %6 to i32
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %label0, label %label1

label0:
	%9 = add i32 0, 48
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	br label %label2

label1:
	%11 = load i32, i32* %2
	%12 = add i32 0, 0
	%13 = icmp slt i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label3, label %label4

label3:
	%16 = add i32 0, 45
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	%18 = load i32, i32* %2
	%19 = sub i32 0, %18
	store i32 %19, i32* %2
	br label %label5

label4:
	br label %label5

label5:
	store i32 1, i32* %3
	%20 = load i32, i32* %2
	%21 = load i32, i32* %3
	%22 = sdiv i32 %20, %21
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label6, label %label7

label6:
	%24 = load i32, i32* %3
	%25 = add i32 0, 10
	%26 = mul i32 %24, %25
	store i32 %26, i32* %3
	%27 = load i32, i32* %2
	%28 = load i32, i32* %3
	%29 = sdiv i32 %27, %28
	%30 = icmp ne i32 %29, 0
	br i1 %30, label %label6, label %label7

label7:
	%31 = load i32, i32* %3
	%32 = add i32 0, 1
	%33 = icmp sgt i32 %31, %32
	%34 = zext i1 %33 to i32
	%35 = icmp ne i32 %34, 0
	br i1 %35, label %label8, label %label9

label8:
	%36 = load i32, i32* %3
	%37 = add i32 0, 10
	%38 = sdiv i32 %36, %37
	%39 = load i32, i32* %2
	%40 = sdiv i32 %39, %38
	%41 = add i32 0, 48
	%42 = add i32 %41, %40
	%43 = load i32, i32* %2
	%44 = load i32, i32* %3
	%45 = sdiv i32 %43, %44
	%46 = add i32 0, 10
	%47 = mul i32 %45, %46
	%48 = sub i32 %42, %47
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	%50 = load i32, i32* %3
	%51 = add i32 0, 10
	%52 = sdiv i32 %50, %51
	store i32 %52, i32* %3
	%53 = load i32, i32* %3
	%54 = add i32 0, 1
	%55 = icmp sgt i32 %53, %54
	%56 = zext i1 %55 to i32
	%57 = icmp ne i32 %56, 0
	br i1 %57, label %label8, label %label9

label9:
	br label %label2

label2:
	%58 = add i32 0, 10
	%59 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %58)
	ret void
}

define i32 @return1() {
	%1 = add i32 0, 63
	%2 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1)
	ret i32 1
}

define i32 @main() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 3, i32* %2
	%3 = alloca i32
	store i32 4, i32* %3
	%4 = alloca i32
	store i32 2, i32* %4
	%5 = alloca i32
	store i32 2, i32* %5
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = load i32, i32* %5
	%10 = add i32 0, 12
	%11 = mul i32 %9, %10
	store i32 %11, i32* %6
	%12 = load i32, i32* %1
	%13 = load i32, i32* %2
	%14 = mul i32 %12, %13
	store i32 %14, i32* %7
	store i32 52, i32* %8
	%15 = load i32, i32* %8
	%16 = load i32, i32* %7
	%17 = sdiv i32 %15, %16
	call void @print_number(i32 %17)
	%18 = add i32 0, 5
	%19 = load i32, i32* %5
	%20 = mul i32 %18, %19
	%21 = add i32 0, 5
	%22 = sdiv i32 %20, %21
	call void @print_number(i32 %22)
	%23 = add i32 0, 98
	%24 = add i32 0, 4
	%25 = sub i32 %23, %24
	%26 = add i32 0, 5
	%27 = mul i32 %26, %25
	call void @print_number(i32 %27)
	%28 = add i32 0, 6
	%29 = load i32, i32* %7
	%30 = mul i32 %28, %29
	%31 = add i32 0, 42
	%32 = sub i32 %30, %31
	call void @print_number(i32 %32)
	%33 = add i32 0, 6
	%34 = load i32, i32* %7
	%35 = mul i32 %33, %34
	%36 = add i32 0, 42
	%37 = sub i32 %35, %36
	call void @print_number(i32 %37)
	%38 = add i32 0, 98
	%39 = add i32 0, 4
	%40 = sub i32 %38, %39
	%41 = add i32 0, 5
	%42 = mul i32 %41, %40
	%43 = add i32 0, 6
	%44 = load i32, i32* %7
	%45 = mul i32 %43, %44
	%46 = add i32 0, 42
	%47 = sub i32 %45, %46
	%48 = sdiv i32 %42, %47
	call void @print_number(i32 %48)
	%49 = add i32 0, 5
	%50 = load i32, i32* %5
	%51 = mul i32 %49, %50
	%52 = add i32 0, 5
	%53 = sdiv i32 %51, %52
	%54 = add i32 0, 23
	%55 = add i32 %53, %54
	%56 = add i32 0, 98
	%57 = add i32 0, 4
	%58 = sub i32 %56, %57
	%59 = add i32 0, 5
	%60 = mul i32 %59, %58
	%61 = add i32 0, 6
	%62 = load i32, i32* %7
	%63 = mul i32 %61, %62
	%64 = add i32 0, 42
	%65 = sub i32 %63, %64
	%66 = sdiv i32 %60, %65
	%67 = sub i32 %55, %66
	call void @print_number(i32 %67)
	%68 = add i32 0, 2
	%69 = load i32, i32* %2
	%70 = add i32 %68, %69
	%71 = add i32 0, 5
	%72 = mul i32 %70, %71
	call void @print_number(i32 %72)
	%73 = add i32 0, 17
	%74 = add i32 0, 2
	%75 = mul i32 %73, %74
	%76 = add i32 0, 30
	%77 = sub i32 %75, %76
	%78 = add i32 0, 5
	%79 = mul i32 %77, %78
	%80 = load i32, i32* %4
	%81 = add i32 %80, %79
	%82 = add i32 0, 2
	%83 = add i32 %81, %82
	%84 = add i32 0, 8
	%85 = load i32, i32* %6
	%86 = sdiv i32 %84, %85
	%87 = add i32 0, 4
	%88 = mul i32 %86, %87
	%89 = sub i32 %83, %88
	call void @print_number(i32 %89)
	%90 = add i32 0, 2
	%91 = add i32 0, 3
	%92 = mul i32 %90, %91
	%93 = add i32 0, 67
	%94 = add i32 %93, %92
	%95 = add i32 0, 67
	%96 = sub i32 %94, %95
	%97 = add i32 0, 2
	%98 = add i32 0, 1
	%99 = sdiv i32 %97, %98
	%100 = add i32 %96, %99
	%101 = add i32 0, 7
	%102 = sub i32 %100, %101
	call void @print_number(i32 %102)
	%103 = add i32 0, 2
	%104 = add i32 0, 3
	%105 = mul i32 %103, %104
	%106 = add i32 0, 4
	%107 = mul i32 %105, %106
	%108 = add i32 0, 8
	%109 = sdiv i32 %107, %108
	%110 = add i32 0, 5
	%111 = add i32 0, 2
	%112 = sdiv i32 %110, %111
	%113 = add i32 0, 4
	%114 = mul i32 %112, %113
	%115 = sub i32 %109, %114
	%116 = add i32 0, 6
	%117 = add i32 %115, %116
	%118 = add i32 0, 0
	%119 = add i32 0, 3
	%120 = sdiv i32 %118, %119
	%121 = add i32 0, 7
	%122 = sdiv i32 %120, %121
	%123 = add i32 %117, %122
	%124 = add i32 0, 2
	%125 = and i32 %123, %124
	call void @print_number(i32 %125)
	%126 = add i32 0, 5
	%127 = add i32 0, 0
	%128 = add i32 %126, %127
	call void @print_number(i32 %128)
	%129 = add i32 0, 2
	%130 = add i32 0, 3
	%131 = add i32 %129, %130
	%132 = add i32 0, 1
	%133 = add i32 0, 2
	%134 = add i32 %132, %133
	%135 = mul i32 %131, %134
	%136 = add i32 0, 4
	%137 = mul i32 %135, %136
	%138 = add i32 0, 2
	%139 = and i32 %137, %138
	call void @print_number(i32 %139)
	%140 = add i32 0, 2
	%141 = add i32 0, 3
	%142 = add i32 %140, %141
	%143 = add i32 0, 1
	%144 = add i32 0, 2
	%145 = add i32 %143, %144
	%146 = mul i32 %142, %145
	%147 = add i32 0, 4
	%148 = mul i32 %146, %147
	%149 = add i32 0, 2
	%150 = sub i32 0, %149
	%151 = and i32 %148, %150
	call void @print_number(i32 %151)
	%152 = load i32, i32* %3
	%153 = load i32, i32* %2
	%154 = mul i32 %152, %153
	%155 = load i32, i32* %7
	%156 = sub i32 %154, %155
	%157 = load i32, i32* %5
	%158 = mul i32 %156, %157
	%159 = load i32, i32* %1
	%160 = add i32 %159, %158
	%161 = load i32, i32* %1
	%162 = add i32 %160, %161
	%163 = load i32, i32* %3
	%164 = load i32, i32* %4
	%165 = sdiv i32 %163, %164
	%166 = load i32, i32* %2
	%167 = mul i32 %165, %166
	%168 = sub i32 %162, %167
	call void @print_number(i32 %168)
	%169 = load i32, i32* %3
	%170 = load i32, i32* %5
	%171 = mul i32 %169, %170
	%172 = load i32, i32* %7
	%173 = sub i32 %171, %172
	%174 = add i32 0, 23
	%175 = mul i32 %173, %174
	%176 = load i32, i32* %1
	%177 = add i32 %176, %175
	%178 = load i32, i32* %8
	%179 = add i32 %177, %178
	%180 = load i32, i32* %7
	%181 = load i32, i32* %8
	%182 = sdiv i32 %180, %181
	%183 = load i32, i32* %6
	%184 = mul i32 %182, %183
	%185 = sub i32 %179, %184
	call void @print_number(i32 %185)
	%186 = load i32, i32* %2
	%187 = load i32, i32* %5
	%188 = add i32 %186, %187
	%189 = add i32 0, 23
	%190 = add i32 0, 1
	%191 = and i32 %189, %190
	%192 = add i32 0, 42
	%193 = or i32 %191, %192
	%194 = add i32 %188, %193
	%195 = load i32, i32* %1
	%196 = load i32, i32* %2
	%197 = sdiv i32 %195, %196
	%198 = load i32, i32* %3
	%199 = mul i32 %197, %198
	%200 = sub i32 %194, %199
	call void @print_number(i32 %200)
	br label %label0

label0:
	%201 = load i32, i32* %5
	%202 = icmp ne i32 %201, 0
	%203 = xor i1 %202, true
	%204 = zext i1 %203 to i32
	%205 = load i32, i32* %5
	%206 = mul i32 %205, %204
	%207 = icmp ne i32 %206, 0
	br i1 %207, label %label2, label %label1

label1:
	%208 = add i32 0, 1
	%209 = icmp ne i32 %208, 0
	br label %label2

label2:
	%210 = phi i1 [ true, %label0 ], [ %209, %label1 ]
	%211 = zext i1 %210 to i32
	call void @print_number(i32 %211)
	br label %label3

label3:
	%212 = load i32, i32* %5
	%213 = icmp ne i32 %212, 0
	%214 = xor i1 %213, true
	%215 = zext i1 %214 to i32
	%216 = load i32, i32* %5
	%217 = mul i32 %216, %215
	%218 = icmp ne i32 %217, 0
	br i1 %218, label %label4, label %label5

label4:
	%219 = add i32 0, 1
	%220 = icmp ne i32 %219, 0
	br label %label5

label5:
	%221 = phi i1 [ false, %label3 ], [ %220, %label4 ]
	%222 = zext i1 %221 to i32
	call void @print_number(i32 %222)
	br label %label6

label6:
	br label %label7

label7:
	%223 = load i32, i32* %3
	%224 = icmp ne i32 %223, 0
	br i1 %224, label %label9, label %label8

label8:
	%225 = load i32, i32* %7
	%226 = icmp ne i32 %225, 0
	%227 = xor i1 %226, true
	%228 = zext i1 %227 to i32
	%229 = add i32 0, 0
	%230 = sub i32 %229, %228
	%231 = icmp ne i32 %230, 0
	br label %label9

label9:
	%232 = phi i1 [ true, %label7 ], [ %231, %label8 ]
	%233 = zext i1 %232 to i32
	%234 = add i32 0, 23
	%235 = mul i32 %233, %234
	%236 = load i32, i32* %1
	%237 = add i32 %236, %235
	%238 = icmp ne i32 %237, 0
	br i1 %238, label %label10, label %label11

label10:
	%239 = add i32 0, 32
	%240 = add i32 0, 21
	%241 = icmp sge i32 %239, %240
	%242 = zext i1 %241 to i32
	%243 = add i32 0, 32
	%244 = add i32 0, 21
	%245 = icmp sge i32 %243, %244
	%246 = zext i1 %245 to i32
	store i32 %246, i32* %8
	%247 = load i32, i32* %8
	br label %label12

label12:
	%248 = add i32 0, 23
	%249 = icmp ne i32 %248, 0
	br i1 %249, label %label13, label %label14

label13:
	%250 = call i32 @return1()
	%251 = icmp ne i32 %250, 0
	%252 = xor i1 %251, true
	%253 = zext i1 %252 to i32
	%254 = icmp ne i32 %253, 0
	br label %label14

label14:
	%255 = phi i1 [ false, %label12 ], [ %254, %label13 ]
	%256 = zext i1 %255 to i32
	%257 = load i32, i32* %7
	%258 = add i32 %257, %256
	%259 = load i32, i32* %6
	%260 = mul i32 %258, %259
	%261 = sub i32 %247, %260
	%262 = icmp ne i32 %261, 0
	br label %label11

label11:
	%263 = phi i1 [ false, %label6 ], [ %262, %label10 ]
	%264 = zext i1 %263 to i32
	call void @print_number(i32 %264)
	br label %label15

label15:
	br label %label16

label16:
	%265 = load i32, i32* %5
	%266 = icmp ne i32 %265, 0
	%267 = xor i1 %266, true
	%268 = zext i1 %267 to i32
	%269 = load i32, i32* %5
	%270 = mul i32 %269, %268
	%271 = icmp ne i32 %270, 0
	br i1 %271, label %label18, label %label17

label17:
	%272 = add i32 0, 1
	%273 = icmp ne i32 %272, 0
	br label %label18

label18:
	%274 = phi i1 [ true, %label16 ], [ %273, %label17 ]
	%275 = zext i1 %274 to i32
	br label %label19

label19:
	%276 = load i32, i32* %5
	%277 = icmp ne i32 %276, 0
	%278 = xor i1 %277, true
	%279 = zext i1 %278 to i32
	%280 = load i32, i32* %5
	%281 = mul i32 %280, %279
	%282 = icmp ne i32 %281, 0
	br i1 %282, label %label20, label %label21

label20:
	%283 = add i32 0, 1
	%284 = icmp ne i32 %283, 0
	br label %label21

label21:
	%285 = phi i1 [ false, %label19 ], [ %284, %label20 ]
	%286 = zext i1 %285 to i32
	%287 = add i32 %275, %286
	%288 = icmp ne i32 %287, 0
	br i1 %288, label %label23, label %label22

label22:
	%289 = add i32 0, 42
	%290 = icmp ne i32 %289, 0
	br label %label23

label23:
	%291 = phi i1 [ true, %label15 ], [ %290, %label22 ]
	%292 = zext i1 %291 to i32
	br label %label24

label24:
	br label %label25

label25:
	%293 = load i32, i32* %3
	%294 = icmp ne i32 %293, 0
	br i1 %294, label %label27, label %label26

label26:
	br label %label28

label28:
	%295 = load i32, i32* %7
	%296 = icmp ne i32 %295, 0
	br i1 %296, label %label29, label %label30

label29:
	%297 = load i32, i32* %7
	%298 = icmp ne i32 %297, 0
	br label %label30

label30:
	%299 = phi i1 [ false, %label28 ], [ %298, %label29 ]
	%300 = zext i1 %299 to i32
	br label %label31

label31:
	%301 = load i32, i32* %7
	%302 = icmp ne i32 %301, 0
	br i1 %302, label %label33, label %label32

label32:
	%303 = icmp ne i32 %300, 0
	br label %label33

label33:
	%304 = phi i1 [ true, %label31 ], [ %303, %label32 ]
	%305 = zext i1 %304 to i32
	%306 = icmp ne i32 %305, 0
	%307 = xor i1 %306, true
	%308 = zext i1 %307 to i32
	%309 = add i32 0, 0
	%310 = sub i32 %309, %308
	%311 = icmp ne i32 %310, 0
	br label %label27

label27:
	%312 = phi i1 [ true, %label25 ], [ %311, %label26 ]
	%313 = zext i1 %312 to i32
	%314 = add i32 0, 2
	%315 = add i32 0, 45
	%316 = mul i32 %314, %315
	%317 = add i32 0, 3
	%318 = and i32 %316, %317
	%319 = mul i32 %313, %318
	%320 = icmp ne i32 %319, 0
	br i1 %320, label %label34, label %label35

label34:
	store i32 32, i32* %8
	%321 = load i32, i32* %8
	br label %label36

label36:
	%322 = add i32 0, 2
	%323 = add i32 0, 3
	%324 = or i32 %322, %323
	%325 = icmp ne i32 %324, 0
	br i1 %325, label %label37, label %label38

label37:
	%326 = call i32 @return1()
	%327 = icmp ne i32 %326, 0
	br label %label38

label38:
	%328 = phi i1 [ false, %label36 ], [ %327, %label37 ]
	%329 = zext i1 %328 to i32
	%330 = load i32, i32* %7
	%331 = sdiv i32 %330, %329
	%332 = sub i32 %321, %331
	%333 = load i32, i32* %6
	%334 = xor i32 %332, %333
	%335 = icmp ne i32 %334, 0
	br label %label35

label35:
	%336 = phi i1 [ false, %label24 ], [ %335, %label34 ]
	%337 = zext i1 %336 to i32
	br label %label39

label39:
	%338 = icmp ne i32 %292, 0
	br i1 %338, label %label40, label %label41

label40:
	%339 = icmp ne i32 %337, 0
	br label %label41

label41:
	%340 = phi i1 [ false, %label39 ], [ %339, %label40 ]
	%341 = zext i1 %340 to i32
	call void @print_number(i32 %341)
	br label %label42

label42:
	%342 = load i32, i32* %1
	%343 = add i32 0, 0
	%344 = icmp slt i32 %342, %343
	%345 = zext i1 %344 to i32
	%346 = icmp ne i32 %345, 0
	br i1 %346, label %label43, label %label44

label43:
	%347 = call i32 @return1()
	%348 = icmp ne i32 %347, 0
	br label %label44

label44:
	%349 = phi i1 [ false, %label42 ], [ %348, %label43 ]
	%350 = zext i1 %349 to i32
	call void @print_number(i32 %350)
	br label %label45

label45:
	%351 = load i32, i32* %1
	%352 = add i32 0, 0
	%353 = icmp sgt i32 %351, %352
	%354 = zext i1 %353 to i32
	%355 = icmp ne i32 %354, 0
	br i1 %355, label %label46, label %label47

label46:
	%356 = call i32 @return1()
	%357 = icmp ne i32 %356, 0
	br label %label47

label47:
	%358 = phi i1 [ false, %label45 ], [ %357, %label46 ]
	%359 = zext i1 %358 to i32
	call void @print_number(i32 %359)
	%360 = add i32 0, 21
	%361 = add i32 0, 21
	%362 = icmp ne i32 %360, %361
	%363 = zext i1 %362 to i32
	%364 = add i32 0, 21
	%365 = add i32 0, 21
	%366 = icmp ne i32 %364, %365
	%367 = zext i1 %366 to i32
	store i32 %367, i32* %8
	%368 = load i32, i32* %8
	call void @print_number(i32 %368)
	ret i32 0
}
