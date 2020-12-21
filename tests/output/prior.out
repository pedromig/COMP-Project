declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = alloca i32
	store i32 3, i32* %2
	%3 = alloca i32
	store i32 5, i32* %3
	%4 = alloca i32
	store i32 65, i32* %4
	%5 = load i32, i32* %1
	%6 = add i32 0, 10
	%7 = icmp slt i32 %5, %6
	%8 = zext i1 %7 to i32
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %label0, label %label1

label0:
	store i32 65, i32* %4
	%10 = load i32, i32* %1
	store i32 %10, i32* %2
	%11 = load i32, i32* %2
	%12 = load i32, i32* %3
	%13 = and i32 %11, %12
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %label2, label %label3

label2:
	%15 = add i32 0, 97
	%16 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %15)
	br label %label4

label3:
	br label %label4

label4:
	%17 = load i32, i32* %4
	%18 = add i32 0, 1
	%19 = add i32 %17, %18
	store i32 %19, i32* %4
	%20 = load i32, i32* %2
	%21 = load i32, i32* %3
	%22 = or i32 %20, %21
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %label5, label %label6

label5:
	%24 = add i32 0, 98
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	br label %label7

label6:
	br label %label7

label7:
	%26 = load i32, i32* %4
	%27 = add i32 0, 1
	%28 = add i32 %26, %27
	store i32 %28, i32* %4
	%29 = load i32, i32* %2
	%30 = load i32, i32* %3
	%31 = xor i32 %29, %30
	%32 = icmp ne i32 %31, 0
	br i1 %32, label %label8, label %label9

label8:
	%33 = add i32 0, 99
	%34 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %33)
	br label %label10

label9:
	br label %label10

label10:
	%35 = load i32, i32* %4
	%36 = add i32 0, 1
	%37 = add i32 %35, %36
	store i32 %37, i32* %4
	br label %label11

label11:
	%38 = load i32, i32* %2
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %label12, label %label13

label12:
	%40 = load i32, i32* %3
	%41 = icmp ne i32 %40, 0
	br label %label13

label13:
	%42 = phi i1 [ false, %label11 ], [ %41, %label12 ]
	%43 = zext i1 %42 to i32
	%44 = icmp ne i32 %43, 0
	br i1 %44, label %label14, label %label15

label14:
	%45 = add i32 0, 100
	%46 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %45)
	br label %label16

label15:
	br label %label16

label16:
	%47 = load i32, i32* %4
	%48 = add i32 0, 1
	%49 = add i32 %47, %48
	store i32 %49, i32* %4
	%50 = load i32, i32* %2
	%51 = load i32, i32* %3
	%52 = mul i32 %50, %51
	%53 = icmp ne i32 %52, 0
	br i1 %53, label %label17, label %label18

label17:
	%54 = add i32 0, 101
	%55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %54)
	br label %label19

label18:
	br label %label19

label19:
	%56 = load i32, i32* %4
	%57 = add i32 0, 1
	%58 = add i32 %56, %57
	store i32 %58, i32* %4
	%59 = load i32, i32* %2
	%60 = load i32, i32* %3
	%61 = icmp ne i32 %60, 0
	br i1 %61, label %label20, label %label21

label20:
	%62 = add i32 0, 102
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	br label %label22

label21:
	br label %label22

label22:
	%64 = load i32, i32* %4
	%65 = add i32 0, 1
	%66 = add i32 %64, %65
	store i32 %66, i32* %4
	%67 = load i32, i32* %2
	%68 = load i32, i32* %3
	%69 = sdiv i32 %67, %68
	%70 = icmp ne i32 %69, 0
	br i1 %70, label %label23, label %label24

label23:
	%71 = add i32 0, 103
	%72 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %71)
	br label %label25

label24:
	br label %label25

label25:
	%73 = load i32, i32* %4
	%74 = add i32 0, 1
	%75 = add i32 %73, %74
	store i32 %75, i32* %4
	%76 = load i32, i32* %2
	%77 = load i32, i32* %3
	%78 = icmp eq i32 %76, %77
	%79 = zext i1 %78 to i32
	%80 = icmp ne i32 %79, 0
	br i1 %80, label %label26, label %label27

label26:
	%81 = add i32 0, 104
	%82 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %81)
	br label %label28

label27:
	br label %label28

label28:
	%83 = load i32, i32* %4
	%84 = add i32 0, 1
	%85 = add i32 %83, %84
	store i32 %85, i32* %4
	%86 = load i32, i32* %2
	%87 = load i32, i32* %3
	%88 = icmp sge i32 %86, %87
	%89 = zext i1 %88 to i32
	%90 = icmp ne i32 %89, 0
	br i1 %90, label %label29, label %label30

label29:
	%91 = add i32 0, 105
	%92 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %91)
	br label %label31

label30:
	br label %label31

