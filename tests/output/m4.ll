declare i32 @putchar(...)
declare i32 @getchar(...)


define double @le_double() {
	%1 = add i32 0, 1
	%2 = add i32 0, 1
	%3 = add i32 %1, %2
	%4 = sitofp i32 %3 to double
	ret double %4
}

define i32 @w1() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = load i32, i32* %1
	%3 = icmp ne i32 %2, 0
	br i1 %3, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	ret i32 1
}

define i32 @w2() {
	ret i32 0
}

define i32 @w() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 10, i32* %2
	%3 = load i32, i32* %1
	%4 = load i32, i32* %2
	%5 = icmp ne i32 %3, %4
	%6 = zext i1 %5 to i32
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label0, label %label1

label0:
	%8 = load i32, i32* %1
	%9 = add i32 0, 1
	%10 = add i32 %8, %9
	store i32 %10, i32* %1
	%11 = load i32, i32* %1
	%12 = load i32, i32* %2
	%13 = icmp ne i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label2, label %label3

label2:
	%16 = load i32, i32* %1
	%17 = add i32 0, 1
	%18 = add i32 %16, %17
	store i32 %18, i32* %1
	%19 = load i32, i32* %1
	%20 = load i32, i32* %2
	%21 = icmp ne i32 %19, %20
	%22 = zext i1 %21 to i32
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label4, label %label5

label4:
	%24 = load i32, i32* %1
	%25 = add i32 0, 1
	%26 = add i32 %24, %25
	store i32 %26, i32* %1
	%27 = load i32, i32* %1
	%28 = load i32, i32* %2
	%29 = icmp ne i32 %27, %28
	%30 = zext i1 %29 to i32
	%31 = icmp ne i32 %30, 0
	br i1 %31, label %label4, label %label5

label5:
	%32 = load i32, i32* %1
	%33 = load i32, i32* %2
	%34 = icmp ne i32 %32, %33
	%35 = zext i1 %34 to i32
	%36 = icmp ne i32 %35, 0
	br i1 %36, label %label2, label %label3

label3:
	%37 = load i32, i32* %1
	%38 = load i32, i32* %2
	%39 = icmp ne i32 %37, %38
	%40 = zext i1 %39 to i32
	%41 = icmp ne i32 %40, 0
	br i1 %41, label %label0, label %label1

label1:
	ret i32 1
}

define i32 @relf() {
	%1 = alloca i32
	ret i32 100
}
@aaa = global i32 1

define i32 @meeeh() {
	%1 = alloca i32
	ret i32 100
}
@g1 = global i32 0
@g2 = global i32 0
@g3 = global i32 0

define i32 @flow() {
	ret i32 0
}

define i32 @flow2(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = add i32 0, 1
	%7 = icmp eq i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	store i32 3, i32* %4
	br label %label2

label1:
	br label %label2

label2:
	ret i32 0
}

define i32 @shapo() {
	ret i32 100
}

define i32 @AND() {
	br label %label0

label0:
	%1 = call i32 @meeeh()
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label1, label %label2

label1:
	%3 = call i32 @shapo()
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ false, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	br label %label3

label3:
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label4, label %label5

label4:
	%8 = call i32 @meeeh()
	%9 = icmp ne i32 %8, 0
	br label %label5

label5:
	%10 = phi i1 [ false, %label3 ], [ %9, %label4 ]
	%11 = zext i1 %10 to i32
	br label %label6

label6:
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label7, label %label8

label7:
	%13 = call i32 @shapo()
	%14 = icmp ne i32 %13, 0
	br label %label8

label8:
	%15 = phi i1 [ false, %label6 ], [ %14, %label7 ]
	%16 = zext i1 %15 to i32
	br label %label9

label9:
	%17 = load i32, i32* @aaa
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %label11, label %label10

label10:
	%19 = icmp ne i32 %16, 0
	br label %label11

label11:
	%20 = phi i1 [ true, %label9 ], [ %19, %label10 ]
	%21 = zext i1 %20 to i32
	%22 = alloca i32
	store i32 %21, i32* %22
	br label %label12

label12:
	%23 = call i32 @meeeh()
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label13, label %label14

label13:
	%25 = call i32 @shapo()
	%26 = icmp ne i32 %25, 0
	br label %label14

label14:
	%27 = phi i1 [ false, %label12 ], [ %26, %label13 ]
	%28 = zext i1 %27 to i32
	br label %label15

label15:
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label16, label %label17

label16:
	%30 = call i32 @meeeh()
	%31 = icmp ne i32 %30, 0
	br label %label17

label17:
	%32 = phi i1 [ false, %label15 ], [ %31, %label16 ]
	%33 = zext i1 %32 to i32
	br label %label18

label18:
	%34 = icmp ne i32 %33, 0
	br i1 %34, label %label19, label %label20

label19:
	%35 = call i32 @shapo()
	%36 = icmp ne i32 %35, 0
	br label %label20

label20:
	%37 = phi i1 [ false, %label18 ], [ %36, %label19 ]
	%38 = zext i1 %37 to i32
	br label %label21

label21:
	%39 = load i32, i32* @aaa
	%40 = icmp ne i32 %39, 0
	br i1 %40, label %label23, label %label22

label22:
	%41 = icmp ne i32 %38, 0
	br label %label23

label23:
	%42 = phi i1 [ true, %label21 ], [ %41, %label22 ]
	%43 = zext i1 %42 to i32
	%44 = alloca i32
	store i32 %43, i32* %44
	br label %label24

label24:
	%45 = call i32 @relf()
	%46 = icmp ne i32 %45, 0
	br i1 %46, label %label25, label %label26

label25:
	%47 = call i32 @meeeh()
	%48 = icmp ne i32 %47, 0
	br label %label26

label26:
	%49 = phi i1 [ false, %label24 ], [ %48, %label25 ]
	%50 = zext i1 %49 to i32
	%51 = alloca i32
	store i32 %50, i32* %51
	ret i32 1
}

