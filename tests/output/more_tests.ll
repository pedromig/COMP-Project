declare i32 @putchar(...)
declare i32 @getchar(...)

@cc = global i32 0

define void @f() {
	store i32 89, i32* @cc
	ret void
}

define i32 @error_in_C_problem() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 10, i32* %1
	%4 = add i32 0, 5
	%5 = sub i32 0, %4
	store i32 %5, i32* %2
	store i32 0, i32* %3
	%6 = add i32 0, 23
	%7 = add i32 0, 757
	%8 = mul i32 %6, %7
	%9 = add i32 0, 65
	%10 = add i32 %8, %9
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	br label %label0

label0:
	%12 = load i32, i32* %1
	%13 = icmp ne i32 %12, 0
	%14 = xor i1 %13, true
	%15 = zext i1 %14 to i32
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %label2, label %label1

label1:
	%17 = load i32, i32* %2
	%18 = icmp ne i32 %17, 0
	%19 = xor i1 %18, true
	%20 = zext i1 %19 to i32
	%21 = icmp ne i32 %20, 0
	br label %label2

label2:
	%22 = phi i1 [ true, %label0 ], [ %21, %label1 ]
	%23 = zext i1 %22 to i32
	br label %label3

label3:
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label5, label %label4

label4:
	%25 = load i32, i32* %3
	%26 = icmp ne i32 %25, 0
	%27 = xor i1 %26, true
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	br label %label5

label5:
	%30 = phi i1 [ true, %label3 ], [ %29, %label4 ]
	%31 = zext i1 %30 to i32
	%32 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %31)
	%33 = load i32, i32* %1
	%34 = icmp ne i32 %33, 0
	%35 = xor i1 %34, true
	%36 = zext i1 %35 to i32
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	%38 = load i32, i32* %2
	%39 = icmp ne i32 %38, 0
	%40 = xor i1 %39, true
	%41 = zext i1 %40 to i32
	%42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
	br label %label6

label6:
	%43 = load i32, i32* %2
	%44 = icmp ne i32 %43, 0
	%45 = xor i1 %44, true
	%46 = zext i1 %45 to i32
	%47 = icmp ne i32 %46, 0
	br i1 %47, label %label8, label %label7

label7:
	%48 = load i32, i32* %1
	%49 = icmp ne i32 %48, 0
	%50 = xor i1 %49, true
	%51 = zext i1 %50 to i32
	%52 = icmp ne i32 %51, 0
	br label %label8

label8:
	%53 = phi i1 [ true, %label6 ], [ %52, %label7 ]
	%54 = zext i1 %53 to i32
	%55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %54)
	br label %label9

label9:
	%56 = load i32, i32* %1
	%57 = icmp ne i32 %56, 0
	%58 = xor i1 %57, true
	%59 = zext i1 %58 to i32
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label11, label %label10

label10:
	%61 = load i32, i32* %2
	%62 = icmp ne i32 %61, 0
	%63 = xor i1 %62, true
	%64 = zext i1 %63 to i32
	%65 = icmp ne i32 %64, 0
	br label %label11

label11:
	%66 = phi i1 [ true, %label9 ], [ %65, %label10 ]
	%67 = zext i1 %66 to i32
	br label %label12

label12:
	%68 = icmp ne i32 %67, 0
	br i1 %68, label %label14, label %label13

label13:
	%69 = load i32, i32* %3
	%70 = icmp ne i32 %69, 0
	%71 = xor i1 %70, true
	%72 = zext i1 %71 to i32
	%73 = icmp ne i32 %72, 0
	br label %label14

label14:
	%74 = phi i1 [ true, %label12 ], [ %73, %label13 ]
	%75 = zext i1 %74 to i32
	br label %label15

label15:
	%76 = icmp ne i32 %75, 0
	br i1 %76, label %label16, label %label17

label16:
	%77 = add i32 0, 2
	%78 = sub i32 0, %77
	%79 = icmp ne i32 %78, 0
	br label %label17

