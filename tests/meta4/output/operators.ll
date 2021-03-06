declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @aa(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define i32 @bb(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define i32 @cc(i32) {
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	ret i32 %3
}

define double @dd(double) {
	%2 = alloca double
	store double %0, double* %2
	%3 = load double, double* %2
	ret double %3
}

define i32 @arithmetic(double, double, double) {
	%4 = alloca double
	store double %0, double* %4
	%5 = alloca double
	store double %1, double* %5
	%6 = alloca double
	store double %2, double* %6
	%7 = alloca double
	store double 1.200000e+00, double* %7
	%8 = load double, double* %4
	%9 = load double, double* %5
	%10 = fadd double %8, %9
	store double %10, double* %7
	%11 = load double, double* %4
	%12 = load double, double* %5
	%13 = fsub double %11, %12
	store double %13, double* %7
	%14 = load double, double* %4
	%15 = load double, double* %5
	%16 = fdiv double %14, %15
	store double %16, double* %7
	%17 = load double, double* %4
	%18 = load double, double* %5
	%19 = fmul double %17, %18
	store double %19, double* %7
	%20 = load double, double* %4
	%21 = load double, double* %5
	%22 = fadd double %20, %21
	%23 = load double, double* %6
	%24 = fadd double %22, %23
	store double %24, double* %7
	%25 = load double, double* %4
	%26 = load double, double* %5
	%27 = fsub double %25, %26
	%28 = load double, double* %6
	%29 = fsub double %27, %28
	store double %29, double* %7
	%30 = load double, double* %4
	%31 = load double, double* %5
	%32 = fdiv double %30, %31
	%33 = load double, double* %6
	%34 = fdiv double %32, %33
	store double %34, double* %7
	%35 = load double, double* %4
	%36 = load double, double* %5
	%37 = fmul double %35, %36
	%38 = load double, double* %6
	%39 = fmul double %37, %38
	store double %39, double* %7
	%40 = load double, double* %4
	%41 = load double, double* %5
	%42 = fsub double %40, %41
	%43 = load double, double* %6
	%44 = fadd double %42, %43
	store double %44, double* %7
	%45 = load double, double* %4
	%46 = load double, double* %5
	%47 = fadd double %45, %46
	%48 = load double, double* %6
	%49 = fsub double %47, %48
	store double %49, double* %7
	%50 = load double, double* %4
	%51 = load double, double* %5
	%52 = fmul double %50, %51
	%53 = load double, double* %6
	%54 = fdiv double %52, %53
	store double %54, double* %7
	%55 = load double, double* %4
	%56 = load double, double* %5
	%57 = fdiv double %55, %56
	%58 = load double, double* %6
	%59 = fmul double %57, %58
	store double %59, double* %7
	ret i32 0
}

define i32 @arithmetic1(i32, i32, i32) {
	%4 = alloca i32
	store i32 %0, i32* %4
	%5 = alloca i32
	store i32 %1, i32* %5
	%6 = alloca i32
	store i32 %2, i32* %6
	%7 = alloca double
	store double 1.300000e+00, double* %7
	%8 = load i32, i32* %4
	%9 = load i32, i32* %5
	%10 = add i32 %8, %9
	%11 = sitofp i32 %10 to double
	store double %11, double* %7
	%12 = load i32, i32* %4
	%13 = load i32, i32* %5
	%14 = sub i32 %12, %13
	%15 = sitofp i32 %14 to double
	store double %15, double* %7
	%16 = load i32, i32* %4
	%17 = load i32, i32* %5
	%18 = sdiv i32 %16, %17
	%19 = sitofp i32 %18 to double
	store double %19, double* %7
	%20 = load i32, i32* %4
	%21 = load i32, i32* %5
	%22 = mul i32 %20, %21
	%23 = sitofp i32 %22 to double
	store double %23, double* %7
	%24 = load i32, i32* %4
	%25 = load i32, i32* %5
	%26 = add i32 %24, %25
	%27 = load i32, i32* %6
	%28 = add i32 %26, %27
	%29 = sitofp i32 %28 to double
	store double %29, double* %7
	%30 = load i32, i32* %4
	%31 = load i32, i32* %5
	%32 = sub i32 %30, %31
	%33 = load i32, i32* %6
	%34 = sub i32 %32, %33
	%35 = sitofp i32 %34 to double
	store double %35, double* %7
	%36 = load i32, i32* %4
	%37 = load i32, i32* %5
	%38 = sdiv i32 %36, %37
	%39 = load i32, i32* %6
	%40 = sdiv i32 %38, %39
	%41 = sitofp i32 %40 to double
	store double %41, double* %7
	%42 = load i32, i32* %4
	%43 = load i32, i32* %5
	%44 = mul i32 %42, %43
	%45 = load i32, i32* %6
	%46 = mul i32 %44, %45
	%47 = sitofp i32 %46 to double
	store double %47, double* %7
	%48 = load i32, i32* %4
	%49 = load i32, i32* %5
	%50 = sub i32 %48, %49
	%51 = load i32, i32* %6
	%52 = add i32 %50, %51
	%53 = sitofp i32 %52 to double
	store double %53, double* %7
	%54 = load i32, i32* %4
	%55 = load i32, i32* %5
	%56 = add i32 %54, %55
	%57 = load i32, i32* %6
	%58 = sub i32 %56, %57
	%59 = sitofp i32 %58 to double
	store double %59, double* %7
	%60 = load i32, i32* %4
	%61 = load i32, i32* %5
	%62 = mul i32 %60, %61
	%63 = load i32, i32* %6
	%64 = sdiv i32 %62, %63
	%65 = sitofp i32 %64 to double
	store double %65, double* %7
	%66 = load i32, i32* %4
	%67 = load i32, i32* %5
	%68 = sdiv i32 %66, %67
	%69 = load i32, i32* %6
	%70 = mul i32 %68, %69
	%71 = sitofp i32 %70 to double
	store double %71, double* %7
	ret i32 0
}

define i32 @arithmetic2(i32, i32, i32) {
	%4 = alloca i32
	store i32 %0, i32* %4
	%5 = alloca i32
	store i32 %1, i32* %5
	%6 = alloca i32
	store i32 %2, i32* %6
	%7 = alloca i32
	store i32 12, i32* %7
	%8 = load i32, i32* %4
	%9 = load i32, i32* %5
	%10 = add i32 %8, %9
	store i32 %10, i32* %7
	%11 = load i32, i32* %4
	%12 = load i32, i32* %5
	%13 = sub i32 %11, %12
	store i32 %13, i32* %7
	%14 = load i32, i32* %4
	%15 = load i32, i32* %5
	%16 = sdiv i32 %14, %15
	store i32 %16, i32* %7
	%17 = load i32, i32* %4
	%18 = load i32, i32* %5
	%19 = mul i32 %17, %18
	store i32 %19, i32* %7
	%20 = load i32, i32* %4
	%21 = load i32, i32* %5
	%22 = add i32 %20, %21
	%23 = load i32, i32* %6
	%24 = add i32 %22, %23
	store i32 %24, i32* %7
	%25 = load i32, i32* %4
	%26 = load i32, i32* %5
	%27 = sub i32 %25, %26
	%28 = load i32, i32* %6
	%29 = sub i32 %27, %28
	store i32 %29, i32* %7
	%30 = load i32, i32* %4
	%31 = load i32, i32* %5
	%32 = sdiv i32 %30, %31
	%33 = load i32, i32* %6
	%34 = sdiv i32 %32, %33
	store i32 %34, i32* %7
	%35 = load i32, i32* %4
	%36 = load i32, i32* %5
	%37 = mul i32 %35, %36
	%38 = load i32, i32* %6
	%39 = mul i32 %37, %38
	store i32 %39, i32* %7
	%40 = load i32, i32* %4
	%41 = load i32, i32* %5
	%42 = sub i32 %40, %41
	%43 = load i32, i32* %6
	%44 = add i32 %42, %43
	store i32 %44, i32* %7
	%45 = load i32, i32* %4
	%46 = load i32, i32* %5
	%47 = add i32 %45, %46
	%48 = load i32, i32* %6
	%49 = sub i32 %47, %48
	store i32 %49, i32* %7
	%50 = load i32, i32* %4
	%51 = load i32, i32* %5
	%52 = mul i32 %50, %51
	%53 = load i32, i32* %6
	%54 = sdiv i32 %52, %53
	store i32 %54, i32* %7
	%55 = load i32, i32* %4
	%56 = load i32, i32* %5
	%57 = sdiv i32 %55, %56
	%58 = load i32, i32* %6
	%59 = mul i32 %57, %58
	store i32 %59, i32* %7
	%60 = load i32, i32* %4
	%61 = load i32, i32* %5
	%62 = add i32 %60, %61
	%63 = icmp ne i32 %62, 0
	br i1 %63, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%64 = load i32, i32* %4
	%65 = load i32, i32* %5
	%66 = sub i32 %64, %65
	%67 = icmp ne i32 %66, 0
	br i1 %67, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%68 = load i32, i32* %4
	%69 = load i32, i32* %5
	%70 = sdiv i32 %68, %69
	%71 = icmp ne i32 %70, 0
	br i1 %71, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%72 = load i32, i32* %4
	%73 = load i32, i32* %5
	%74 = mul i32 %72, %73
	%75 = icmp ne i32 %74, 0
	br i1 %75, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%76 = load i32, i32* %4
	%77 = load i32, i32* %5
	%78 = add i32 %76, %77
	store i32 %78, i32* %7
	%79 = load i32, i32* %7
	%80 = icmp ne i32 %79, 0
	br i1 %80, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%81 = load i32, i32* %4
	%82 = load i32, i32* %5
	%83 = sub i32 %81, %82
	store i32 %83, i32* %7
	%84 = load i32, i32* %7
	%85 = icmp ne i32 %84, 0
	br i1 %85, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%86 = load i32, i32* %4
	%87 = load i32, i32* %5
	%88 = mul i32 %86, %87
	store i32 %88, i32* %7
	%89 = load i32, i32* %7
	%90 = icmp ne i32 %89, 0
	br i1 %90, label %label18, label %label19

label18:
	br label %label20

label19:
	br label %label20

label20:
	%91 = load i32, i32* %4
	%92 = load i32, i32* %5
	%93 = sdiv i32 %91, %92
	store i32 %93, i32* %7
	%94 = load i32, i32* %7
	%95 = icmp ne i32 %94, 0
	br i1 %95, label %label21, label %label22

label21:
	br label %label23

label22:
	br label %label23

label23:
	%96 = load i32, i32* %4
	%97 = load i32, i32* %5
	%98 = add i32 %96, %97
	%99 = icmp ne i32 %98, 0
	br i1 %99, label %label24, label %label25

label24:
	%100 = load i32, i32* %4
	%101 = load i32, i32* %5
	%102 = add i32 %100, %101
	%103 = icmp ne i32 %102, 0
	br i1 %103, label %label24, label %label25

label25:
	%104 = load i32, i32* %4
	%105 = load i32, i32* %5
	%106 = sub i32 %104, %105
	%107 = icmp ne i32 %106, 0
	br i1 %107, label %label26, label %label27

label26:
	%108 = load i32, i32* %4
	%109 = load i32, i32* %5
	%110 = sub i32 %108, %109
	%111 = icmp ne i32 %110, 0
	br i1 %111, label %label26, label %label27

label27:
	%112 = load i32, i32* %4
	%113 = load i32, i32* %5
	%114 = sdiv i32 %112, %113
	%115 = icmp ne i32 %114, 0
	br i1 %115, label %label28, label %label29

label28:
	%116 = load i32, i32* %4
	%117 = load i32, i32* %5
	%118 = sdiv i32 %116, %117
	%119 = icmp ne i32 %118, 0
	br i1 %119, label %label28, label %label29

label29:
	%120 = load i32, i32* %4
	%121 = load i32, i32* %5
	%122 = mul i32 %120, %121
	%123 = icmp ne i32 %122, 0
	br i1 %123, label %label30, label %label31

label30:
	%124 = load i32, i32* %4
	%125 = load i32, i32* %5
	%126 = mul i32 %124, %125
	%127 = icmp ne i32 %126, 0
	br i1 %127, label %label30, label %label31

label31:
	%128 = load i32, i32* %4
	%129 = load i32, i32* %5
	%130 = add i32 %128, %129
	store i32 %130, i32* %7
	%131 = load i32, i32* %7
	%132 = icmp ne i32 %131, 0
	br i1 %132, label %label32, label %label33

label32:
	%133 = load i32, i32* %4
	%134 = load i32, i32* %5
	%135 = add i32 %133, %134
	store i32 %135, i32* %7
	%136 = load i32, i32* %7
	%137 = icmp ne i32 %136, 0
	br i1 %137, label %label32, label %label33

label33:
	%138 = load i32, i32* %4
	%139 = load i32, i32* %5
	%140 = sub i32 %138, %139
	store i32 %140, i32* %7
	%141 = load i32, i32* %7
	%142 = icmp ne i32 %141, 0
	br i1 %142, label %label34, label %label35

label34:
	%143 = load i32, i32* %4
	%144 = load i32, i32* %5
	%145 = sub i32 %143, %144
	store i32 %145, i32* %7
	%146 = load i32, i32* %7
	%147 = icmp ne i32 %146, 0
	br i1 %147, label %label34, label %label35

label35:
	%148 = load i32, i32* %4
	%149 = load i32, i32* %5
	%150 = mul i32 %148, %149
	store i32 %150, i32* %7
	%151 = load i32, i32* %7
	%152 = icmp ne i32 %151, 0
	br i1 %152, label %label36, label %label37

label36:
	%153 = load i32, i32* %4
	%154 = load i32, i32* %5
	%155 = mul i32 %153, %154
	store i32 %155, i32* %7
	%156 = load i32, i32* %7
	%157 = icmp ne i32 %156, 0
	br i1 %157, label %label36, label %label37

label37:
	%158 = load i32, i32* %4
	%159 = load i32, i32* %5
	%160 = sdiv i32 %158, %159
	store i32 %160, i32* %7
	%161 = load i32, i32* %7
	%162 = icmp ne i32 %161, 0
	br i1 %162, label %label38, label %label39

label38:
	%163 = load i32, i32* %4
	%164 = load i32, i32* %5
	%165 = sdiv i32 %163, %164
	store i32 %165, i32* %7
	%166 = load i32, i32* %7
	%167 = icmp ne i32 %166, 0
	br i1 %167, label %label38, label %label39

label39:
	ret i32 0
}

define i32 @arithmetic3() {
	%1 = alloca i32
	store i32 1, i32* %1
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = alloca double
	store double 1.410000e+00, double* %3
	%4 = alloca double
	store double 1.512000e+02, double* %4
	%5 = load double, double* %4
	%6 = load double, double* %3
	%7 = fadd double %5, %6
	store double %7, double* %3
	%8 = load double, double* %3
	%9 = load double, double* %3
	%10 = fadd double %8, %9
	store double %10, double* %3
	%11 = load i32, i32* %2
	%12 = load i32, i32* %1
	%13 = add i32 %11, %12
	store i32 %13, i32* %1
	%14 = load i32, i32* %1
	%15 = load i32, i32* %1
	%16 = add i32 %14, %15
	store i32 %16, i32* %1
	%17 = load i32, i32* %1
	%18 = add i32 0, 8
	%19 = add i32 %17, %18
	store i32 %19, i32* %1
	%20 = load i32, i32* %2
	%21 = add i32 0, 39
	%22 = add i32 %20, %21
	%23 = add i32 0, 66
	%24 = add i32 %22, %23
	store i32 %24, i32* %1
	%25 = load i32, i32* %1
	%26 = load i32, i32* %2
	%27 = add i32 %25, %26
	%28 = load double, double* %3
	%29 = sitofp i32 %27 to double
	%30 = fadd double %29, %28
	%31 = load double, double* %4
	%32 = fadd double %30, %31
	%33 = alloca double
	store double %32, double* %33
	%34 = load double, double* %33
	%35 = load i32, i32* %1
	%36 = sitofp i32 %35 to double
	%37 = fadd double %34, %36
	store double %37, double* %33
	%38 = load double, double* %33
	%39 = load double, double* %4
	%40 = fmul double %38, %39
	%41 = load i32, i32* %1
	%42 = sitofp i32 %41 to double
	%43 = fmul double %40, %42
	store double %43, double* %33
	%44 = load double, double* %3
	%45 = load double, double* %3
	%46 = fmul double %44, %45
	%47 = load i32, i32* %1
	%48 = sitofp i32 %47 to double
	%49 = fadd double %46, %48
	%50 = load double, double* %3
	%51 = load double, double* %4
	%52 = fmul double %50, %51
	%53 = fadd double %49, %52
	%54 = alloca double
	store double %53, double* %54
	%55 = load i32, i32* %1
	%56 = sitofp i32 %55 to double
	store double %56, double* %54
	%57 = load double, double* %54
	%58 = load i32, i32* %1
	%59 = sitofp i32 %58 to double
	%60 = fcmp oeq double %59, %57
	%61 = zext i1 %60 to i32
	%62 = icmp ne i32 %61, 0
	br i1 %62, label %label0, label %label1

label0:
	%63 = load i32, i32* %1
	%64 = load double, double* %4
	%65 = sitofp i32 %63 to double
	%66 = fadd double %65, %64
	%67 = call i32 @arithmetic3()
	%68 = call i32 @arithmetic3()
	%69 = add i32 %67, %68
	%70 = sitofp i32 %69 to double
	%71 = fcmp une double %66, %70
	%72 = zext i1 %71 to i32
	%73 = icmp ne i32 %72, 0
	br i1 %73, label %label3, label %label4

label3:
	br label %label5

label4:
	%74 = add i32 0, 1
	%75 = icmp ne i32 %74, 0
	br i1 %75, label %label6, label %label7

label6:
	%76 = add i32 0, 1
	%77 = icmp ne i32 %76, 0
	br i1 %77, label %label6, label %label7

label7:
	br label %label5

label5:
	br label %label2

label1:
	%78 = add i32 0, 1
	%79 = icmp ne i32 %78, 0
	br i1 %79, label %label8, label %label9

label8:
	%80 = add i32 0, 1
	%81 = icmp ne i32 %80, 0
	br i1 %81, label %label10, label %label11

label10:
	br label %label12

label11:
	br label %label12

label12:
	%82 = add i32 0, 1
	%83 = icmp ne i32 %82, 0
	br i1 %83, label %label8, label %label9

label9:
	br label %label2

label2:
	%84 = add i32 0, 0
	%85 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %84)
	%86 = icmp ne i32 %85, 0
	br i1 %86, label %label13, label %label14

label13:
	br label %label15

label14:
	br label %label15

label15:
	%87 = add i32 0, 0
	%88 = load i32, i32* %2
	%89 = add i32 %87, %88
	%90 = add i32 0, 0
	%91 = load double, double* %4
	%92 = sitofp i32 %90 to double
	%93 = fadd double %92, %91
	%94 = sitofp i32 %89 to double
	%95 = fcmp une double %94, %93
	%96 = zext i1 %95 to i32
	%97 = icmp ne i32 %96, 0
	br i1 %97, label %label16, label %label17

label16:
	%98 = load i32, i32* %1
	%99 = load i32, i32* %1
	%100 = add i32 %98, %99
	store i32 %100, i32* %1
	%101 = add i32 0, 0
	%102 = load i32, i32* %2
	%103 = add i32 %101, %102
	%104 = add i32 0, 0
	%105 = load double, double* %4
	%106 = sitofp i32 %104 to double
	%107 = fadd double %106, %105
	%108 = sitofp i32 %103 to double
	%109 = fcmp oeq double %108, %107
	%110 = zext i1 %109 to i32
	%111 = icmp ne i32 %110, 0
	br i1 %111, label %label19, label %label20

label19:
	%112 = load double, double* %3
	%113 = load double, double* %3
	%114 = fadd double %112, %113
	store double %114, double* %3
	br label %label21

label20:
	%115 = load double, double* %3
	%116 = load double, double* %3
	%117 = fadd double %115, %116
	store double %117, double* %3
	br label %label21

label21:
	br label %label18

label17:
	%118 = load i32, i32* %1
	%119 = add i32 0, 1
	%120 = add i32 %118, %119
	store i32 %120, i32* %1
	br label %label18

label18:
	%121 = load i32, i32* %1
	%122 = icmp ne i32 %121, 0
	%123 = xor i1 %122, true
	%124 = zext i1 %123 to i32
	%125 = icmp ne i32 %124, 0
	%126 = xor i1 %125, true
	%127 = zext i1 %126 to i32
	ret i32 %127
}

define i32 @just_adds(i32, i32, i32, i32, i32, i32, double, double) {
	%9 = alloca i32
	store i32 %0, i32* %9
	%10 = alloca i32
	store i32 %1, i32* %10
	%11 = alloca i32
	store i32 %2, i32* %11
	%12 = alloca i32
	store i32 %3, i32* %12
	%13 = alloca i32
	store i32 %4, i32* %13
	%14 = alloca i32
	store i32 %5, i32* %14
	%15 = alloca double
	store double %6, double* %15
	%16 = alloca double
	store double %7, double* %16
	%17 = load i32, i32* %9
	%18 = load i32, i32* %9
	%19 = add i32 %17, %18
	store i32 %19, i32* %9
	%20 = load i32, i32* %9
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	%22 = load i32, i32* %9
	%23 = load i32, i32* %10
	%24 = add i32 %22, %23
	store i32 %24, i32* %9
	%25 = load i32, i32* %9
	%26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
	%27 = load i32, i32* %9
	%28 = load i32, i32* %10
	%29 = add i32 %27, %28
	store i32 %29, i32* %10
	%30 = load i32, i32* %10
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	%32 = load i32, i32* %10
	%33 = load i32, i32* %10
	%34 = add i32 %32, %33
	store i32 %34, i32* %10
	%35 = load i32, i32* %10
	%36 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %35)
	%37 = load i32, i32* %9
	%38 = load i32, i32* %11
	%39 = add i32 %37, %38
	store i32 %39, i32* %9
	%40 = load i32, i32* %9
	%41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
	%42 = load i32, i32* %9
	%43 = load i32, i32* %12
	%44 = add i32 %42, %43
	store i32 %44, i32* %9
	%45 = load i32, i32* %9
	%46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %45)
	%47 = load i32, i32* %9
	%48 = load i32, i32* %13
	%49 = add i32 %47, %48
	store i32 %49, i32* %9
	%50 = load i32, i32* %9
	%51 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %50)
	%52 = load i32, i32* %9
	%53 = load i32, i32* %14
	%54 = add i32 %52, %53
	store i32 %54, i32* %9
	%55 = load i32, i32* %9
	%56 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %55)
	%57 = load i32, i32* %11
	%58 = load i32, i32* %9
	%59 = add i32 %57, %58
	store i32 %59, i32* %11
	%60 = load i32, i32* %11
	%61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %60)
	%62 = load i32, i32* %9
	%63 = load i32, i32* %10
	%64 = add i32 %62, %63
	store i32 %64, i32* %12
	%65 = load i32, i32* %12
	%66 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %65)
	%67 = load i32, i32* %11
	%68 = load i32, i32* %9
	%69 = add i32 %67, %68
	store i32 %69, i32* %13
	%70 = load i32, i32* %13
	%71 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %70)
	%72 = load i32, i32* %9
	%73 = load i32, i32* %9
	%74 = add i32 %72, %73
	%75 = sitofp i32 %74 to double
	store double %75, double* %15
	%76 = load i32, i32* %11
	%77 = load i32, i32* %9
	%78 = add i32 %76, %77
	%79 = sitofp i32 %78 to double
	store double %79, double* %15
	%80 = load i32, i32* %9
	%81 = load i32, i32* %13
	%82 = add i32 %80, %81
	%83 = sitofp i32 %82 to double
	store double %83, double* %15
	%84 = load i32, i32* %9
	%85 = load double, double* %16
	%86 = sitofp i32 %84 to double
	%87 = fadd double %86, %85
	store double %87, double* %16
	%88 = load double, double* %16
	%89 = load double, double* %16
	%90 = fadd double %88, %89
	store double %90, double* %16
	%91 = load i32, i32* %12
	%92 = load i32, i32* %13
	%93 = add i32 %91, %92
	%94 = sitofp i32 %93 to double
	store double %94, double* %15
	%95 = load i32, i32* %9
	%96 = call i32 @aa(i32 %95)
	%97 = load i32, i32* %10
	%98 = call i32 @bb(i32 %97)
	%99 = add i32 %96, %98
	store i32 %99, i32* %9
	%100 = load i32, i32* %9
	%101 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %100)
	%102 = load i32, i32* %13
	%103 = call i32 @cc(i32 %102)
	%104 = load i32, i32* %9
	%105 = call i32 @aa(i32 %104)
	%106 = add i32 %103, %105
	store i32 %106, i32* %10
	%107 = load i32, i32* %10
	%108 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %107)
	%109 = load i32, i32* %11
	%110 = call i32 @bb(i32 %109)
	%111 = load i32, i32* %13
	%112 = call i32 @cc(i32 %111)
	%113 = add i32 %110, %112
	store i32 %113, i32* %9
	%114 = load i32, i32* %9
	%115 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %114)
	%116 = load i32, i32* %9
	%117 = call i32 @aa(i32 %116)
	%118 = load i32, i32* %9
	%119 = call i32 @aa(i32 %118)
	%120 = add i32 %117, %119
	%121 = call i32 @aa(i32 %120)
	%122 = load i32, i32* %10
	%123 = call i32 @bb(i32 %122)
	%124 = add i32 %121, %123
	%125 = load i32, i32* %9
	%126 = call i32 @cc(i32 %125)
	%127 = add i32 %124, %126
	store i32 %127, i32* %9
	%128 = load i32, i32* %9
	%129 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %128)
	%130 = load i32, i32* %9
	%131 = load i32, i32* %10
	%132 = add i32 %130, %131
	%133 = icmp ne i32 %132, 0
	br i1 %133, label %label0, label %label1