define void @OR() {
	br label %label0

label0:
	%1 = call i32 @meeeh()
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label1, label %label2

label1:
	%3 = call i32 @shapo()
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ false, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	br label %label3

label3:
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %label4, label %label5

label4:
	%8 = call i32 @meeeh()
	%9 = icmp ne i32 %8, 0
	br label %label5

label5:
	%10 = phi i1 [ false, %label3 ], [ %9, %label4 ]
	%11 = zext i1 %10 to i32
	br label %label6

label6:
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %label7, label %label8

label7:
	%13 = call i32 @shapo()
	%14 = icmp ne i32 %13, 0
	br label %label8

label8:
	%15 = phi i1 [ false, %label6 ], [ %14, %label7 ]
	%16 = zext i1 %15 to i32
	br label %label9

label9:
	%17 = load i32, i32* @aaa
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %label11, label %label10

label10:
	%19 = icmp ne i32 %16, 0
	br label %label11

label11:
	%20 = phi i1 [ true, %label9 ], [ %19, %label10 ]
	%21 = zext i1 %20 to i32
	%22 = alloca i32
	store i32 %21, i32* %22
	ret void
}

define void @XOR() {
	ret void
}

define void @rel() {
	%1 = alloca i32
	%2 = call i32 @relf()
	%3 = call i32 @meeeh()
	%4 = icmp eq i32 %2, %3
	%5 = zext i1 %4 to i32
	%6 = icmp ne i32 %5, 0
	br i1 %6, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	ret void
}

define i32 @f2(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = alloca i32
	%4 = alloca i32
	store i32 1, i32* %3
	%5 = load i32, i32* %3
	%6 = add i32 0, 1
	%7 = add i32 %5, %6
	store i32 %7, i32* %4
	ret i32 105
}

define i32 @f3(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = add i32 0, 105
	%6 = load i32, i32* %3
	%7 = add i32 %5, %6
	ret i32 %7
}

define i32 @boo(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %3)
	%5 = load i32, i32* %2
	ret i32 %5
}
@a = global i32 2