label17:
	%80 = phi i1 [ false, %label15 ], [ %79, %label16 ]
	%81 = zext i1 %80 to i32
	%82 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %81)
	br label %label18

label18:
	%83 = load i32, i32* %1
	%84 = icmp ne i32 %83, 0
	%85 = xor i1 %84, true
	%86 = zext i1 %85 to i32
	%87 = icmp ne i32 %86, 0
	br i1 %87, label %label20, label %label19

label19:
	%88 = load i32, i32* %2
	%89 = icmp ne i32 %88, 0
	%90 = xor i1 %89, true
	%91 = zext i1 %90 to i32
	%92 = icmp ne i32 %91, 0
	br label %label20

label20:
	%93 = phi i1 [ true, %label18 ], [ %92, %label19 ]
	%94 = zext i1 %93 to i32
	br label %label21

label21:
	%95 = icmp ne i32 %94, 0
	br i1 %95, label %label23, label %label22

label22:
	%96 = load i32, i32* %3
	%97 = icmp ne i32 %96, 0
	%98 = xor i1 %97, true
	%99 = zext i1 %98 to i32
	%100 = icmp ne i32 %99, 0
	br label %label23

label23:
	%101 = phi i1 [ true, %label21 ], [ %100, %label22 ]
	%102 = zext i1 %101 to i32
	br label %label24

label24:
	%103 = icmp ne i32 %102, 0
	br i1 %103, label %label25, label %label26

label25:
	%104 = add i32 0, 2
	%105 = sub i32 0, %104
	%106 = icmp ne i32 %105, 0
	br label %label26

label26:
	%107 = phi i1 [ false, %label24 ], [ %106, %label25 ]
	%108 = zext i1 %107 to i32
	br label %label27

label27:
	%109 = load i32, i32* %2
	%110 = icmp ne i32 %109, 0
	%111 = xor i1 %110, true
	%112 = zext i1 %111 to i32
	%113 = icmp ne i32 %112, 0
	br i1 %113, label %label29, label %label28

label28:
	%114 = load i32, i32* %1
	%115 = icmp ne i32 %114, 0
	%116 = xor i1 %115, true
	%117 = zext i1 %116 to i32
	%118 = icmp ne i32 %117, 0
	br label %label29

label29:
	%119 = phi i1 [ true, %label27 ], [ %118, %label28 ]
	%120 = zext i1 %119 to i32
	br label %label30

label30:
	%121 = icmp ne i32 %108, 0
	br i1 %121, label %label31, label %label32

label31:
	%122 = icmp ne i32 %120, 0
	br label %label32

label32:
	%123 = phi i1 [ false, %label30 ], [ %122, %label31 ]
	%124 = zext i1 %123 to i32
	%125 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %124)
	br label %label33

label33:
	%126 = load i32, i32* %1
	%127 = icmp ne i32 %126, 0
	%128 = xor i1 %127, true
	%129 = zext i1 %128 to i32
	%130 = icmp ne i32 %129, 0
	br i1 %130, label %label35, label %label34

label34:
	%131 = load i32, i32* %2
	%132 = icmp ne i32 %131, 0
	%133 = xor i1 %132, true
	%134 = zext i1 %133 to i32
	%135 = icmp ne i32 %134, 0
	br label %label35

label35:
	%136 = phi i1 [ true, %label33 ], [ %135, %label34 ]
	%137 = zext i1 %136 to i32
	br label %label36

label36:
	%138 = icmp ne i32 %137, 0
	br i1 %138, label %label38, label %label37

label37:
	%139 = load i32, i32* %3
	%140 = icmp ne i32 %139, 0
	%141 = xor i1 %140, true
	%142 = zext i1 %141 to i32
	%143 = icmp ne i32 %142, 0
	br label %label38

label38:
	%144 = phi i1 [ true, %label36 ], [ %143, %label37 ]
	%145 = zext i1 %144 to i32
	br label %label39

label39:
	%146 = icmp ne i32 %145, 0
	br i1 %146, label %label40, label %label41

label40:
	%147 = add i32 0, 2
	%148 = sub i32 0, %147
	%149 = icmp ne i32 %148, 0
	br label %label41