label31:
	%93 = load i32, i32* %4
	%94 = add i32 0, 1
	%95 = add i32 %93, %94
	store i32 %95, i32* %4
	%96 = load i32, i32* %2
	%97 = load i32, i32* %3
	%98 = icmp sgt i32 %96, %97
	%99 = zext i1 %98 to i32
	%100 = icmp ne i32 %99, 0
	br i1 %100, label %label32, label %label33

label32:
	%101 = add i32 0, 106
	%102 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %101)
	br label %label34

label33:
	br label %label34

label34:
	%103 = load i32, i32* %4
	%104 = add i32 0, 1
	%105 = add i32 %103, %104
	store i32 %105, i32* %4
	%106 = load i32, i32* %2
	%107 = load i32, i32* %3
	%108 = icmp sle i32 %106, %107
	%109 = zext i1 %108 to i32
	%110 = icmp ne i32 %109, 0
	br i1 %110, label %label35, label %label36

label35:
	%111 = add i32 0, 107
	%112 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %111)
	br label %label37

label36:
	br label %label37

label37:
	%113 = load i32, i32* %4
	%114 = add i32 0, 1
	%115 = add i32 %113, %114
	store i32 %115, i32* %4
	%116 = load i32, i32* %2
	%117 = load i32, i32* %3
	%118 = icmp slt i32 %116, %117
	%119 = zext i1 %118 to i32
	%120 = icmp ne i32 %119, 0
	br i1 %120, label %label38, label %label39

label38:
	%121 = add i32 0, 108
	%122 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %121)
	br label %label40

label39:
	br label %label40

label40:
	%123 = load i32, i32* %4
	%124 = add i32 0, 1
	%125 = add i32 %123, %124
	store i32 %125, i32* %4
	%126 = load i32, i32* %2
	%127 = load i32, i32* %3
	%128 = sub i32 %126, %127
	%129 = icmp ne i32 %128, 0
	br i1 %129, label %label41, label %label42

label41:
	%130 = add i32 0, 109
	%131 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %130)
	br label %label43

label42:
	br label %label43

label43:
	%132 = load i32, i32* %4
	%133 = add i32 0, 1
	%134 = add i32 %132, %133
	store i32 %134, i32* %4
	%135 = load i32, i32* %2
	%136 = load i32, i32* %3
	%137 = srem i32 %135, %136
	%138 = icmp ne i32 %137, 0
	br i1 %138, label %label44, label %label45

label44:
	%139 = add i32 0, 110
	%140 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %139)
	br label %label46

label45:
	br label %label46

label46:
	%141 = load i32, i32* %4
	%142 = add i32 0, 1
	%143 = add i32 %141, %142
	store i32 %143, i32* %4
	%144 = load i32, i32* %2
	%145 = load i32, i32* %3
	%146 = icmp ne i32 %144, %145
	%147 = zext i1 %146 to i32
	%148 = icmp ne i32 %147, 0
	br i1 %148, label %label47, label %label48

label47:
	%149 = add i32 0, 111
	%150 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %149)
	br label %label49

label48:
	br label %label49

label49:
	%151 = load i32, i32* %4
	%152 = add i32 0, 1
	%153 = add i32 %151, %152
	store i32 %153, i32* %4
	br label %label50

label50:
	%154 = load i32, i32* %2
	%155 = icmp ne i32 %154, 0
	br i1 %155, label %label52, label %label51

label51:
	%156 = load i32, i32* %3
	%157 = icmp ne i32 %156, 0
	br label %label52

label52:
	%158 = phi i1 [ true, %label50 ], [ %157, %label51 ]
	%159 = zext i1 %158 to i32
	%160 = icmp ne i32 %159, 0
	br i1 %160, label %label53, label %label54

label53:
	%161 = add i32 0, 112
	%162 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %161)
	br label %label55

label54:
	br label %label55

label55:
	%163 = load i32, i32* %4
	%164 = add i32 0, 1
	%165 = add i32 %163, %164
	store i32 %165, i32* %4
	br label %label56

label56:
	%166 = load i32, i32* %2
	%167 = icmp ne i32 %166, 0
	br i1 %167, label %label57, label %label58

label57:
	%168 = load i32, i32* %3
	%169 = icmp ne i32 %168, 0
	br label %label58

label58:
	%170 = phi i1 [ false, %label56 ], [ %169, %label57 ]
	%171 = zext i1 %170 to i32
	%172 = icmp ne i32 %171, 0
	br i1 %172, label %label59, label %label60

label59:
	%173 = add i32 0, 113
	%174 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %173)
	br label %label61

label60:
	br label %label61

label61:
	%175 = load i32, i32* %1
	%176 = add i32 0, 1
	%177 = add i32 %175, %176
	store i32 %177, i32* %1
	%178 = add i32 0, 10
	%179 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %178)
	%180 = load i32, i32* %1
	%181 = add i32 0, 10
	%182 = icmp slt i32 %180, %181
	%183 = zext i1 %182 to i32
	%184 = icmp ne i32 %183, 0
	br i1 %184, label %label0, label %label1

label1:
	ret i32 0
}
