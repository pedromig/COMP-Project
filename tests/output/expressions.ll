declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	br label %label0

label0:
	%1 = add i32 0, 5
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %label1, label %label2

label1:
	%3 = add i32 0, 3
	%4 = icmp ne i32 %3, 0
	br label %label2

label2:
	%5 = phi i1 [ false, %label0 ], [ %4, %label1 ]
	%6 = zext i1 %5 to i32
	%7 = add i32 0, 65
	%8 = add i32 %6, %7
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	br label %label3

label3:
	%10 = add i32 0, 0
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %label5, label %label4

label4:
	%12 = add i32 0, 0
	%13 = icmp ne i32 %12, 0
	br label %label5

label5:
	%14 = phi i1 [ true, %label3 ], [ %13, %label4 ]
	%15 = zext i1 %14 to i32
	%16 = add i32 0, 65
	%17 = add i32 %15, %16
	%18 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %17)
	%19 = add i32 0, 130
	%20 = add i32 0, 85
	%21 = srem i32 %19, %20
	%22 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %21)
	%23 = add i32 0, 82
	%24 = add i32 0, 81
	%25 = and i32 %23, %24
	%26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
	%27 = add i32 0, 110
	%28 = add i32 0, 85
	%29 = xor i32 %27, %28
	%30 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %29)
	%31 = add i32 0, 82
	%32 = add i32 0, 81
	%33 = or i32 %31, %32
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	%35 = add i32 0, 2
	%36 = add i32 0, 3
	%37 = icmp ne i32 %35, %36
	%38 = zext i1 %37 to i32
	%39 = add i32 0, 65
	%40 = add i32 %38, %39
	%41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
	%42 = add i32 0, 2
	%43 = add i32 0, 3
	%44 = icmp eq i32 %42, %43
	%45 = zext i1 %44 to i32
	%46 = add i32 0, 65
	%47 = add i32 %45, %46
	%48 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %47)
	%49 = add i32 0, 2
	%50 = add i32 0, 3
	%51 = icmp slt i32 %49, %50
	%52 = zext i1 %51 to i32
	%53 = add i32 0, 65
	%54 = add i32 %52, %53
	%55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %54)
	%56 = add i32 0, 2
	%57 = add i32 0, 3
	%58 = icmp sgt i32 %56, %57
	%59 = zext i1 %58 to i32
	%60 = add i32 0, 65
	%61 = add i32 %59, %60
	%62 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %61)
	%63 = add i32 0, 2
	%64 = add i32 0, 3
	%65 = icmp sle i32 %63, %64
	%66 = zext i1 %65 to i32
	%67 = add i32 0, 65
	%68 = add i32 %66, %67
	%69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
	%70 = add i32 0, 2
	%71 = add i32 0, 2
	%72 = icmp sle i32 %70, %71
	%73 = zext i1 %72 to i32
	%74 = add i32 0, 65
	%75 = add i32 %73, %74
	%76 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %75)
	%77 = add i32 0, 2
	%78 = add i32 0, 3
	%79 = icmp sge i32 %77, %78
	%80 = zext i1 %79 to i32
	%81 = add i32 0, 65
	%82 = add i32 %80, %81
	%83 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %82)
	%84 = add i32 0, 2
	%85 = add i32 0, 2
	%86 = icmp sge i32 %84, %85
	%87 = zext i1 %86 to i32
	%88 = add i32 0, 65
	%89 = add i32 %87, %88
	%90 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %89)
	%91 = add i32 0, 2
	%92 = sub i32 0, %91
	%93 = add i32 0, 65
	%94 = add i32 %92, %93
	%95 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %94)
	%96 = add i32 0, 2
	%97 = sub i32 0, %96
	%98 = sub i32 0, %97
	%99 = add i32 0, 65
	%100 = add i32 %98, %99
	%101 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %100)
	%102 = add i32 0, 0
	%103 = icmp ne i32 %102, 0
	%104 = xor i1 %103, true
	%105 = zext i1 %104 to i32
	%106 = add i32 0, 65
	%107 = add i32 %105, %106
	%108 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %107)
	%109 = add i32 0, 5
	%110 = add i32 0, 2
	%111 = add i32 %109, %110
	%112 = add i32 0, 65
	%113 = add i32 %111, %112
	%114 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %113)
	%115 = fadd double 0.0, 5.200000e+00
	%116 = fadd double 0.0, 1.300000e+00
	%117 = fadd double %115, %116
	%118 = add i32 0, 5
	%119 = fadd double 0.0, 1.300000e+00
	%120 = sitofp i32 %118 to double
	%121 = fadd double %120, %119
	%122 = fadd double 0.0, 5.200000e+00
	%123 = add i32 0, 1
	%124 = sitofp i32 %123 to double
	%125 = fadd double %122, %124
	%126 = add i32 0, 5
	%127 = add i32 0, 1
	%128 = sub i32 %126, %127
	%129 = add i32 0, 65
	%130 = add i32 %128, %129
	%131 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %130)
	%132 = fadd double 0.0, 5.200000e+00
	%133 = fadd double 0.0, 1.300000e+00
	%134 = fsub double %132, %133
	%135 = add i32 0, 5
	%136 = fadd double 0.0, 1.300000e+00
	%137 = sitofp i32 %135 to double
	%138 = fsub double %137, %136
	%139 = fadd double 0.0, 5.200000e+00
	%140 = add i32 0, 1
	%141 = sitofp i32 %140 to double
	%142 = fsub double %139, %141
	%143 = add i32 0, 5
	%144 = add i32 0, 3
	%145 = mul i32 %143, %144
	%146 = add i32 0, 65
	%147 = add i32 %145, %146
	%148 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %147)
	%149 = fadd double 0.0, 5.200000e+00
	%150 = fadd double 0.0, 1.300000e+00
	%151 = fmul double %149, %150
	%152 = add i32 0, 5
	%153 = fadd double 0.0, 1.300000e+00
	%154 = sitofp i32 %152 to double
	%155 = fmul double %154, %153
	%156 = fadd double 0.0, 5.200000e+00
	%157 = add i32 0, 1
	%158 = sitofp i32 %157 to double
	%159 = fmul double %156, %158
	%160 = add i32 0, 15
	%161 = add i32 0, 5
	%162 = sdiv i32 %160, %161
	%163 = add i32 0, 65
	%164 = add i32 %162, %163
	%165 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %164)
	%166 = fadd double 0.0, 5.200000e+00
	%167 = fadd double 0.0, 1.300000e+00
	%168 = fdiv double %166, %167
	%169 = add i32 0, 5
	%170 = fadd double 0.0, 1.300000e+00
	%171 = sitofp i32 %169 to double
	%172 = fdiv double %171, %170
	%173 = fadd double 0.0, 5.200000e+00
	%174 = add i32 0, 1
	%175 = sitofp i32 %174 to double
	%176 = fdiv double %173, %175
	%177 = alloca i32
	store i32 90, i32* %177
	ret i32 0
}