label41:
	%150 = phi i1 [ false, %label39 ], [ %149, %label40 ]
	%151 = zext i1 %150 to i32
	br label %label42

label42:
	%152 = load i32, i32* %2
	%153 = icmp ne i32 %152, 0
	%154 = xor i1 %153, true
	%155 = zext i1 %154 to i32
	%156 = icmp ne i32 %155, 0
	br i1 %156, label %label44, label %label43

label43:
	%157 = load i32, i32* %1
	%158 = icmp ne i32 %157, 0
	%159 = xor i1 %158, true
	%160 = zext i1 %159 to i32
	%161 = icmp ne i32 %160, 0
	br label %label44

label44:
	%162 = phi i1 [ true, %label42 ], [ %161, %label43 ]
	%163 = zext i1 %162 to i32
	br label %label45

label45:
	%164 = icmp ne i32 %151, 0
	br i1 %164, label %label46, label %label47

label46:
	%165 = icmp ne i32 %163, 0
	br label %label47

label47:
	%166 = phi i1 [ false, %label45 ], [ %165, %label46 ]
	%167 = zext i1 %166 to i32
	%168 = icmp ne i32 %167, 0
	%169 = xor i1 %168, true
	%170 = zext i1 %169 to i32
	%171 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %170)
	br label %label48

label48:
	%172 = load i32, i32* %1
	%173 = icmp ne i32 %172, 0
	%174 = xor i1 %173, true
	%175 = zext i1 %174 to i32
	%176 = icmp ne i32 %175, 0
	br i1 %176, label %label50, label %label49

label49:
	%177 = load i32, i32* %2
	%178 = icmp ne i32 %177, 0
	%179 = xor i1 %178, true
	%180 = zext i1 %179 to i32
	%181 = icmp ne i32 %180, 0
	br label %label50

label50:
	%182 = phi i1 [ true, %label48 ], [ %181, %label49 ]
	%183 = zext i1 %182 to i32
	br label %label51

label51:
	%184 = icmp ne i32 %183, 0
	br i1 %184, label %label53, label %label52

label52:
	%185 = load i32, i32* %3
	%186 = icmp ne i32 %185, 0
	%187 = xor i1 %186, true
	%188 = zext i1 %187 to i32
	%189 = icmp ne i32 %188, 0
	br label %label53

label53:
	%190 = phi i1 [ true, %label51 ], [ %189, %label52 ]
	%191 = zext i1 %190 to i32
	br label %label54

label54:
	%192 = icmp ne i32 %191, 0
	br i1 %192, label %label55, label %label56

label55:
	%193 = add i32 0, 2
	%194 = sub i32 0, %193
	%195 = icmp ne i32 %194, 0
	br label %label56

label56:
	%196 = phi i1 [ false, %label54 ], [ %195, %label55 ]
	%197 = zext i1 %196 to i32
	br label %label57

label57:
	%198 = load i32, i32* %2
	%199 = icmp ne i32 %198, 0
	%200 = xor i1 %199, true
	%201 = zext i1 %200 to i32
	%202 = icmp ne i32 %201, 0
	br i1 %202, label %label59, label %label58

label58:
	%203 = load i32, i32* %1
	%204 = icmp ne i32 %203, 0
	%205 = xor i1 %204, true
	%206 = zext i1 %205 to i32
	%207 = icmp ne i32 %206, 0
	br label %label59

label59:
	%208 = phi i1 [ true, %label57 ], [ %207, %label58 ]
	%209 = zext i1 %208 to i32
	br label %label60

label60:
	%210 = icmp ne i32 %197, 0
	br i1 %210, label %label61, label %label62

label61:
	%211 = icmp ne i32 %209, 0
	br label %label62

label62:
	%212 = phi i1 [ false, %label60 ], [ %211, %label61 ]
	%213 = zext i1 %212 to i32
	%214 = icmp ne i32 %213, 0
	%215 = xor i1 %214, true
	%216 = zext i1 %215 to i32
	%217 = add i32 0, 65
	%218 = add i32 %216, %217
	%219 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %218)
	br label %label63

