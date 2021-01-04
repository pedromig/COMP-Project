declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
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
	%12 = load i32, i32* %1
	%13 = add i32 0, 65
	%14 = add i32 %12, %13
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	%16 = load i32, i32* %3
	%17 = add i32 0, 65
	%18 = add i32 %16, %17
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	%20 = add i32 0, 2
	%21 = icmp ne i32 %20, 0
	%22 = xor i1 %21, true
	%23 = zext i1 %22 to i32
	%24 = add i32 0, 48
	%25 = add i32 %23, %24
	%26 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %25)
	%27 = add i32 0, 0
	%28 = icmp ne i32 %27, 0
	%29 = xor i1 %28, true
	%30 = zext i1 %29 to i32
	%31 = add i32 0, 48
	%32 = add i32 %30, %31
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	br label %label0

label0:
	%34 = load i32, i32* %1
	%35 = icmp ne i32 %34, 0
	%36 = xor i1 %35, true
	%37 = zext i1 %36 to i32
	%38 = icmp ne i32 %37, 0
	br i1 %38, label %label2, label %label1

label1:
	%39 = load i32, i32* %2
	%40 = icmp ne i32 %39, 0
	%41 = xor i1 %40, true
	%42 = zext i1 %41 to i32
	%43 = icmp ne i32 %42, 0
	br label %label2

label2:
	%44 = phi i1 [ true, %label0 ], [ %43, %label1 ]
	%45 = zext i1 %44 to i32
	br label %label3

label3:
	%46 = icmp ne i32 %45, 0
	br i1 %46, label %label5, label %label4

label4:
	%47 = load i32, i32* %3
	%48 = icmp ne i32 %47, 0
	%49 = xor i1 %48, true
	%50 = zext i1 %49 to i32
	%51 = icmp ne i32 %50, 0
	br label %label5

label5:
	%52 = phi i1 [ true, %label3 ], [ %51, %label4 ]
	%53 = zext i1 %52 to i32
	br label %label6

label6:
	%54 = icmp ne i32 %53, 0
	br i1 %54, label %label7, label %label8

label7:
	%55 = add i32 0, 2
	%56 = sub i32 0, %55
	%57 = icmp ne i32 %56, 0
	br label %label8

label8:
	%58 = phi i1 [ false, %label6 ], [ %57, %label7 ]
	%59 = zext i1 %58 to i32
	br label %label9

label9:
	%60 = load i32, i32* %2
	%61 = icmp ne i32 %60, 0
	%62 = xor i1 %61, true
	%63 = zext i1 %62 to i32
	%64 = icmp ne i32 %63, 0
	br i1 %64, label %label11, label %label10

label10:
	%65 = load i32, i32* %1
	%66 = icmp ne i32 %65, 0
	%67 = xor i1 %66, true
	%68 = zext i1 %67 to i32
	%69 = icmp ne i32 %68, 0
	br label %label11

label11:
	%70 = phi i1 [ true, %label9 ], [ %69, %label10 ]
	%71 = zext i1 %70 to i32
	br label %label12

label12:
	%72 = icmp ne i32 %59, 0
	br i1 %72, label %label13, label %label14

label13:
	%73 = icmp ne i32 %71, 0
	br label %label14

label14:
	%74 = phi i1 [ false, %label12 ], [ %73, %label13 ]
	%75 = zext i1 %74 to i32
	%76 = icmp ne i32 %75, 0
	%77 = xor i1 %76, true
	%78 = zext i1 %77 to i32
	%79 = add i32 0, 65
	%80 = add i32 %78, %79
	%81 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %80)
	br label %label15

label15:
	%82 = load i32, i32* %1
	%83 = icmp ne i32 %82, 0
	br i1 %83, label %label16, label %label17