define i32 @main() {
	br label %label0

label0:
	%1 = add i32 0, 1
	%2 = call i32 @boo(i32 %1)
	%3 = icmp ne i32 %2, 0
	br i1 %3, label %label2, label %label1

label1:
	%4 = add i32 0, 2
	%5 = call i32 @boo(i32 %4)
	%6 = icmp ne i32 %5, 0
	br label %label2

label2:
	%7 = phi i1 [ true, %label0 ], [ %6, %label1 ]
	%8 = zext i1 %7 to i32
	%9 = alloca i32
	store i32 %8, i32* %9
	call void @rel()
	store i32 10, i32* %9
	%10 = alloca i32
	store i32 44, i32* %10
	%11 = add i32 0, 1
	%12 = fadd double 0.0, 1.100000e+00
	%13 = call i32 @f3(i32 %11, double %12)
	%14 = alloca i32
	store i32 %13, i32* %14
	%15 = add i32 0, 1
	%16 = add i32 0, 10
	%17 = add i32 %15, %16
	%18 = add i32 0, 1
	%19 = add i32 %17, %18
	store i32 101, i32* %14
	%20 = load i32, i32* %14
	%21 = add i32 %19, %20
	%22 = alloca i32
	store i32 %21, i32* %22
	%23 = add i32 0, 1
	%24 = add i32 0, 1
	%25 = add i32 %23, %24
	%26 = add i32 0, 1
	%27 = add i32 %25, %26
	%28 = add i32 0, 90
	%29 = add i32 %27, %28
	%30 = alloca i32
	store i32 %29, i32* %30
	%31 = add i32 0, 1
	%32 = add i32 0, 5
	%33 = srem i32 %31, %32
	%34 = add i32 0, 1
	%35 = fadd double 0.0, 1.100000e+00
	%36 = sitofp i32 %34 to double
	%37 = fmul double %36, %35
	%38 = sitofp i32 %33 to double
	%39 = fadd double %38, %37
	%40 = alloca double
	store double %39, double* %40
	%41 = add i32 0, 1
	%42 = fadd double 0.0, 1.100000e+00
	%43 = sitofp i32 %41 to double
	%44 = fmul double %43, %42
	%45 = fadd double 0.0, 1.100000e+00
	%46 = fadd double %45, %44
	%47 = alloca double
	store double %46, double* %47
	br label %label3

label3:
	%48 = add i32 0, 1
	%49 = call i32 @boo(i32 %48)
	%50 = icmp ne i32 %49, 0
	br i1 %50, label %label4, label %label5

label4:
	%51 = add i32 0, 0
	%52 = call i32 @boo(i32 %51)
	%53 = icmp ne i32 %52, 0
	br label %label5

label5:
	%54 = phi i1 [ false, %label3 ], [ %53, %label4 ]
	%55 = zext i1 %54 to i32
	br label %label6

label6:
	%56 = icmp ne i32 %55, 0
	br i1 %56, label %label7, label %label8

label7:
	%57 = add i32 0, 1
	%58 = call i32 @boo(i32 %57)
	%59 = icmp ne i32 %58, 0
	br label %label8

label8:
	%60 = phi i1 [ false, %label6 ], [ %59, %label7 ]
	%61 = zext i1 %60 to i32
	br label %label9

label9:
	%62 = icmp ne i32 %61, 0
	br i1 %62, label %label11, label %label10

label10:
	%63 = add i32 0, 2
	%64 = call i32 @boo(i32 %63)
	%65 = icmp ne i32 %64, 0
	br label %label11

label11:
	%66 = phi i1 [ true, %label9 ], [ %65, %label10 ]
	%67 = zext i1 %66 to i32
	%68 = fadd double 0.0, 2.000000e+02
	%69 = sitofp i32 %67 to double
	%70 = fadd double %68, %69
	%71 = alloca double
	store double %70, double* %71
	%72 = add i32 0, 1
	%73 = add i32 0, 1
	%74 = add i32 %72, %73
	%75 = call i32 @f2(i32 %74)
	%76 = sitofp i32 %75 to double
	store double %76, double* %40
	store double 1.000000e+00, double* %40
	store i32 1, i32* %22
	store i32 1, i32* %30
	br label %label12

label12:
	%77 = add i32 0, 2
	%78 = icmp ne i32 %77, 0
	br i1 %78, label %label13, label %label14

label13:
	%79 = add i32 0, 72
	%80 = call i32 @boo(i32 %79)
	%81 = sub i32 0, %80
	%82 = sub i32 0, %81
	%83 = sub i32 0, %82
	%84 = icmp ne i32 %83, 0
	br label %label14

label14:
	%85 = phi i1 [ false, %label12 ], [ %84, %label13 ]
	%86 = zext i1 %85 to i32
	%87 = add i32 0, 33
	%88 = and i32 %87, %86
	%89 = sub i32 0, %88
	%90 = sub i32 0, %89
	%91 = sub i32 0, %90
	%92 = add i32 0, 3
	%93 = mul i32 %92, %91
	%94 = add i32 0, 1
	%95 = add i32 %94, %93
	%96 = add i32 0, 4
	%97 = add i32 %95, %96
	%98 = add i32 0, 6
	%99 = add i32 %97, %98
	%100 = add i32 0, 43
	%101 = add i32 %99, %100
	%102 = add i32 0, 97
	%103 = add i32 0, 114
	%104 = mul i32 %102, %103
	%105 = add i32 %101, %104
	%106 = alloca i32
	store i32 %105, i32* %106
	%107 = alloca i32
	store i32 97, i32* %107
	%108 = load i32, i32* %107
	%109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %108)
	store i32 99, i32* %9
	%110 = load i32, i32* %9
	%111 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %110)
	store i32 100, i32* %9
	%112 = load i32, i32* %9
	%113 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %112)
	%114 = add i32 0, 10
	%115 = add i32 0, 3
	%116 = sitofp i32 %115 to double
	%117 = call i32 @f1(i32 %114, double %116)
	%118 = add i32 0, 99
	%119 = call i32 @boo(i32 %118)
	%120 = load i32, i32* %106
	%121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %120)
	%122 = add i32 0, 99
	%123 = call i32 @boo(i32 %122)
	%124 = add i32 0, 10
	%125 = add i32 %123, %124
	%126 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %125)
	%127 = add i32 0, 48
	%128 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %127)
	%129 = add i32 0, 48
	%130 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %129)
	%131 = add i32 0, 1
	%132 = call i32 @f2(i32 %131)
	%133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %132)
	%134 = add i32 0, 1
	%135 = sub i32 0, %134
	%136 = fadd double 0.0, 1.100000e+00
	%137 = call i32 @f3(i32 %135, double %136)
	%138 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %137)
	%139 = add i32 0, 10
	%140 = add i32 0, 9
	%141 = mul i32 %139, %140
	%142 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %141)
	%143 = add i32 0, 9
	%144 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %143)
	%145 = add i32 0, 39
	%146 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %145)
	%147 = add i32 0, 34
	%148 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %147)
	%149 = add i32 0, 92
	%150 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %149)
	%151 = load i32, i32* %9
	%152 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %151)
	%153 = add i32 0, 0
	%154 = icmp ne i32 %153, 0
	%155 = xor i1 %154, true
	%156 = zext i1 %155 to i32
	%157 = load i32, i32* %10
	%158 = add i32 %157, %156
	%159 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %158)
	%160 = add i32 0, 1
	%161 = icmp ne i32 %160, 0
	%162 = xor i1 %161, true
	%163 = zext i1 %162 to i32
	%164 = load i32, i32* %14
	%165 = add i32 %164, %163
	%166 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %165)
	%167 = add i32 0, 64
	%168 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %167)
	%169 = add i32 0, 97
	%170 = add i32 0, 140
	%171 = srem i32 %169, %170
	%172 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %171)
	%173 = add i32 0, 10
	%174 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %173)
	%175 = add i32 0, 1
	%176 = add i32 0, 1
	%177 = icmp eq i32 %175, %176
	%178 = zext i1 %177 to i32
	%179 = load i32, i32* %10
	%180 = sub i32 %179, %178
	%181 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %180)
	%182 = add i32 0, 1
	%183 = fadd double 0.0, 1.100000e+00
	%184 = sitofp i32 %182 to double
	%185 = fcmp ole double %184, %183
	%186 = zext i1 %185 to i32
	%187 = add i32 0, 2
	%188 = add i32 0, 1
	%189 = and i32 %187, %188
	%190 = mul i32 %186, %189
	%191 = add i32 0, 97
	%192 = add i32 %191, %190
	%193 = add i32 0, 10
	%194 = add i32 0, 5
	%195 = or i32 %193, %194
	%196 = add i32 %192, %195
	%197 = add i32 0, 2
	%198 = add i32 0, 10
	%199 = xor i32 %197, %198
	%200 = sub i32 %196, %199
	%201 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %200)
	br label %label15