label63:
	%220 = load i32, i32* %1
	%221 = icmp ne i32 %220, 0
	br i1 %221, label %label64, label %label65

label64:
	%222 = load i32, i32* %2
	%223 = add i32 0, 1
	%224 = add i32 %222, %223
	%225 = load i32, i32* %2
	%226 = add i32 0, 1
	%227 = add i32 %225, %226
	store i32 %227, i32* %2
	%228 = load i32, i32* %2
	%229 = icmp ne i32 %228, 0
	br label %label65

label65:
	%230 = phi i1 [ false, %label63 ], [ %229, %label64 ]
	%231 = zext i1 %230 to i32
	br label %label66

label66:
	%232 = icmp ne i32 %231, 0
	br i1 %232, label %label67, label %label68

label67:
	%233 = load i32, i32* %3
	%234 = icmp ne i32 %233, 0
	br label %label68

label68:
	%235 = phi i1 [ false, %label66 ], [ %234, %label67 ]
	%236 = zext i1 %235 to i32
	br label %label69

label69:
	%237 = load i32, i32* %2
	%238 = add i32 0, 4
	%239 = add i32 %237, %238
	%240 = load i32, i32* %2
	%241 = add i32 0, 4
	%242 = add i32 %240, %241
	store i32 %242, i32* %2
	%243 = load i32, i32* %2
	%244 = icmp ne i32 %243, 0
	br i1 %244, label %label70, label %label71

label70:
	%245 = load i32, i32* %1
	%246 = add i32 0, 5
	%247 = sub i32 %245, %246
	%248 = load i32, i32* %1
	%249 = add i32 0, 5
	%250 = sub i32 %248, %249
	store i32 %250, i32* %1
	%251 = load i32, i32* %1
	%252 = icmp ne i32 %251, 0
	br label %label71

label71:
	%253 = phi i1 [ false, %label69 ], [ %252, %label70 ]
	%254 = zext i1 %253 to i32
	br label %label72

label72:
	%255 = icmp ne i32 %236, 0
	br i1 %255, label %label74, label %label73

label73:
	%256 = icmp ne i32 %254, 0
	br label %label74

label74:
	%257 = phi i1 [ true, %label72 ], [ %256, %label73 ]
	%258 = zext i1 %257 to i32
	br label %label75

label75:
	%259 = icmp ne i32 %258, 0
	br i1 %259, label %label77, label %label76

label76:
	%260 = add i32 0, 1
	%261 = icmp ne i32 %260, 0
	br label %label77

label77:
	%262 = phi i1 [ true, %label75 ], [ %261, %label76 ]
	%263 = zext i1 %262 to i32
	br label %label78

label78:
	%264 = icmp ne i32 %263, 0
	br i1 %264, label %label80, label %label79

label79:
	%265 = add i32 0, 1
	%266 = sub i32 0, %265
	%267 = add i32 0, 1
	%268 = sub i32 0, %267
	store i32 %268, i32* %3
	%269 = load i32, i32* %3
	%270 = icmp ne i32 %269, 0
	br label %label80

label80:
	%271 = phi i1 [ true, %label78 ], [ %270, %label79 ]
	%272 = zext i1 %271 to i32
	%273 = add i32 0, 65
	%274 = add i32 %272, %273
	%275 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %274)
	%276 = load i32, i32* %1
	%277 = add i32 0, 65
	%278 = add i32 %276, %277
	%279 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %278)
	ret i32 0
}