label16:
	%84 = load i32, i32* %2
	%85 = add i32 0, 1
	%86 = add i32 %84, %85
	%87 = load i32, i32* %2
	%88 = add i32 0, 1
	%89 = add i32 %87, %88
	store i32 %89, i32* %2
	%90 = load i32, i32* %2
	%91 = icmp ne i32 %90, 0
	br label %label17

label17:
	%92 = phi i1 [ false, %label15 ], [ %91, %label16 ]
	%93 = zext i1 %92 to i32
	br label %label18

label18:
	%94 = icmp ne i32 %93, 0
	br i1 %94, label %label19, label %label20

label19:
	%95 = load i32, i32* %3
	%96 = icmp ne i32 %95, 0
	br label %label20

label20:
	%97 = phi i1 [ false, %label18 ], [ %96, %label19 ]
	%98 = zext i1 %97 to i32
	br label %label21

label21:
	%99 = load i32, i32* %2
	%100 = add i32 0, 4
	%101 = add i32 %99, %100
	%102 = load i32, i32* %2
	%103 = add i32 0, 4
	%104 = add i32 %102, %103
	store i32 %104, i32* %2
	%105 = load i32, i32* %2
	%106 = icmp ne i32 %105, 0
	br i1 %106, label %label22, label %label23

label22:
	%107 = load i32, i32* %1
	%108 = add i32 0, 5
	%109 = sub i32 %107, %108
	%110 = load i32, i32* %1
	%111 = add i32 0, 5
	%112 = sub i32 %110, %111
	store i32 %112, i32* %1
	%113 = load i32, i32* %1
	%114 = icmp ne i32 %113, 0
	br label %label23

label23:
	%115 = phi i1 [ false, %label21 ], [ %114, %label22 ]
	%116 = zext i1 %115 to i32
	br label %label24

label24:
	%117 = icmp ne i32 %98, 0
	br i1 %117, label %label26, label %label25

label25:
	%118 = icmp ne i32 %116, 0
	br label %label26

label26:
	%119 = phi i1 [ true, %label24 ], [ %118, %label25 ]
	%120 = zext i1 %119 to i32
	br label %label27

label27:
	%121 = icmp ne i32 %120, 0
	br i1 %121, label %label29, label %label28

label28:
	%122 = add i32 0, 1
	%123 = icmp ne i32 %122, 0
	br label %label29

label29:
	%124 = phi i1 [ true, %label27 ], [ %123, %label28 ]
	%125 = zext i1 %124 to i32
	br label %label30

label30:
	%126 = icmp ne i32 %125, 0
	br i1 %126, label %label32, label %label31

label31:
	%127 = add i32 0, 1
	%128 = sub i32 0, %127
	%129 = add i32 0, 1
	%130 = sub i32 0, %129
	store i32 %130, i32* %3
	%131 = load i32, i32* %3
	%132 = icmp ne i32 %131, 0
	br label %label32

label32:
	%133 = phi i1 [ true, %label30 ], [ %132, %label31 ]
	%134 = zext i1 %133 to i32
	%135 = add i32 0, 65
	%136 = add i32 %134, %135
	%137 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %136)
	%138 = load i32, i32* %1
	%139 = add i32 0, 48
	%140 = add i32 %138, %139
	%141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %140)
	%142 = load i32, i32* %1
	%143 = add i32 0, 65
	%144 = add i32 %142, %143
	%145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %144)
	%146 = alloca i32
	store i32 8, i32* %146
	%147 = load i32, i32* %146
	%148 = add i32 0, 5
	%149 = sub i32 %147, %148
	%150 = load i32, i32* %146
	%151 = add i32 0, 5
	%152 = sub i32 %150, %151
	store i32 %152, i32* %146
	%153 = load i32, i32* %146
	%154 = add i32 0, 48
	%155 = add i32 %153, %154
	%156 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %155)
	%157 = load i32, i32* %146
	%158 = add i32 0, 48
	%159 = add i32 %157, %158
	%160 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %159)
	ret i32 0
}