label15:
	%202 = add i32 0, 0
	%203 = call i32 @boo(i32 %202)
	%204 = icmp ne i32 %203, 0
	br i1 %204, label %label16, label %label17

label16:
	%205 = add i32 0, 0
	%206 = call i32 @boo(i32 %205)
	%207 = icmp ne i32 %206, 0
	br label %label17

label17:
	%208 = phi i1 [ false, %label15 ], [ %207, %label16 ]
	%209 = zext i1 %208 to i32
	%210 = add i32 0, 97
	%211 = add i32 %210, %209
	%212 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %211)
	%213 = load i32, i32* %9
	%214 = load i32, i32* %9
	%215 = mul i32 %213, %214
	%216 = sitofp i32 %215 to double
	%217 = alloca double
	store double %216, double* %217
	br label %label18

label18:
	%218 = add i32 0, 1
	%219 = call i32 @boo(i32 %218)
	%220 = icmp ne i32 %219, 0
	br i1 %220, label %label19, label %label20

label19:
	%221 = add i32 0, 0
	%222 = call i32 @boo(i32 %221)
	%223 = icmp ne i32 %222, 0
	br label %label20

label20:
	%224 = phi i1 [ false, %label18 ], [ %223, %label19 ]
	%225 = zext i1 %224 to i32
	br label %label21

label21:
	%226 = add i32 0, 1
	%227 = call i32 @boo(i32 %226)
	%228 = icmp ne i32 %227, 0
	br i1 %228, label %label23, label %label22