define i32 @error_in_D_problem() {
	%1 = alloca i32
	store i32 5, i32* %1
	%2 = load i32, i32* %1
	%3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
	%4 = alloca i32
	store i32 3, i32* %4
	%5 = load i32, i32* %4
	%6 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %5)
	%7 = load i32, i32* %1
	%8 = add i32 0, 1
	%9 = add i32 %7, %8
	store i32 %9, i32* %1
	%10 = load i32, i32* %1
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	%12 = add i32 0, 2
	%13 = load i32, i32* %1
	%14 = mul i32 %12, %13
	store i32 %14, i32* %1
	%15 = load i32, i32* %1
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	%17 = load i32, i32* %4
	%18 = add i32 0, 1
	%19 = add i32 %17, %18
	%20 = load i32, i32* %4
	%21 = add i32 0, 1
	%22 = add i32 %20, %21
	store i32 %22, i32* %4
	%23 = load i32, i32* %4
	%24 = load i32, i32* %1
	%25 = load i32, i32* %4
	%26 = add i32 %24, %25
	%27 = load i32, i32* %1
	%28 = load i32, i32* %4
	%29 = add i32 %27, %28
	store i32 %29, i32* %1
	%30 = load i32, i32* %1
	%31 = add i32 0, 2
	%32 = load i32, i32* %4
	%33 = mul i32 %31, %32
	%34 = add i32 0, 2
	%35 = load i32, i32* %4
	%36 = mul i32 %34, %35
	store i32 %36, i32* %4
	%37 = load i32, i32* %4
	%38 = add i32 0, 5
	%39 = sub i32 %37, %38
	%40 = alloca i32
	store i32 %39, i32* %40
	%41 = load i32, i32* %1
	%42 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %41)
	%43 = load i32, i32* %4
	%44 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %43)
	%45 = load i32, i32* %40
	%46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %45)
	ret i32 0
}

define i32 @nand(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	br label %label0

label0:
	%5 = load i32, i32* %3
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label1, label %label2

label1:
	%7 = load i32, i32* %4
	%8 = icmp ne i32 %7, 0
	br label %label2

label2:
	%9 = phi i1 [ false, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	ret i32 %13
}

define i32 @nor(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	br label %label0

label0:
	%5 = load i32, i32* %3
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label2, label %label1

label1:
	%7 = load i32, i32* %4
	%8 = icmp ne i32 %7, 0
	br label %label2

label2:
	%9 = phi i1 [ true, %label0 ], [ %8, %label1 ]
	%10 = zext i1 %9 to i32
	%11 = icmp ne i32 %10, 0
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	ret i32 %13
}

define i32 @random_tests() {
	store i32 70, i32* @cc
	%1 = alloca double
	store double 1.200000e+00, double* %1
	%2 = alloca double
	store double 1.500000e+00, double* %2
	%3 = fadd double 0.0, 1.500000e+00
	%4 = fadd double 0.0, 1.200000e+00
	%5 = fdiv double %3, %4
	%6 = alloca double
	store double %5, double* %6
	%7 = add i32 0, 0
	%8 = add i32 0, 12
	%9 = and i32 %7, %8
	%10 = alloca i32
	store i32 %9, i32* %10
	%11 = alloca i32
	store i32 65, i32* %11
	%12 = load i32, i32* %11
	%13 = alloca i32
	store i32 %12, i32* %13
	%14 = load i32, i32* %11
	%15 = sub i32 0, %14
	%16 = sub i32 0, %15
	%17 = alloca i32
	store i32 %16, i32* %17
	%18 = add i32 0, 1
	%19 = add i32 0, 2
	%20 = mul i32 %18, %19
	%21 = add i32 0, 4
	%22 = or i32 %21, %20
	%23 = alloca i32
	store i32 %22, i32* %23
	%24 = load i32, i32* %10
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	%26 = alloca i32
	store i32 67, i32* %26
	call void @f()
	store i32 65, i32* %26
	%27 = load i32, i32* %26
	%28 = add i32 0, 1
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label0, label %label1

label0:
	%30 = load i32, i32* %26
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = add i32 0, 88
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	%34 = load i32, i32* @cc
	%35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
	br label %label2

label1:
	%36 = load i32, i32* %26
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	%38 = add i32 0, 1
	%39 = add i32 0, 2
	%40 = add i32 0, 31
	%41 = icmp ne i32 %40, 0
	br i1 %41, label %label3, label %label4

label3:
	%42 = add i32 0, 66
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	br label %label5

label4:
	br label %label5

label5:
	br label %label2

label2:
	%44 = load i32, i32* %26
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	ret i32 0
}

define i32 @lol() {
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 10, i32* %1
	%4 = add i32 0, 5
	%5 = sub i32 0, %4
	store i32 %5, i32* %2
	%6 = load i32, i32* %1
	%7 = icmp ne i32 %6, 0
	%8 = xor i1 %7, true
	%9 = zext i1 %8 to i32
	%10 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %9)
	%11 = load i32, i32* %2
	%12 = icmp ne i32 %11, 0
	%13 = xor i1 %12, true
	%14 = zext i1 %13 to i32
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	br label %label0

label0:
	%16 = load i32, i32* %2
	%17 = icmp ne i32 %16, 0
	%18 = xor i1 %17, true
	%19 = zext i1 %18 to i32
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %label2, label %label1

label1:
	%21 = load i32, i32* %1
	%22 = icmp ne i32 %21, 0
	%23 = xor i1 %22, true
	%24 = zext i1 %23 to i32
	%25 = icmp ne i32 %24, 0
	br label %label2

label2:
	%26 = phi i1 [ true, %label0 ], [ %25, %label1 ]
	%27 = zext i1 %26 to i32
	store i32 %27, i32* %3
	%28 = load i32, i32* %3
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	br label %label3

label3:
	%30 = load i32, i32* %2
	%31 = icmp ne i32 %30, 0
	%32 = xor i1 %31, true
	%33 = zext i1 %32 to i32
	%34 = icmp ne i32 %33, 0
	br i1 %34, label %label4, label %label5

label4:
	%35 = load i32, i32* %1
	%36 = icmp ne i32 %35, 0
	%37 = xor i1 %36, true
	%38 = zext i1 %37 to i32
	%39 = icmp ne i32 %38, 0
	br label %label5

label5:
	%40 = phi i1 [ false, %label3 ], [ %39, %label4 ]
	%41 = zext i1 %40 to i32
	store i32 %41, i32* %3
	%42 = load i32, i32* %3
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	br label %label6

label6:
	%44 = load i32, i32* %2
	%45 = icmp ne i32 %44, 0
	%46 = xor i1 %45, true
	%47 = zext i1 %46 to i32
	%48 = icmp ne i32 %47, 0
	br i1 %48, label %label8, label %label7

label7:
	%49 = load i32, i32* %1
	%50 = icmp ne i32 %49, 0
	%51 = xor i1 %50, true
	%52 = zext i1 %51 to i32
	%53 = icmp ne i32 %52, 0
	br label %label8

label8:
	%54 = phi i1 [ true, %label6 ], [ %53, %label7 ]
	%55 = zext i1 %54 to i32
	%56 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %55)
	br label %label9