label0:
	%134 = load i32, i32* %10
	%135 = load i32, i32* %11
	%136 = add i32 %134, %135
	%137 = icmp ne i32 %136, 0
	br i1 %137, label %label3, label %label4

label3:
	%138 = load i32, i32* %9
	%139 = load i32, i32* %11
	%140 = add i32 %138, %139
	%141 = icmp ne i32 %140, 0
	br i1 %141, label %label6, label %label7

label6:
	%142 = load i32, i32* %9
	%143 = load i32, i32* %12
	%144 = add i32 %142, %143
	%145 = load i32, i32* %13
	%146 = add i32 %144, %145
	%147 = icmp ne i32 %146, 0
	br i1 %147, label %label9, label %label10

label9:
	%148 = load i32, i32* %9
	%149 = call i32 @aa(i32 %148)
	ret i32 %149
	br label %label11

label10:
	br label %label11

label11:
	%151 = load i32, i32* %10
	%152 = call i32 @bb(i32 %151)
	ret i32 %152
	br label %label8

label7:
	br label %label8

label8:
	%154 = load i32, i32* %11
	%155 = call i32 @cc(i32 %154)
	ret i32 %155
	br label %label5

label4:
	br label %label5

label5:
	ret i32 83
	br label %label2

label1:
	br label %label2