label22:
	%229 = add i32 0, 2
	%230 = call i32 @boo(i32 %229)
	%231 = icmp ne i32 %230, 0
	br label %label23

label23:
	%232 = phi i1 [ true, %label21 ], [ %231, %label22 ]
	%233 = zext i1 %232 to i32
	br label %label24

label24:
	%234 = add i32 0, 2
	%235 = call i32 @boo(i32 %234)
	%236 = icmp ne i32 %235, 0
	br i1 %236, label %label25, label %label26

label25:
	%237 = icmp ne i32 %233, 0
	br label %label26

label26:
	%238 = phi i1 [ false, %label24 ], [ %237, %label25 ]
	%239 = zext i1 %238 to i32
	br label %label27

label27:
	%240 = add i32 0, 1
	%241 = call i32 @boo(i32 %240)
	%242 = icmp ne i32 %241, 0
	br i1 %242, label %label29, label %label28

label28:
	%243 = icmp ne i32 %239, 0
	br label %label29

label29:
	%244 = phi i1 [ true, %label27 ], [ %243, %label28 ]
	%245 = zext i1 %244 to i32
	br label %label30

label30:
	%246 = icmp ne i32 %225, 0
	br i1 %246, label %label31, label %label32

label31:
	%247 = icmp ne i32 %245, 0
	br label %label32

label32:
	%248 = phi i1 [ false, %label30 ], [ %247, %label31 ]
	%249 = zext i1 %248 to i32
	%250 = add i32 0, 96
	%251 = add i32 %250, %249
	%252 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %251)
	%253 = add i32 0, 49
	%254 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %253)
	%255 = add i32 0, 5064
	%256 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %255)
	%257 = add i32 0, 2
	%258 = add i32 0, 3
	%259 = add i32 %257, %258
	%260 = add i32 0, 4
	%261 = sub i32 0, %260
	%262 = sub i32 %259, %261
	%263 = add i32 0, 1
	%264 = add i32 %262, %263
	%265 = add i32 0, 65
	%266 = add i32 0, 90
	%267 = srem i32 %265, %266
	%268 = add i32 %264, %267
	%269 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %268)
	%270 = add i32 0, 2
	%271 = add i32 0, 3
	%272 = add i32 %270, %271
	%273 = add i32 0, 4
	%274 = sub i32 %272, %273
	%275 = add i32 0, 1
	%276 = add i32 %274, %275
	%277 = add i32 0, 65
	%278 = add i32 %276, %277
	%279 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %278)
	%280 = add i32 0, 104
	%281 = call i32 @boo(i32 %280)
	%282 = call i32 @relf()
	%283 = add i32 0, 97
	%284 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %283)
	%285 = alloca i32
	store i32 0, i32* %285
	%286 = add i32 0, 1
	%287 = sub i32 0, %286
	%288 = load i32, i32* %285
	%289 = mul i32 %288, %287
	store i32 %289, i32* %285
	%290 = load i32, i32* @g2
	%291 = load i32, i32* @g1
	%292 = add i32 %290, %291
	%293 = add i32 0, 1
	%294 = icmp ne i32 %292, %293
	%295 = zext i1 %294 to i32
	%296 = icmp ne i32 %295, 0
	br i1 %296, label %label33, label %label34

label33:
	store i32 1, i32* @g3
	br label %label36

label36:
	%297 = call i32 @relf()
	%298 = icmp ne i32 %297, 0
	br i1 %298, label %label37, label %label38

label37:
	%299 = load i32, i32* @g1
	%300 = icmp ne i32 %299, 0
	br label %label38

label38:
	%301 = phi i1 [ false, %label36 ], [ %300, %label37 ]
	%302 = zext i1 %301 to i32
	br label %label39

label39:
	%303 = icmp ne i32 %302, 0
	br i1 %303, label %label40, label %label41

label40:
	%304 = load i32, i32* @aaa
	%305 = icmp ne i32 %304, 0
	br label %label41

label41:
	%306 = phi i1 [ false, %label39 ], [ %305, %label40 ]
	%307 = zext i1 %306 to i32
	%308 = call i32 @meeeh()
	%309 = icmp ne i32 %308, %307
	%310 = zext i1 %309 to i32
	%311 = icmp ne i32 %310, 0
	br i1 %311, label %label42, label %label43

label42:
	%312 = add i32 0, 101
	%313 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %312)
	store i32 1, i32* @g3
	br label %label44

label43:
	%314 = add i32 0, 102
	%315 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %314)
	br label %label44

label44:
	%316 = add i32 0, 103
	%317 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %316)
	store i32 1, i32* @g3
	br label %label45