label9:
	%57 = load i32, i32* %2
	%58 = icmp ne i32 %57, 0
	%59 = xor i1 %58, true
	%60 = zext i1 %59 to i32
	%61 = icmp ne i32 %60, 0
	br i1 %61, label %label11, label %label10

label10:
	%62 = load i32, i32* %1
	%63 = icmp ne i32 %62, 0
	%64 = xor i1 %63, true
	%65 = zext i1 %64 to i32
	%66 = icmp ne i32 %65, 0
	br label %label11

label11:
	%67 = phi i1 [ true, %label9 ], [ %66, %label10 ]
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label12, label %label13

label12:
	%70 = add i32 0, 116
	%71 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %70)
	br label %label14

label13:
	%72 = add i32 0, 102
	%73 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %72)
	br label %label14

label14:
	ret i32 0
}

define i32 @main() {
	%1 = call i32 @lol()
	%2 = call i32 @error_in_C_problem()
	%3 = add i32 0, 10
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = call i32 @error_in_D_problem()
	%6 = add i32 0, 10
	%7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
	%8 = add i32 0, 65
	%9 = add i32 0, 66
	%10 = call i32 @nand(i32 %8, i32 %9)
	%11 = add i32 0, 65
	%12 = add i32 0, 66
	%13 = call i32 @nor(i32 %11, i32 %12)
	%14 = call i32 @random_tests()
	ret i32 0
}