label2:
	%158 = load i32, i32* %9
	%159 = load i32, i32* %10
	%160 = add i32 %158, %159
	store i32 %160, i32* %9
	%161 = load i32, i32* %9
	%162 = icmp ne i32 %161, 0
	br i1 %162, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%163 = load i32, i32* %9
	%164 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %163)
	%165 = load i32, i32* %13
	%166 = load i32, i32* %11
	%167 = add i32 %165, %166
	store i32 %167, i32* %9
	%168 = load i32, i32* %9
	%169 = icmp ne i32 %168, 0
	br i1 %169, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%170 = load i32, i32* %9
	%171 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %170)
	%172 = load i32, i32* %9
	%173 = load i32, i32* %10
	%174 = icmp eq i32 %172, %173
	%175 = zext i1 %174 to i32
	%176 = load i32, i32* %13
	%177 = load double, double* %15
	%178 = sitofp i32 %176 to double
	%179 = fcmp ole double %178, %177
	%180 = zext i1 %179 to i32
	%181 = add i32 %175, %180
	store i32 %181, i32* %9
	%182 = load i32, i32* %9
	%183 = icmp ne i32 %182, 0
	br i1 %183, label %label18, label %label19

label18:
	br label %label20

label19:
	br label %label20

label20:
	%184 = load i32, i32* %9
	%185 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %184)
	%186 = load i32, i32* %9
	%187 = load i32, i32* %9
	%188 = add i32 %186, %187
	%189 = load i32, i32* %10
	%190 = icmp ne i32 %189, %188
	%191 = zext i1 %190 to i32
	store i32 %191, i32* %10
	%192 = load i32, i32* %10
	%193 = icmp ne i32 %192, 0
	br i1 %193, label %label21, label %label22