label45:
	%318 = call i32 @relf()
	%319 = icmp ne i32 %318, 0
	br i1 %319, label %label46, label %label47

label46:
	%320 = load i32, i32* @g1
	%321 = icmp ne i32 %320, 0
	br label %label47

label47:
	%322 = phi i1 [ false, %label45 ], [ %321, %label46 ]
	%323 = zext i1 %322 to i32
	br label %label48

label48:
	%324 = icmp ne i32 %323, 0
	br i1 %324, label %label49, label %label50

label49:
	%325 = load i32, i32* @aaa
	%326 = icmp ne i32 %325, 0
	br label %label50

label50:
	%327 = phi i1 [ false, %label48 ], [ %326, %label49 ]
	%328 = zext i1 %327 to i32
	%329 = call i32 @meeeh()
	%330 = icmp ne i32 %329, %328
	%331 = zext i1 %330 to i32
	%332 = icmp ne i32 %331, 0
	br i1 %332, label %label51, label %label52

label51:
	%333 = add i32 0, 104
	%334 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %333)
	store i32 1, i32* @g3
	br label %label53

label52:
	%335 = add i32 0, 105
	%336 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %335)
	br label %label53

label53:
	%337 = add i32 0, 106
	%338 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %337)
	br label %label35

label34:
	%339 = add i32 0, 107
	%340 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %339)
	store i32 1, i32* @g2
	br label %label35

label35:
	br label %label54

label54:
	%341 = add i32 0, 1
	%342 = call i32 @boo(i32 %341)
	%343 = icmp ne i32 %342, 0
	br i1 %343, label %label55, label %label56

label55:
	%344 = add i32 0, 2
	%345 = call i32 @boo(i32 %344)
	%346 = icmp ne i32 %345, 0
	br label %label56

label56:
	%347 = phi i1 [ false, %label54 ], [ %346, %label55 ]
	%348 = zext i1 %347 to i32
	br label %label57

label57:
	%349 = icmp ne i32 %348, 0
	br i1 %349, label %label58, label %label59

label58:
	%350 = add i32 0, 3
	%351 = call i32 @boo(i32 %350)
	%352 = icmp ne i32 %351, 0
	br label %label59

label59:
	%353 = phi i1 [ false, %label57 ], [ %352, %label58 ]
	%354 = zext i1 %353 to i32
	br label %label60

label60:
	%355 = icmp ne i32 %354, 0
	br i1 %355, label %label61, label %label62

label61:
	%356 = add i32 0, 10
	%357 = call i32 @boo(i32 %356)
	%358 = icmp ne i32 %357, 0
	br label %label62

label62:
	%359 = phi i1 [ false, %label60 ], [ %358, %label61 ]
	%360 = zext i1 %359 to i32
	br label %label63

label63:
	%361 = icmp ne i32 %360, 0
	br i1 %361, label %label64, label %label65

label64:
	%362 = add i32 0, 40
	%363 = call i32 @boo(i32 %362)
	%364 = icmp ne i32 %363, 0
	br label %label65

label65:
	%365 = phi i1 [ false, %label63 ], [ %364, %label64 ]
	%366 = zext i1 %365 to i32
	br label %label66

label66:
	%367 = add i32 0, 30
	%368 = call i32 @boo(i32 %367)
	%369 = icmp ne i32 %368, 0
	br i1 %369, label %label67, label %label68

label67:
	%370 = add i32 0, 60
	%371 = call i32 @boo(i32 %370)
	%372 = icmp ne i32 %371, 0
	br label %label68

label68:
	%373 = phi i1 [ false, %label66 ], [ %372, %label67 ]
	%374 = zext i1 %373 to i32
	br label %label69

label69:
	%375 = add i32 0, 90
	%376 = call i32 @boo(i32 %375)
	%377 = add i32 0, 1
	%378 = add i32 %376, %377
	%379 = icmp ne i32 %378, 0
	br i1 %379, label %label70, label %label71

label70:
	%380 = icmp ne i32 %374, 0
	br label %label71

label71:
	%381 = phi i1 [ false, %label69 ], [ %380, %label70 ]
	%382 = zext i1 %381 to i32
	%383 = load i32, i32* %285
	%384 = add i32 0, 10
	%385 = icmp slt i32 %383, %384
	%386 = zext i1 %385 to i32
	%387 = icmp ne i32 %386, 0
	br i1 %387, label %label72, label %label73