label21:
	br label %label23

label22:
	br label %label23

label23:
	%194 = load i32, i32* %10
	%195 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %194)
	%196 = load i32, i32* %9
	%197 = load i32, i32* %10
	%198 = add i32 %196, %197
	store i32 %198, i32* %11
	%199 = load i32, i32* %11
	%200 = icmp ne i32 %199, 0
	br i1 %200, label %label24, label %label25

label24:
	br label %label26

label25:
	br label %label26

label26:
	%201 = load i32, i32* %11
	%202 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %201)
	%203 = load i32, i32* %11
	%204 = load i32, i32* %12
	%205 = add i32 %203, %204
	store i32 %205, i32* %13
	%206 = load i32, i32* %13
	%207 = icmp ne i32 %206, 0
	br i1 %207, label %label27, label %label28

label27:
	br label %label29

label28:
	br label %label29

label29:
	%208 = load i32, i32* %13
	%209 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %208)
	%210 = load double, double* %15
	%211 = load double, double* %16
	%212 = fcmp une double %210, %211
	%213 = zext i1 %212 to i32
	store i32 %213, i32* %13
	%214 = load i32, i32* %13
	%215 = icmp ne i32 %214, 0
	br i1 %215, label %label30, label %label31

label30:
	%216 = load double, double* %15
	%217 = load double, double* %16
	%218 = fcmp une double %216, %217
	%219 = zext i1 %218 to i32
	store i32 %219, i32* %13
	%220 = load i32, i32* %13
	%221 = icmp ne i32 %220, 0
	br i1 %221, label %label30, label %label31

label31:
	%222 = load i32, i32* %9
	%223 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %222)
	%224 = load i32, i32* %9
	%225 = load i32, i32* %10
	%226 = add i32 %224, %225
	store i32 %226, i32* %9
	%227 = load i32, i32* %9
	%228 = icmp ne i32 %227, 0
	br i1 %228, label %label32, label %label33

label32:
	%229 = load i32, i32* %9
	%230 = load i32, i32* %10
	%231 = add i32 %229, %230
	store i32 %231, i32* %9
	%232 = load i32, i32* %9
	%233 = icmp ne i32 %232, 0
	br i1 %233, label %label32, label %label33

label33:
	%234 = load i32, i32* %9
	%235 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %234)
	%236 = load i32, i32* %13
	%237 = load i32, i32* %11
	%238 = add i32 %236, %237
	store i32 %238, i32* %9
	%239 = load i32, i32* %9
	%240 = icmp ne i32 %239, 0
	br i1 %240, label %label34, label %label35

label34:
	%241 = load i32, i32* %13
	%242 = load i32, i32* %11
	%243 = add i32 %241, %242
	store i32 %243, i32* %9
	%244 = load i32, i32* %9
	%245 = icmp ne i32 %244, 0
	br i1 %245, label %label34, label %label35

label35:
	%246 = load i32, i32* %9
	%247 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %246)
	%248 = load i32, i32* %9
	%249 = load i32, i32* %10
	%250 = icmp eq i32 %248, %249
	%251 = zext i1 %250 to i32
	%252 = load i32, i32* %13
	%253 = load double, double* %15
	%254 = sitofp i32 %252 to double
	%255 = fcmp ole double %254, %253
	%256 = zext i1 %255 to i32
	%257 = add i32 %251, %256
	store i32 %257, i32* %9
	%258 = load i32, i32* %9
	%259 = icmp ne i32 %258, 0
	br i1 %259, label %label36, label %label37

label36:
	%260 = load i32, i32* %9
	%261 = load i32, i32* %10
	%262 = icmp eq i32 %260, %261
	%263 = zext i1 %262 to i32
	%264 = load i32, i32* %13
	%265 = load double, double* %15
	%266 = sitofp i32 %264 to double
	%267 = fcmp ole double %266, %265
	%268 = zext i1 %267 to i32
	%269 = add i32 %263, %268
	store i32 %269, i32* %9
	%270 = load i32, i32* %9
	%271 = icmp ne i32 %270, 0
	br i1 %271, label %label36, label %label37

label37:
	%272 = load i32, i32* %9
	%273 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %272)
	%274 = load i32, i32* %9
	%275 = load i32, i32* %9
	%276 = add i32 %274, %275
	%277 = load i32, i32* %10
	%278 = icmp ne i32 %277, %276
	%279 = zext i1 %278 to i32
	store i32 %279, i32* %10
	%280 = load i32, i32* %10
	%281 = icmp ne i32 %280, 0
	br i1 %281, label %label38, label %label39

label38:
	%282 = load i32, i32* %9
	%283 = load i32, i32* %9
	%284 = add i32 %282, %283
	%285 = load i32, i32* %10
	%286 = icmp ne i32 %285, %284
	%287 = zext i1 %286 to i32
	store i32 %287, i32* %10
	%288 = load i32, i32* %10
	%289 = icmp ne i32 %288, 0
	br i1 %289, label %label38, label %label39

label39:
	%290 = load i32, i32* %10
	%291 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %290)
	%292 = load i32, i32* %9
	%293 = load i32, i32* %10
	%294 = add i32 %292, %293
	store i32 %294, i32* %11
	%295 = load i32, i32* %11
	%296 = icmp ne i32 %295, 0
	br i1 %296, label %label40, label %label41

label40:
	%297 = load i32, i32* %9
	%298 = load i32, i32* %10
	%299 = add i32 %297, %298
	store i32 %299, i32* %11
	%300 = load i32, i32* %11
	%301 = icmp ne i32 %300, 0
	br i1 %301, label %label40, label %label41

label41:
	%302 = load i32, i32* %11
	%303 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %302)
	%304 = load i32, i32* %11
	%305 = load i32, i32* %12
	%306 = add i32 %304, %305
	store i32 %306, i32* %13
	%307 = load i32, i32* %13
	%308 = icmp ne i32 %307, 0
	br i1 %308, label %label42, label %label43

label42:
	%309 = load i32, i32* %11
	%310 = load i32, i32* %12
	%311 = add i32 %309, %310
	store i32 %311, i32* %13
	%312 = load i32, i32* %13
	%313 = icmp ne i32 %312, 0
	br i1 %313, label %label42, label %label43

label43:
	ret i32 39
	ret i32 0
}

define i32 @relational(double, double) {
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
	br label %label2

label1:
	br label %label2

label2:
	%10 = load double, double* %3
	%11 = load double, double* %4
	%12 = fcmp ogt double %10, %11
	%13 = zext i1 %12 to i32
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%15 = load double, double* %3
	%16 = load double, double* %4
	%17 = fcmp olt double %15, %16
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%20 = load double, double* %3
	%21 = load double, double* %4
	%22 = fcmp oge double %20, %21
	%23 = zext i1 %22 to i32
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%25 = load double, double* %3
	%26 = load double, double* %4
	%27 = fcmp ole double %25, %26
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%30 = load double, double* %3
	%31 = load double, double* %4
	%32 = fcmp une double %30, %31
	%33 = zext i1 %32 to i32
	%34 = icmp ne i32 %33, 0
	br i1 %34, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%35 = load double, double* %3
	%36 = load double, double* %4
	%37 = fcmp oeq double %35, %36
	%38 = zext i1 %37 to i32
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %label18, label %label19

label18:
	%40 = load double, double* %3
	%41 = load double, double* %4
	%42 = fcmp oeq double %40, %41
	%43 = zext i1 %42 to i32
	%44 = icmp ne i32 %43, 0
	br i1 %44, label %label18, label %label19

label19:
	%45 = load double, double* %3
	%46 = load double, double* %4
	%47 = fcmp ogt double %45, %46
	%48 = zext i1 %47 to i32
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label20, label %label21

label20:
	%50 = load double, double* %3
	%51 = load double, double* %4
	%52 = fcmp ogt double %50, %51
	%53 = zext i1 %52 to i32
	%54 = icmp ne i32 %53, 0
	br i1 %54, label %label20, label %label21

label21:
	%55 = load double, double* %3
	%56 = load double, double* %4
	%57 = fcmp olt double %55, %56
	%58 = zext i1 %57 to i32
	%59 = icmp ne i32 %58, 0
	br i1 %59, label %label22, label %label23

label22:
	%60 = load double, double* %3
	%61 = load double, double* %4
	%62 = fcmp olt double %60, %61
	%63 = zext i1 %62 to i32
	%64 = icmp ne i32 %63, 0
	br i1 %64, label %label22, label %label23

label23:
	%65 = load double, double* %3
	%66 = load double, double* %4
	%67 = fcmp oge double %65, %66
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label24, label %label25

label24:
	%70 = load double, double* %3
	%71 = load double, double* %4
	%72 = fcmp oge double %70, %71
	%73 = zext i1 %72 to i32
	%74 = icmp ne i32 %73, 0
	br i1 %74, label %label24, label %label25

label25:
	%75 = load double, double* %3
	%76 = load double, double* %4
	%77 = fcmp ole double %75, %76
	%78 = zext i1 %77 to i32
	%79 = icmp ne i32 %78, 0
	br i1 %79, label %label26, label %label27

label26:
	%80 = load double, double* %3
	%81 = load double, double* %4
	%82 = fcmp ole double %80, %81
	%83 = zext i1 %82 to i32
	%84 = icmp ne i32 %83, 0
	br i1 %84, label %label26, label %label27

label27:
	%85 = load double, double* %3
	%86 = load double, double* %4
	%87 = fcmp une double %85, %86
	%88 = zext i1 %87 to i32
	%89 = icmp ne i32 %88, 0
	br i1 %89, label %label28, label %label29

label28:
	%90 = load double, double* %3
	%91 = load double, double* %4
	%92 = fcmp une double %90, %91
	%93 = zext i1 %92 to i32
	%94 = icmp ne i32 %93, 0
	br i1 %94, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @relational2(i32, i32) {
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = alloca i32
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	%6 = load i32, i32* %4
	%7 = icmp eq i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%10 = load i32, i32* %3
	%11 = load i32, i32* %4
	%12 = icmp sgt i32 %10, %11
	%13 = zext i1 %12 to i32
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%15 = load i32, i32* %3
	%16 = load i32, i32* %4
	%17 = icmp slt i32 %15, %16
	%18 = zext i1 %17 to i32
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%20 = load i32, i32* %3
	%21 = load i32, i32* %4
	%22 = icmp sge i32 %20, %21
	%23 = zext i1 %22 to i32
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%25 = load i32, i32* %3
	%26 = load i32, i32* %4
	%27 = icmp sle i32 %25, %26
	%28 = zext i1 %27 to i32
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%30 = load i32, i32* %3
	%31 = load i32, i32* %4
	%32 = icmp ne i32 %30, %31
	%33 = zext i1 %32 to i32
	%34 = icmp ne i32 %33, 0
	br i1 %34, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%35 = load i32, i32* %3
	%36 = load i32, i32* %4
	%37 = icmp eq i32 %35, %36
	%38 = zext i1 %37 to i32
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %label18, label %label19

label18:
	%40 = load i32, i32* %3
	%41 = load i32, i32* %4
	%42 = icmp eq i32 %40, %41
	%43 = zext i1 %42 to i32
	%44 = icmp ne i32 %43, 0
	br i1 %44, label %label18, label %label19

label19:
	%45 = load i32, i32* %3
	%46 = load i32, i32* %4
	%47 = icmp sgt i32 %45, %46
	%48 = zext i1 %47 to i32
	%49 = icmp ne i32 %48, 0
	br i1 %49, label %label20, label %label21

label20:
	%50 = load i32, i32* %3
	%51 = load i32, i32* %4
	%52 = icmp sgt i32 %50, %51
	%53 = zext i1 %52 to i32
	%54 = icmp ne i32 %53, 0
	br i1 %54, label %label20, label %label21

label21:
	%55 = load i32, i32* %3
	%56 = load i32, i32* %4
	%57 = icmp slt i32 %55, %56
	%58 = zext i1 %57 to i32
	%59 = icmp ne i32 %58, 0
	br i1 %59, label %label22, label %label23

label22:
	%60 = load i32, i32* %3
	%61 = load i32, i32* %4
	%62 = icmp slt i32 %60, %61
	%63 = zext i1 %62 to i32
	%64 = icmp ne i32 %63, 0
	br i1 %64, label %label22, label %label23

label23:
	%65 = load i32, i32* %3
	%66 = load i32, i32* %4
	%67 = icmp sge i32 %65, %66
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label24, label %label25

label24:
	%70 = load i32, i32* %3
	%71 = load i32, i32* %4
	%72 = icmp sge i32 %70, %71
	%73 = zext i1 %72 to i32
	%74 = icmp ne i32 %73, 0
	br i1 %74, label %label24, label %label25

label25:
	%75 = load i32, i32* %3
	%76 = load i32, i32* %4
	%77 = icmp sle i32 %75, %76
	%78 = zext i1 %77 to i32
	%79 = icmp ne i32 %78, 0
	br i1 %79, label %label26, label %label27

label26:
	%80 = load i32, i32* %3
	%81 = load i32, i32* %4
	%82 = icmp sle i32 %80, %81
	%83 = zext i1 %82 to i32
	%84 = icmp ne i32 %83, 0
	br i1 %84, label %label26, label %label27

label27:
	%85 = load i32, i32* %3
	%86 = load i32, i32* %4
	%87 = icmp ne i32 %85, %86
	%88 = zext i1 %87 to i32
	%89 = icmp ne i32 %88, 0
	br i1 %89, label %label28, label %label29

label28:
	%90 = load i32, i32* %3
	%91 = load i32, i32* %4
	%92 = icmp ne i32 %90, %91
	%93 = zext i1 %92 to i32
	%94 = icmp ne i32 %93, 0
	br i1 %94, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @relational3(double, double, double) {
	%4 = alloca double
	store double %0, double* %4
	%5 = alloca double
	store double %1, double* %5
	%6 = alloca double
	store double %2, double* %6
	%7 = load double, double* %4
	%8 = load double, double* %5
	%9 = fcmp oeq double %7, %8
	%10 = zext i1 %9 to i32
	%11 = load double, double* %6
	%12 = sitofp i32 %10 to double
	%13 = fcmp oeq double %12, %11
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%16 = load double, double* %4
	%17 = load double, double* %5
	%18 = fcmp ogt double %16, %17
	%19 = zext i1 %18 to i32
	%20 = load double, double* %6
	%21 = sitofp i32 %19 to double
	%22 = fcmp ogt double %21, %20
	%23 = zext i1 %22 to i32
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%25 = load double, double* %4
	%26 = load double, double* %5
	%27 = fcmp olt double %25, %26
	%28 = zext i1 %27 to i32
	%29 = load double, double* %6
	%30 = sitofp i32 %28 to double
	%31 = fcmp olt double %30, %29
	%32 = zext i1 %31 to i32
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%34 = load double, double* %4
	%35 = load double, double* %5
	%36 = fcmp oge double %34, %35
	%37 = zext i1 %36 to i32
	%38 = load double, double* %6
	%39 = sitofp i32 %37 to double
	%40 = fcmp oge double %39, %38
	%41 = zext i1 %40 to i32
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%43 = load double, double* %5
	%44 = load double, double* %6
	%45 = fcmp ole double %43, %44
	%46 = zext i1 %45 to i32
	%47 = load double, double* %4
	%48 = sitofp i32 %46 to double
	%49 = fcmp ole double %47, %48
	%50 = zext i1 %49 to i32
	%51 = icmp ne i32 %50, 0
	br i1 %51, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%52 = load double, double* %5
	%53 = load double, double* %6
	%54 = fcmp une double %52, %53
	%55 = zext i1 %54 to i32
	%56 = load double, double* %4
	%57 = sitofp i32 %55 to double
	%58 = fcmp une double %56, %57
	%59 = zext i1 %58 to i32
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%61 = load double, double* %4
	%62 = load double, double* %5
	%63 = fcmp oeq double %61, %62
	%64 = zext i1 %63 to i32
	%65 = load double, double* %6
	%66 = sitofp i32 %64 to double
	%67 = fcmp oeq double %66, %65
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label18, label %label19

label18:
	%70 = load double, double* %4
	%71 = load double, double* %5
	%72 = fcmp oeq double %70, %71
	%73 = zext i1 %72 to i32
	%74 = load double, double* %6
	%75 = sitofp i32 %73 to double
	%76 = fcmp oeq double %75, %74
	%77 = zext i1 %76 to i32
	%78 = icmp ne i32 %77, 0
	br i1 %78, label %label18, label %label19

label19:
	%79 = load double, double* %4
	%80 = load double, double* %5
	%81 = fcmp ogt double %79, %80
	%82 = zext i1 %81 to i32
	%83 = load double, double* %6
	%84 = sitofp i32 %82 to double
	%85 = fcmp ogt double %84, %83
	%86 = zext i1 %85 to i32
	%87 = icmp ne i32 %86, 0
	br i1 %87, label %label20, label %label21

label20:
	%88 = load double, double* %4
	%89 = load double, double* %5
	%90 = fcmp ogt double %88, %89
	%91 = zext i1 %90 to i32
	%92 = load double, double* %6
	%93 = sitofp i32 %91 to double
	%94 = fcmp ogt double %93, %92
	%95 = zext i1 %94 to i32
	%96 = icmp ne i32 %95, 0
	br i1 %96, label %label20, label %label21

label21:
	%97 = load double, double* %4
	%98 = load double, double* %5
	%99 = fcmp olt double %97, %98
	%100 = zext i1 %99 to i32
	%101 = load double, double* %6
	%102 = sitofp i32 %100 to double
	%103 = fcmp olt double %102, %101
	%104 = zext i1 %103 to i32
	%105 = icmp ne i32 %104, 0
	br i1 %105, label %label22, label %label23

label22:
	%106 = load double, double* %4
	%107 = load double, double* %5
	%108 = fcmp olt double %106, %107
	%109 = zext i1 %108 to i32
	%110 = load double, double* %6
	%111 = sitofp i32 %109 to double
	%112 = fcmp olt double %111, %110
	%113 = zext i1 %112 to i32
	%114 = icmp ne i32 %113, 0
	br i1 %114, label %label22, label %label23

label23:
	%115 = load double, double* %4
	%116 = load double, double* %5
	%117 = fcmp oge double %115, %116
	%118 = zext i1 %117 to i32
	%119 = load double, double* %6
	%120 = sitofp i32 %118 to double
	%121 = fcmp oge double %120, %119
	%122 = zext i1 %121 to i32
	%123 = icmp ne i32 %122, 0
	br i1 %123, label %label24, label %label25

label24:
	%124 = load double, double* %4
	%125 = load double, double* %5
	%126 = fcmp oge double %124, %125
	%127 = zext i1 %126 to i32
	%128 = load double, double* %6
	%129 = sitofp i32 %127 to double
	%130 = fcmp oge double %129, %128
	%131 = zext i1 %130 to i32
	%132 = icmp ne i32 %131, 0
	br i1 %132, label %label24, label %label25

label25:
	%133 = load double, double* %5
	%134 = load double, double* %6
	%135 = fcmp ole double %133, %134
	%136 = zext i1 %135 to i32
	%137 = load double, double* %4
	%138 = sitofp i32 %136 to double
	%139 = fcmp ole double %137, %138
	%140 = zext i1 %139 to i32
	%141 = icmp ne i32 %140, 0
	br i1 %141, label %label26, label %label27

label26:
	%142 = load double, double* %5
	%143 = load double, double* %6
	%144 = fcmp ole double %142, %143
	%145 = zext i1 %144 to i32
	%146 = load double, double* %4
	%147 = sitofp i32 %145 to double
	%148 = fcmp ole double %146, %147
	%149 = zext i1 %148 to i32
	%150 = icmp ne i32 %149, 0
	br i1 %150, label %label26, label %label27

label27:
	%151 = load double, double* %5
	%152 = load double, double* %6
	%153 = fcmp une double %151, %152
	%154 = zext i1 %153 to i32
	%155 = load double, double* %4
	%156 = sitofp i32 %154 to double
	%157 = fcmp une double %155, %156
	%158 = zext i1 %157 to i32
	%159 = icmp ne i32 %158, 0
	br i1 %159, label %label28, label %label29

label28:
	%160 = load double, double* %5
	%161 = load double, double* %6
	%162 = fcmp une double %160, %161
	%163 = zext i1 %162 to i32
	%164 = load double, double* %4
	%165 = sitofp i32 %163 to double
	%166 = fcmp une double %164, %165
	%167 = zext i1 %166 to i32
	%168 = icmp ne i32 %167, 0
	br i1 %168, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @relational4(i32, i32, i32) {
	%4 = alloca i32
	store i32 %0, i32* %4
	%5 = alloca i32
	store i32 %1, i32* %5
	%6 = alloca i32
	store i32 %2, i32* %6
	%7 = load i32, i32* %4
	%8 = load i32, i32* %5
	%9 = icmp eq i32 %7, %8
	%10 = zext i1 %9 to i32
	%11 = load i32, i32* %6
	%12 = icmp eq i32 %10, %11
	%13 = zext i1 %12 to i32
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%15 = load i32, i32* %4
	%16 = load i32, i32* %5
	%17 = icmp sgt i32 %15, %16
	%18 = zext i1 %17 to i32
	%19 = load i32, i32* %6
	%20 = icmp sgt i32 %18, %19
	%21 = zext i1 %20 to i32
	%22 = icmp ne i32 %21, 0
	br i1 %22, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%23 = load i32, i32* %4
	%24 = load i32, i32* %5
	%25 = icmp slt i32 %23, %24
	%26 = zext i1 %25 to i32
	%27 = load i32, i32* %6
	%28 = icmp slt i32 %26, %27
	%29 = zext i1 %28 to i32
	%30 = icmp ne i32 %29, 0
	br i1 %30, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%31 = load i32, i32* %4
	%32 = load i32, i32* %5
	%33 = icmp sge i32 %31, %32
	%34 = zext i1 %33 to i32
	%35 = load i32, i32* %6
	%36 = icmp sge i32 %34, %35
	%37 = zext i1 %36 to i32
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%39 = load i32, i32* %5
	%40 = load i32, i32* %6
	%41 = icmp sle i32 %39, %40
	%42 = zext i1 %41 to i32
	%43 = load i32, i32* %4
	%44 = icmp sle i32 %43, %42
	%45 = zext i1 %44 to i32
	%46 = icmp ne i32 %45, 0
	br i1 %46, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%47 = load i32, i32* %5
	%48 = load i32, i32* %6
	%49 = icmp ne i32 %47, %48
	%50 = zext i1 %49 to i32
	%51 = load i32, i32* %4
	%52 = icmp ne i32 %51, %50
	%53 = zext i1 %52 to i32
	%54 = icmp ne i32 %53, 0
	br i1 %54, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%55 = load i32, i32* %4
	%56 = load i32, i32* %5
	%57 = icmp eq i32 %55, %56
	%58 = zext i1 %57 to i32
	%59 = load i32, i32* %6
	%60 = icmp eq i32 %58, %59
	%61 = zext i1 %60 to i32
	%62 = icmp ne i32 %61, 0
	br i1 %62, label %label18, label %label19

label18:
	%63 = load i32, i32* %4
	%64 = load i32, i32* %5
	%65 = icmp eq i32 %63, %64
	%66 = zext i1 %65 to i32
	%67 = load i32, i32* %6
	%68 = icmp eq i32 %66, %67
	%69 = zext i1 %68 to i32
	%70 = icmp ne i32 %69, 0
	br i1 %70, label %label18, label %label19

label19:
	%71 = load i32, i32* %4
	%72 = load i32, i32* %5
	%73 = icmp sgt i32 %71, %72
	%74 = zext i1 %73 to i32
	%75 = load i32, i32* %6
	%76 = icmp sgt i32 %74, %75
	%77 = zext i1 %76 to i32
	%78 = icmp ne i32 %77, 0
	br i1 %78, label %label20, label %label21

label20:
	%79 = load i32, i32* %4
	%80 = load i32, i32* %5
	%81 = icmp sgt i32 %79, %80
	%82 = zext i1 %81 to i32
	%83 = load i32, i32* %6
	%84 = icmp sgt i32 %82, %83
	%85 = zext i1 %84 to i32
	%86 = icmp ne i32 %85, 0
	br i1 %86, label %label20, label %label21

label21:
	%87 = load i32, i32* %4
	%88 = load i32, i32* %5
	%89 = icmp slt i32 %87, %88
	%90 = zext i1 %89 to i32
	%91 = load i32, i32* %6
	%92 = icmp slt i32 %90, %91
	%93 = zext i1 %92 to i32
	%94 = icmp ne i32 %93, 0
	br i1 %94, label %label22, label %label23

label22:
	%95 = load i32, i32* %4
	%96 = load i32, i32* %5
	%97 = icmp slt i32 %95, %96
	%98 = zext i1 %97 to i32
	%99 = load i32, i32* %6
	%100 = icmp slt i32 %98, %99
	%101 = zext i1 %100 to i32
	%102 = icmp ne i32 %101, 0
	br i1 %102, label %label22, label %label23

label23:
	%103 = load i32, i32* %4
	%104 = load i32, i32* %5
	%105 = icmp sge i32 %103, %104
	%106 = zext i1 %105 to i32
	%107 = load i32, i32* %6
	%108 = icmp sge i32 %106, %107
	%109 = zext i1 %108 to i32
	%110 = icmp ne i32 %109, 0
	br i1 %110, label %label24, label %label25

label24:
	%111 = load i32, i32* %4
	%112 = load i32, i32* %5
	%113 = icmp sge i32 %111, %112
	%114 = zext i1 %113 to i32
	%115 = load i32, i32* %6
	%116 = icmp sge i32 %114, %115
	%117 = zext i1 %116 to i32
	%118 = icmp ne i32 %117, 0
	br i1 %118, label %label24, label %label25

label25:
	%119 = load i32, i32* %5
	%120 = load i32, i32* %6
	%121 = icmp sle i32 %119, %120
	%122 = zext i1 %121 to i32
	%123 = load i32, i32* %4
	%124 = icmp sle i32 %123, %122
	%125 = zext i1 %124 to i32
	%126 = icmp ne i32 %125, 0
	br i1 %126, label %label26, label %label27

label26:
	%127 = load i32, i32* %5
	%128 = load i32, i32* %6
	%129 = icmp sle i32 %127, %128
	%130 = zext i1 %129 to i32
	%131 = load i32, i32* %4
	%132 = icmp sle i32 %131, %130
	%133 = zext i1 %132 to i32
	%134 = icmp ne i32 %133, 0
	br i1 %134, label %label26, label %label27

label27:
	%135 = load i32, i32* %5
	%136 = load i32, i32* %6
	%137 = icmp ne i32 %135, %136
	%138 = zext i1 %137 to i32
	%139 = load i32, i32* %4
	%140 = icmp ne i32 %139, %138
	%141 = zext i1 %140 to i32
	%142 = icmp ne i32 %141, 0
	br i1 %142, label %label28, label %label29

label28:
	%143 = load i32, i32* %5
	%144 = load i32, i32* %6
	%145 = icmp ne i32 %143, %144
	%146 = zext i1 %145 to i32
	%147 = load i32, i32* %4
	%148 = icmp ne i32 %147, %146
	%149 = zext i1 %148 to i32
	%150 = icmp ne i32 %149, 0
	br i1 %150, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @relational5(i32, double, i32) {
	%4 = alloca i32
	store i32 %0, i32* %4
	%5 = alloca double
	store double %1, double* %5
	%6 = alloca i32
	store i32 %2, i32* %6
	%7 = load i32, i32* %4
	%8 = load double, double* %5
	%9 = sitofp i32 %7 to double
	%10 = fcmp oeq double %9, %8
	%11 = zext i1 %10 to i32
	%12 = load i32, i32* %6
	%13 = icmp eq i32 %11, %12
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%16 = load i32, i32* %4
	%17 = load double, double* %5
	%18 = sitofp i32 %16 to double
	%19 = fcmp ogt double %18, %17
	%20 = zext i1 %19 to i32
	%21 = load i32, i32* %6
	%22 = icmp sgt i32 %20, %21
	%23 = zext i1 %22 to i32
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%25 = load i32, i32* %4
	%26 = load double, double* %5
	%27 = sitofp i32 %25 to double
	%28 = fcmp olt double %27, %26
	%29 = zext i1 %28 to i32
	%30 = load i32, i32* %6
	%31 = icmp slt i32 %29, %30
	%32 = zext i1 %31 to i32
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%34 = load i32, i32* %4
	%35 = load double, double* %5
	%36 = sitofp i32 %34 to double
	%37 = fcmp oge double %36, %35
	%38 = zext i1 %37 to i32
	%39 = load i32, i32* %6
	%40 = icmp sge i32 %38, %39
	%41 = zext i1 %40 to i32
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%43 = load double, double* %5
	%44 = load i32, i32* %6
	%45 = sitofp i32 %44 to double
	%46 = fcmp ole double %43, %45
	%47 = zext i1 %46 to i32
	%48 = load i32, i32* %4
	%49 = icmp sle i32 %48, %47
	%50 = zext i1 %49 to i32
	%51 = icmp ne i32 %50, 0
	br i1 %51, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%52 = load double, double* %5
	%53 = load i32, i32* %6
	%54 = sitofp i32 %53 to double
	%55 = fcmp une double %52, %54
	%56 = zext i1 %55 to i32
	%57 = load i32, i32* %4
	%58 = icmp ne i32 %57, %56
	%59 = zext i1 %58 to i32
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%61 = load i32, i32* %4
	%62 = load double, double* %5
	%63 = sitofp i32 %61 to double
	%64 = fcmp oeq double %63, %62
	%65 = zext i1 %64 to i32
	%66 = load i32, i32* %6
	%67 = icmp eq i32 %65, %66
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label18, label %label19

label18:
	%70 = load i32, i32* %4
	%71 = load double, double* %5
	%72 = sitofp i32 %70 to double
	%73 = fcmp oeq double %72, %71
	%74 = zext i1 %73 to i32
	%75 = load i32, i32* %6
	%76 = icmp eq i32 %74, %75
	%77 = zext i1 %76 to i32
	%78 = icmp ne i32 %77, 0
	br i1 %78, label %label18, label %label19

label19:
	%79 = load i32, i32* %4
	%80 = load double, double* %5
	%81 = sitofp i32 %79 to double
	%82 = fcmp ogt double %81, %80
	%83 = zext i1 %82 to i32
	%84 = load i32, i32* %6
	%85 = icmp sgt i32 %83, %84
	%86 = zext i1 %85 to i32
	%87 = icmp ne i32 %86, 0
	br i1 %87, label %label20, label %label21

label20:
	%88 = load i32, i32* %4
	%89 = load double, double* %5
	%90 = sitofp i32 %88 to double
	%91 = fcmp ogt double %90, %89
	%92 = zext i1 %91 to i32
	%93 = load i32, i32* %6
	%94 = icmp sgt i32 %92, %93
	%95 = zext i1 %94 to i32
	%96 = icmp ne i32 %95, 0
	br i1 %96, label %label20, label %label21

label21:
	%97 = load i32, i32* %4
	%98 = load double, double* %5
	%99 = sitofp i32 %97 to double
	%100 = fcmp olt double %99, %98
	%101 = zext i1 %100 to i32
	%102 = load i32, i32* %6
	%103 = icmp slt i32 %101, %102
	%104 = zext i1 %103 to i32
	%105 = icmp ne i32 %104, 0
	br i1 %105, label %label22, label %label23

label22:
	%106 = load i32, i32* %4
	%107 = load double, double* %5
	%108 = sitofp i32 %106 to double
	%109 = fcmp olt double %108, %107
	%110 = zext i1 %109 to i32
	%111 = load i32, i32* %6
	%112 = icmp slt i32 %110, %111
	%113 = zext i1 %112 to i32
	%114 = icmp ne i32 %113, 0
	br i1 %114, label %label22, label %label23

label23:
	%115 = load i32, i32* %4
	%116 = load double, double* %5
	%117 = sitofp i32 %115 to double
	%118 = fcmp oge double %117, %116
	%119 = zext i1 %118 to i32
	%120 = load i32, i32* %6
	%121 = icmp sge i32 %119, %120
	%122 = zext i1 %121 to i32
	%123 = icmp ne i32 %122, 0
	br i1 %123, label %label24, label %label25

label24:
	%124 = load i32, i32* %4
	%125 = load double, double* %5
	%126 = sitofp i32 %124 to double
	%127 = fcmp oge double %126, %125
	%128 = zext i1 %127 to i32
	%129 = load i32, i32* %6
	%130 = icmp sge i32 %128, %129
	%131 = zext i1 %130 to i32
	%132 = icmp ne i32 %131, 0
	br i1 %132, label %label24, label %label25

label25:
	%133 = load double, double* %5
	%134 = load i32, i32* %6
	%135 = sitofp i32 %134 to double
	%136 = fcmp ole double %133, %135
	%137 = zext i1 %136 to i32
	%138 = load i32, i32* %4
	%139 = icmp sle i32 %138, %137
	%140 = zext i1 %139 to i32
	%141 = icmp ne i32 %140, 0
	br i1 %141, label %label26, label %label27

label26:
	%142 = load double, double* %5
	%143 = load i32, i32* %6
	%144 = sitofp i32 %143 to double
	%145 = fcmp ole double %142, %144
	%146 = zext i1 %145 to i32
	%147 = load i32, i32* %4
	%148 = icmp sle i32 %147, %146
	%149 = zext i1 %148 to i32
	%150 = icmp ne i32 %149, 0
	br i1 %150, label %label26, label %label27

label27:
	%151 = load double, double* %5
	%152 = load i32, i32* %6
	%153 = sitofp i32 %152 to double
	%154 = fcmp une double %151, %153
	%155 = zext i1 %154 to i32
	%156 = load i32, i32* %4
	%157 = icmp ne i32 %156, %155
	%158 = zext i1 %157 to i32
	%159 = icmp ne i32 %158, 0
	br i1 %159, label %label28, label %label29

label28:
	%160 = load double, double* %5
	%161 = load i32, i32* %6
	%162 = sitofp i32 %161 to double
	%163 = fcmp une double %160, %162
	%164 = zext i1 %163 to i32
	%165 = load i32, i32* %4
	%166 = icmp ne i32 %165, %164
	%167 = zext i1 %166 to i32
	%168 = icmp ne i32 %167, 0
	br i1 %168, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @relational6(double, double, double) {
	%4 = alloca double
	store double %0, double* %4
	%5 = alloca double
	store double %1, double* %5
	%6 = alloca double
	store double %2, double* %6
	%7 = load double, double* %4
	%8 = load double, double* %5
	%9 = fcmp oeq double %7, %8
	%10 = zext i1 %9 to i32
	%11 = load double, double* %6
	%12 = sitofp i32 %10 to double
	%13 = fcmp oeq double %12, %11
	%14 = zext i1 %13 to i32
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %label0, label %label1

label0:
	br label %label2

label1:
	br label %label2

label2:
	%16 = load double, double* %4
	%17 = load double, double* %5
	%18 = fcmp ogt double %16, %17
	%19 = zext i1 %18 to i32
	%20 = load double, double* %6
	%21 = sitofp i32 %19 to double
	%22 = fcmp ogt double %21, %20
	%23 = zext i1 %22 to i32
	%24 = icmp ne i32 %23, 0
	br i1 %24, label %label3, label %label4

label3:
	br label %label5

label4:
	br label %label5

label5:
	%25 = load double, double* %4
	%26 = load double, double* %5
	%27 = fcmp olt double %25, %26
	%28 = zext i1 %27 to i32
	%29 = load double, double* %6
	%30 = sitofp i32 %28 to double
	%31 = fcmp olt double %30, %29
	%32 = zext i1 %31 to i32
	%33 = icmp ne i32 %32, 0
	br i1 %33, label %label6, label %label7

label6:
	br label %label8

label7:
	br label %label8

label8:
	%34 = load double, double* %4
	%35 = load double, double* %5
	%36 = fcmp oge double %34, %35
	%37 = zext i1 %36 to i32
	%38 = load double, double* %6
	%39 = sitofp i32 %37 to double
	%40 = fcmp oge double %39, %38
	%41 = zext i1 %40 to i32
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %label9, label %label10

label9:
	br label %label11

label10:
	br label %label11

label11:
	%43 = load double, double* %5
	%44 = load double, double* %6
	%45 = fcmp ole double %43, %44
	%46 = zext i1 %45 to i32
	%47 = load double, double* %4
	%48 = sitofp i32 %46 to double
	%49 = fcmp ole double %47, %48
	%50 = zext i1 %49 to i32
	%51 = icmp ne i32 %50, 0
	br i1 %51, label %label12, label %label13

label12:
	br label %label14

label13:
	br label %label14

label14:
	%52 = load double, double* %5
	%53 = load double, double* %6
	%54 = fcmp une double %52, %53
	%55 = zext i1 %54 to i32
	%56 = load double, double* %4
	%57 = sitofp i32 %55 to double
	%58 = fcmp une double %56, %57
	%59 = zext i1 %58 to i32
	%60 = icmp ne i32 %59, 0
	br i1 %60, label %label15, label %label16

label15:
	br label %label17

label16:
	br label %label17

label17:
	%61 = load double, double* %4
	%62 = load double, double* %5
	%63 = fcmp oeq double %61, %62
	%64 = zext i1 %63 to i32
	%65 = load double, double* %6
	%66 = sitofp i32 %64 to double
	%67 = fcmp oeq double %66, %65
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %label18, label %label19

label18:
	%70 = load double, double* %4
	%71 = load double, double* %5
	%72 = fcmp oeq double %70, %71
	%73 = zext i1 %72 to i32
	%74 = load double, double* %6
	%75 = sitofp i32 %73 to double
	%76 = fcmp oeq double %75, %74
	%77 = zext i1 %76 to i32
	%78 = icmp ne i32 %77, 0
	br i1 %78, label %label18, label %label19

label19:
	%79 = load double, double* %4
	%80 = load double, double* %5
	%81 = fcmp ogt double %79, %80
	%82 = zext i1 %81 to i32
	%83 = load double, double* %6
	%84 = sitofp i32 %82 to double
	%85 = fcmp ogt double %84, %83
	%86 = zext i1 %85 to i32
	%87 = icmp ne i32 %86, 0
	br i1 %87, label %label20, label %label21

label20:
	%88 = load double, double* %4
	%89 = load double, double* %5
	%90 = fcmp ogt double %88, %89
	%91 = zext i1 %90 to i32
	%92 = load double, double* %6
	%93 = sitofp i32 %91 to double
	%94 = fcmp ogt double %93, %92
	%95 = zext i1 %94 to i32
	%96 = icmp ne i32 %95, 0
	br i1 %96, label %label20, label %label21

label21:
	%97 = load double, double* %4
	%98 = load double, double* %5
	%99 = fcmp olt double %97, %98
	%100 = zext i1 %99 to i32
	%101 = load double, double* %6
	%102 = sitofp i32 %100 to double
	%103 = fcmp olt double %102, %101
	%104 = zext i1 %103 to i32
	%105 = icmp ne i32 %104, 0
	br i1 %105, label %label22, label %label23

label22:
	%106 = load double, double* %4
	%107 = load double, double* %5
	%108 = fcmp olt double %106, %107
	%109 = zext i1 %108 to i32
	%110 = load double, double* %6
	%111 = sitofp i32 %109 to double
	%112 = fcmp olt double %111, %110
	%113 = zext i1 %112 to i32
	%114 = icmp ne i32 %113, 0
	br i1 %114, label %label22, label %label23

label23:
	%115 = load double, double* %4
	%116 = load double, double* %5
	%117 = fcmp oge double %115, %116
	%118 = zext i1 %117 to i32
	%119 = load double, double* %6
	%120 = sitofp i32 %118 to double
	%121 = fcmp oge double %120, %119
	%122 = zext i1 %121 to i32
	%123 = icmp ne i32 %122, 0
	br i1 %123, label %label24, label %label25

label24:
	%124 = load double, double* %4
	%125 = load double, double* %5
	%126 = fcmp oge double %124, %125
	%127 = zext i1 %126 to i32
	%128 = load double, double* %6
	%129 = sitofp i32 %127 to double
	%130 = fcmp oge double %129, %128
	%131 = zext i1 %130 to i32
	%132 = icmp ne i32 %131, 0
	br i1 %132, label %label24, label %label25

label25:
	%133 = load double, double* %5
	%134 = load double, double* %6
	%135 = fcmp ole double %133, %134
	%136 = zext i1 %135 to i32
	%137 = load double, double* %4
	%138 = sitofp i32 %136 to double
	%139 = fcmp ole double %137, %138
	%140 = zext i1 %139 to i32
	%141 = icmp ne i32 %140, 0
	br i1 %141, label %label26, label %label27

label26:
	%142 = load double, double* %5
	%143 = load double, double* %6
	%144 = fcmp ole double %142, %143
	%145 = zext i1 %144 to i32
	%146 = load double, double* %4
	%147 = sitofp i32 %145 to double
	%148 = fcmp ole double %146, %147
	%149 = zext i1 %148 to i32
	%150 = icmp ne i32 %149, 0
	br i1 %150, label %label26, label %label27

label27:
	%151 = load double, double* %5
	%152 = load double, double* %6
	%153 = fcmp une double %151, %152
	%154 = zext i1 %153 to i32
	%155 = load double, double* %4
	%156 = sitofp i32 %154 to double
	%157 = fcmp une double %155, %156
	%158 = zext i1 %157 to i32
	%159 = icmp ne i32 %158, 0
	br i1 %159, label %label28, label %label29

label28:
	%160 = load double, double* %5
	%161 = load double, double* %6
	%162 = fcmp une double %160, %161
	%163 = zext i1 %162 to i32
	%164 = load double, double* %4
	%165 = sitofp i32 %163 to double
	%166 = fcmp une double %164, %165
	%167 = zext i1 %166 to i32
	%168 = icmp ne i32 %167, 0
	br i1 %168, label %label28, label %label29

label29:
	ret i32 0
}

define i32 @main() {
	ret i32 0
}