label72:
	%388 = load i32, i32* %285
	%389 = add i32 0, 1
	%390 = add i32 %388, %389
	store i32 %390, i32* %285
	%391 = load i32, i32* %285
	%392 = add i32 0, 5
	%393 = icmp slt i32 %391, %392
	%394 = zext i1 %393 to i32
	%395 = icmp ne i32 %394, 0
	br i1 %395, label %label74, label %label75

label74:
	%396 = add i32 0, 66
	%397 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %396)
	br label %label76

label75:
	%398 = add i32 0, 99
	%399 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %398)
	br label %label76

label76:
	%400 = add i32 0, 97
	%401 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %400)
	br label %label77

label77:
	%402 = add i32 0, 30
	%403 = call i32 @boo(i32 %402)
	%404 = icmp ne i32 %403, 0
	br i1 %404, label %label78, label %label79

label78:
	%405 = add i32 0, 60
	%406 = call i32 @boo(i32 %405)
	%407 = icmp ne i32 %406, 0
	br label %label79

label79:
	%408 = phi i1 [ false, %label77 ], [ %407, %label78 ]
	%409 = zext i1 %408 to i32
	br label %label80

label80:
	%410 = add i32 0, 90
	%411 = call i32 @boo(i32 %410)
	%412 = add i32 0, 1
	%413 = add i32 %411, %412
	%414 = icmp ne i32 %413, 0
	br i1 %414, label %label81, label %label82

label81:
	%415 = icmp ne i32 %409, 0
	br label %label82

label82:
	%416 = phi i1 [ false, %label80 ], [ %415, %label81 ]
	%417 = zext i1 %416 to i32
	%418 = load i32, i32* %285
	%419 = add i32 0, 10
	%420 = icmp slt i32 %418, %419
	%421 = zext i1 %420 to i32
	%422 = icmp ne i32 %421, 0
	br i1 %422, label %label72, label %label73

label73:
	br label %label83

label83:
	%423 = add i32 0, 30
	%424 = call i32 @boo(i32 %423)
	%425 = icmp ne i32 %424, 0
	br i1 %425, label %label84, label %label85

label84:
	%426 = add i32 0, 60
	%427 = call i32 @boo(i32 %426)
	%428 = icmp ne i32 %427, 0
	br label %label85

label85:
	%429 = phi i1 [ false, %label83 ], [ %428, %label84 ]
	%430 = zext i1 %429 to i32
	br label %label86

label86:
	%431 = add i32 0, 90
	%432 = call i32 @boo(i32 %431)
	%433 = add i32 0, 1
	%434 = add i32 %432, %433
	%435 = icmp ne i32 %434, 0
	br i1 %435, label %label87, label %label88

label87:
	%436 = icmp ne i32 %430, 0
	br label %label88

label88:
	%437 = phi i1 [ false, %label86 ], [ %436, %label87 ]
	%438 = zext i1 %437 to i32
	%439 = load i32, i32* %285
	%440 = add i32 0, 10
	%441 = icmp slt i32 %439, %440
	%442 = zext i1 %441 to i32
	%443 = icmp ne i32 %442, 0
	br i1 %443, label %label89, label %label90

label89:
	%444 = load i32, i32* %285
	%445 = add i32 0, 1
	%446 = add i32 %444, %445
	store i32 %446, i32* %285
	%447 = load i32, i32* %285
	%448 = add i32 0, 5
	%449 = icmp slt i32 %447, %448
	%450 = zext i1 %449 to i32
	%451 = icmp ne i32 %450, 0
	br i1 %451, label %label91, label %label92

label91:
	ret i32 1
	br label %label93

label92:
	%453 = add i32 0, 99
	%454 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %453)
	br label %label93

label93:
	%455 = add i32 0, 97
	%456 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %455)
	br label %label94

label94:
	%457 = add i32 0, 30
	%458 = call i32 @boo(i32 %457)
	%459 = icmp ne i32 %458, 0
	br i1 %459, label %label95, label %label96

label95:
	%460 = add i32 0, 60
	%461 = call i32 @boo(i32 %460)
	%462 = icmp ne i32 %461, 0
	br label %label96

label96:
	%463 = phi i1 [ false, %label94 ], [ %462, %label95 ]
	%464 = zext i1 %463 to i32
	br label %label97

label97:
	%465 = add i32 0, 90
	%466 = call i32 @boo(i32 %465)
	%467 = add i32 0, 1
	%468 = add i32 %466, %467
	%469 = icmp ne i32 %468, 0
	br i1 %469, label %label98, label %label99

label98:
	%470 = icmp ne i32 %464, 0
	br label %label99

label99:
	%471 = phi i1 [ false, %label97 ], [ %470, %label98 ]
	%472 = zext i1 %471 to i32
	%473 = load i32, i32* %285
	%474 = add i32 0, 10
	%475 = icmp slt i32 %473, %474
	%476 = zext i1 %475 to i32
	%477 = icmp ne i32 %476, 0
	br i1 %477, label %label89, label %label90

label90:
	br label %label100

label100:
	%478 = add i32 0, 30
	%479 = call i32 @boo(i32 %478)
	%480 = icmp ne i32 %479, 0
	br i1 %480, label %label101, label %label102

label101:
	%481 = add i32 0, 60
	%482 = call i32 @boo(i32 %481)
	%483 = icmp ne i32 %482, 0
	br label %label102

label102:
	%484 = phi i1 [ false, %label100 ], [ %483, %label101 ]
	%485 = zext i1 %484 to i32
	br label %label103

label103:
	%486 = add i32 0, 90
	%487 = call i32 @boo(i32 %486)
	%488 = add i32 0, 1
	%489 = add i32 %487, %488
	%490 = icmp ne i32 %489, 0
	br i1 %490, label %label104, label %label105

label104:
	%491 = icmp ne i32 %485, 0
	br label %label105

label105:
	%492 = phi i1 [ false, %label103 ], [ %491, %label104 ]
	%493 = zext i1 %492 to i32
	%494 = load i32, i32* %285
	%495 = add i32 0, 10
	%496 = icmp slt i32 %494, %495
	%497 = zext i1 %496 to i32
	%498 = icmp ne i32 %497, 0
	br i1 %498, label %label106, label %label107

label106:
	%499 = load i32, i32* %285
	%500 = add i32 0, 1
	%501 = add i32 %499, %500
	store i32 %501, i32* %285
	%502 = load i32, i32* %285
	%503 = add i32 0, 5
	%504 = icmp slt i32 %502, %503
	%505 = zext i1 %504 to i32
	%506 = icmp ne i32 %505, 0
	br i1 %506, label %label108, label %label109

label108:
	%507 = add i32 0, 99
	%508 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %507)
	br label %label110

label109:
	ret i32 1
	br label %label110

label110:
	%510 = add i32 0, 97
	%511 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %510)
	br label %label111

label111:
	%512 = add i32 0, 30
	%513 = call i32 @boo(i32 %512)
	%514 = icmp ne i32 %513, 0
	br i1 %514, label %label112, label %label113

label112:
	%515 = add i32 0, 60
	%516 = call i32 @boo(i32 %515)
	%517 = icmp ne i32 %516, 0
	br label %label113

label113:
	%518 = phi i1 [ false, %label111 ], [ %517, %label112 ]
	%519 = zext i1 %518 to i32
	br label %label114

label114:
	%520 = add i32 0, 90
	%521 = call i32 @boo(i32 %520)
	%522 = add i32 0, 1
	%523 = add i32 %521, %522
	%524 = icmp ne i32 %523, 0
	br i1 %524, label %label115, label %label116

label115:
	%525 = icmp ne i32 %519, 0
	br label %label116

label116:
	%526 = phi i1 [ false, %label114 ], [ %525, %label115 ]
	%527 = zext i1 %526 to i32
	%528 = load i32, i32* %285
	%529 = add i32 0, 10
	%530 = icmp slt i32 %528, %529
	%531 = zext i1 %530 to i32
	%532 = icmp ne i32 %531, 0
	br i1 %532, label %label106, label %label107

label107:
	%533 = load i32, i32* %9
	%534 = add i32 0, 1
	%535 = xor i32 %533, %534
	%536 = icmp ne i32 %535, 0
	br i1 %536, label %label117, label %label118

label117:
	%537 = add i32 0, 67
	%538 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %537)
	br label %label119

label118:
	br label %label119

label119:
	%539 = add i32 0, 67
	%540 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %539)
	%541 = add i32 0, 108
	%542 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %541)
	%543 = add i32 0, 97
	%544 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %543)
	%545 = add i32 0, 10
	%546 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %545)
	%547 = add i32 0, 97
	%548 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %547)
	%549 = add i32 0, 97
	%550 = fadd double 0.0, 1.100000e+00
	%551 = call i32 @f1(i32 %549, double %550)
	%552 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %551)
	%553 = call i32 @f10s()
	%554 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %553)
	ret i32 0
}

define i32 @f1(i32, double) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca double
	store double %1, double* %4
	%5 = add i32 0, 90
	%6 = call i32 @boo(i32 %5)
	%7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
	ret i32 1
}

define i32 @f10(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	ret i32 1
}

define i32 @f10s() {
	ret i32 1
}

define i32 @f10c() {
	ret i32 0
}

define double @f10d() {
	ret double 0.000000e+00
}
