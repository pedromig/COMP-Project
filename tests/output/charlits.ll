declare i32 @putchar(...)
declare i32 @getchar(...)


define i32 @main() {
	%1 = alloca i32
	store i32 0, i32* %1
	%2 = load i32, i32* %1
	%3 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %2)
	store i32 1, i32* %1
	%4 = load i32, i32* %1
	%5 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %4)
	store i32 2, i32* %1
	%6 = load i32, i32* %1
	%7 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %6)
	store i32 3, i32* %1
	%8 = load i32, i32* %1
	%9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %8)
	store i32 4, i32* %1
	%10 = load i32, i32* %1
	%11 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %10)
	store i32 5, i32* %1
	%12 = load i32, i32* %1
	%13 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %12)
	store i32 6, i32* %1
	%14 = load i32, i32* %1
	%15 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %14)
	store i32 7, i32* %1
	%16 = load i32, i32* %1
	%17 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %16)
	store i32 8, i32* %1
	%18 = load i32, i32* %1
	%19 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %18)
	store i32 9, i32* %1
	%20 = load i32, i32* %1
	%21 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %20)
	store i32 10, i32* %1
	%22 = load i32, i32* %1
	%23 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %22)
	store i32 11, i32* %1
	%24 = load i32, i32* %1
	%25 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %24)
	store i32 12, i32* %1
	%26 = load i32, i32* %1
	%27 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %26)
	store i32 13, i32* %1
	%28 = load i32, i32* %1
	%29 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %28)
	store i32 14, i32* %1
	%30 = load i32, i32* %1
	%31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %30)
	store i32 15, i32* %1
	%32 = load i32, i32* %1
	%33 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %32)
	store i32 16, i32* %1
	%34 = load i32, i32* %1
	%35 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %34)
	store i32 17, i32* %1
	%36 = load i32, i32* %1
	%37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
	store i32 18, i32* %1
	%38 = load i32, i32* %1
	%39 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %38)
	store i32 19, i32* %1
	%40 = load i32, i32* %1
	%41 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %40)
	store i32 20, i32* %1
	%42 = load i32, i32* %1
	%43 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %42)
	store i32 21, i32* %1
	%44 = load i32, i32* %1
	%45 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %44)
	store i32 22, i32* %1
	%46 = load i32, i32* %1
	%47 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %46)
	store i32 23, i32* %1
	%48 = load i32, i32* %1
	%49 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %48)
	store i32 24, i32* %1
	%50 = load i32, i32* %1
	%51 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %50)
	store i32 25, i32* %1
	%52 = load i32, i32* %1
	%53 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %52)
	store i32 26, i32* %1
	%54 = load i32, i32* %1
	%55 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %54)
	store i32 27, i32* %1
	%56 = load i32, i32* %1
	%57 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %56)
	store i32 28, i32* %1
	%58 = load i32, i32* %1
	%59 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %58)
	store i32 29, i32* %1
	%60 = load i32, i32* %1
	%61 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %60)
	store i32 30, i32* %1
	%62 = load i32, i32* %1
	%63 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %62)
	store i32 31, i32* %1
	%64 = load i32, i32* %1
	%65 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %64)
	store i32 32, i32* %1
	%66 = load i32, i32* %1
	%67 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %66)
	store i32 33, i32* %1
	%68 = load i32, i32* %1
	%69 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %68)
	store i32 34, i32* %1
	%70 = load i32, i32* %1
	%71 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %70)
	store i32 35, i32* %1
	%72 = load i32, i32* %1
	%73 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %72)
	store i32 36, i32* %1
	%74 = load i32, i32* %1
	%75 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %74)
	store i32 37, i32* %1
	%76 = load i32, i32* %1
	%77 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %76)
	store i32 38, i32* %1
	%78 = load i32, i32* %1
	%79 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %78)
	store i32 39, i32* %1
	%80 = load i32, i32* %1
	%81 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %80)
	store i32 40, i32* %1
	%82 = load i32, i32* %1
	%83 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %82)
	store i32 41, i32* %1
	%84 = load i32, i32* %1
	%85 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %84)
	store i32 42, i32* %1
	%86 = load i32, i32* %1
	%87 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %86)
	store i32 43, i32* %1
	%88 = load i32, i32* %1
	%89 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %88)
	store i32 44, i32* %1
	%90 = load i32, i32* %1
	%91 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %90)
	store i32 45, i32* %1
	%92 = load i32, i32* %1
	%93 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %92)
	store i32 46, i32* %1
	%94 = load i32, i32* %1
	%95 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %94)
	store i32 47, i32* %1
	%96 = load i32, i32* %1
	%97 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %96)
	store i32 48, i32* %1
	%98 = load i32, i32* %1
	%99 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %98)
	store i32 49, i32* %1
	%100 = load i32, i32* %1
	%101 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %100)
	store i32 50, i32* %1
	%102 = load i32, i32* %1
	%103 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %102)
	store i32 51, i32* %1
	%104 = load i32, i32* %1
	%105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %104)
	store i32 52, i32* %1
	%106 = load i32, i32* %1
	%107 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %106)
	store i32 53, i32* %1
	%108 = load i32, i32* %1
	%109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %108)
	store i32 54, i32* %1
	%110 = load i32, i32* %1
	%111 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %110)
	store i32 55, i32* %1
	%112 = load i32, i32* %1
	%113 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %112)
	store i32 56, i32* %1
	%114 = load i32, i32* %1
	%115 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %114)
	store i32 57, i32* %1
	%116 = load i32, i32* %1
	%117 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %116)
	store i32 58, i32* %1
	%118 = load i32, i32* %1
	%119 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %118)
	store i32 59, i32* %1
	%120 = load i32, i32* %1
	%121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %120)
	store i32 60, i32* %1
	%122 = load i32, i32* %1
	%123 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %122)
	store i32 61, i32* %1
	%124 = load i32, i32* %1
	%125 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %124)
	store i32 62, i32* %1
	%126 = load i32, i32* %1
	%127 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %126)
	store i32 63, i32* %1
	%128 = load i32, i32* %1
	%129 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %128)
	store i32 64, i32* %1
	%130 = load i32, i32* %1
	%131 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %130)
	store i32 65, i32* %1
	%132 = load i32, i32* %1
	%133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %132)
	store i32 66, i32* %1
	%134 = load i32, i32* %1
	%135 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %134)
	store i32 67, i32* %1
	%136 = load i32, i32* %1
	%137 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %136)
	store i32 68, i32* %1
	%138 = load i32, i32* %1
	%139 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %138)
	store i32 69, i32* %1
	%140 = load i32, i32* %1
	%141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %140)
	store i32 70, i32* %1
	%142 = load i32, i32* %1
	%143 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %142)
	store i32 71, i32* %1
	%144 = load i32, i32* %1
	%145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %144)
	store i32 72, i32* %1
	%146 = load i32, i32* %1
	%147 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %146)
	store i32 73, i32* %1
	%148 = load i32, i32* %1
	%149 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %148)
	store i32 74, i32* %1
	%150 = load i32, i32* %1
	%151 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %150)
	store i32 75, i32* %1
	%152 = load i32, i32* %1
	%153 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %152)
	store i32 76, i32* %1
	%154 = load i32, i32* %1
	%155 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %154)
	store i32 77, i32* %1
	%156 = load i32, i32* %1
	%157 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %156)
	store i32 78, i32* %1
	%158 = load i32, i32* %1
	%159 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %158)
	store i32 79, i32* %1
	%160 = load i32, i32* %1
	%161 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %160)
	store i32 80, i32* %1
	%162 = load i32, i32* %1
	%163 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %162)
	store i32 81, i32* %1
	%164 = load i32, i32* %1
	%165 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %164)
	store i32 82, i32* %1
	%166 = load i32, i32* %1
	%167 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %166)
	store i32 83, i32* %1
	%168 = load i32, i32* %1
	%169 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %168)
	store i32 84, i32* %1
	%170 = load i32, i32* %1
	%171 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %170)
	store i32 85, i32* %1
	%172 = load i32, i32* %1
	%173 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %172)
	store i32 86, i32* %1
	%174 = load i32, i32* %1
	%175 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %174)
	store i32 87, i32* %1
	%176 = load i32, i32* %1
	%177 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %176)
	store i32 88, i32* %1
	%178 = load i32, i32* %1
	%179 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %178)
	store i32 89, i32* %1
	%180 = load i32, i32* %1
	%181 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %180)
	store i32 90, i32* %1
	%182 = load i32, i32* %1
	%183 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %182)
	store i32 91, i32* %1
	%184 = load i32, i32* %1
	%185 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %184)
	store i32 92, i32* %1
	%186 = load i32, i32* %1
	%187 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %186)
	store i32 93, i32* %1
	%188 = load i32, i32* %1
	%189 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %188)
	store i32 94, i32* %1
	%190 = load i32, i32* %1
	%191 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %190)
	store i32 95, i32* %1
	%192 = load i32, i32* %1
	%193 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %192)
	store i32 96, i32* %1
	%194 = load i32, i32* %1
	%195 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %194)
	store i32 97, i32* %1
	%196 = load i32, i32* %1
	%197 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %196)
	store i32 98, i32* %1
	%198 = load i32, i32* %1
	%199 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %198)
	store i32 99, i32* %1
	%200 = load i32, i32* %1
	%201 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %200)
	store i32 100, i32* %1
	%202 = load i32, i32* %1
	%203 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %202)
	store i32 101, i32* %1
	%204 = load i32, i32* %1
	%205 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %204)
	store i32 102, i32* %1
	%206 = load i32, i32* %1
	%207 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %206)
	store i32 103, i32* %1
	%208 = load i32, i32* %1
	%209 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %208)
	store i32 104, i32* %1
	%210 = load i32, i32* %1
	%211 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %210)
	store i32 105, i32* %1
	%212 = load i32, i32* %1
	%213 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %212)
	store i32 106, i32* %1
	%214 = load i32, i32* %1
	%215 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %214)
	store i32 107, i32* %1
	%216 = load i32, i32* %1
	%217 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %216)
	store i32 108, i32* %1
	%218 = load i32, i32* %1
	%219 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %218)
	store i32 109, i32* %1
	%220 = load i32, i32* %1
	%221 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %220)
	store i32 110, i32* %1
	%222 = load i32, i32* %1
	%223 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %222)
	store i32 111, i32* %1
	%224 = load i32, i32* %1
	%225 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %224)
	store i32 112, i32* %1
	%226 = load i32, i32* %1
	%227 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %226)
	store i32 113, i32* %1
	%228 = load i32, i32* %1
	%229 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %228)
	store i32 114, i32* %1
	%230 = load i32, i32* %1
	%231 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %230)
	store i32 115, i32* %1
	%232 = load i32, i32* %1
	%233 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %232)
	store i32 116, i32* %1
	%234 = load i32, i32* %1
	%235 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %234)
	store i32 117, i32* %1
	%236 = load i32, i32* %1
	%237 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %236)
	store i32 118, i32* %1
	%238 = load i32, i32* %1
	%239 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %238)
	store i32 119, i32* %1
	%240 = load i32, i32* %1
	%241 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %240)
	store i32 120, i32* %1
	%242 = load i32, i32* %1
	%243 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %242)
	store i32 121, i32* %1
	%244 = load i32, i32* %1
	%245 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %244)
	store i32 122, i32* %1
	%246 = load i32, i32* %1
	%247 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %246)
	store i32 123, i32* %1
	%248 = load i32, i32* %1
	%249 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %248)
	store i32 124, i32* %1
	%250 = load i32, i32* %1
	%251 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %250)
	store i32 125, i32* %1
	%252 = load i32, i32* %1
	%253 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %252)
	store i32 126, i32* %1
	%254 = load i32, i32* %1
	%255 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %254)
	store i32 127, i32* %1
	%256 = load i32, i32* %1
	%257 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %256)
	store i32 128, i32* %1
	%258 = load i32, i32* %1
	%259 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %258)
	store i32 129, i32* %1
	%260 = load i32, i32* %1
	%261 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %260)
	store i32 130, i32* %1
	%262 = load i32, i32* %1
	%263 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %262)
	store i32 131, i32* %1
	%264 = load i32, i32* %1
	%265 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %264)
	store i32 132, i32* %1
	%266 = load i32, i32* %1
	%267 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %266)
	store i32 133, i32* %1
	%268 = load i32, i32* %1
	%269 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %268)
	store i32 134, i32* %1
	%270 = load i32, i32* %1
	%271 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %270)
	store i32 135, i32* %1
	%272 = load i32, i32* %1
	%273 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %272)
	store i32 136, i32* %1
	%274 = load i32, i32* %1
	%275 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %274)
	store i32 137, i32* %1
	%276 = load i32, i32* %1
	%277 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %276)
	store i32 138, i32* %1
	%278 = load i32, i32* %1
	%279 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %278)
	store i32 139, i32* %1
	%280 = load i32, i32* %1
	%281 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %280)
	store i32 140, i32* %1
	%282 = load i32, i32* %1
	%283 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %282)
	store i32 141, i32* %1
	%284 = load i32, i32* %1
	%285 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %284)
	store i32 142, i32* %1
	%286 = load i32, i32* %1
	%287 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %286)
	store i32 143, i32* %1
	%288 = load i32, i32* %1
	%289 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %288)
	store i32 144, i32* %1
	%290 = load i32, i32* %1
	%291 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %290)
	store i32 145, i32* %1
	%292 = load i32, i32* %1
	%293 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %292)
	store i32 146, i32* %1
	%294 = load i32, i32* %1
	%295 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %294)
	store i32 147, i32* %1
	%296 = load i32, i32* %1
	%297 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %296)
	store i32 148, i32* %1
	%298 = load i32, i32* %1
	%299 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %298)
	store i32 149, i32* %1
	%300 = load i32, i32* %1
	%301 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %300)
	store i32 150, i32* %1
	%302 = load i32, i32* %1
	%303 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %302)
	store i32 151, i32* %1
	%304 = load i32, i32* %1
	%305 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %304)
	store i32 152, i32* %1
	%306 = load i32, i32* %1
	%307 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %306)
	store i32 153, i32* %1
	%308 = load i32, i32* %1
	%309 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %308)
	store i32 154, i32* %1
	%310 = load i32, i32* %1
	%311 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %310)
	store i32 155, i32* %1
	%312 = load i32, i32* %1
	%313 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %312)
	store i32 156, i32* %1
	%314 = load i32, i32* %1
	%315 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %314)
	store i32 157, i32* %1
	%316 = load i32, i32* %1
	%317 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %316)
	store i32 158, i32* %1
	%318 = load i32, i32* %1
	%319 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %318)
	store i32 159, i32* %1
	%320 = load i32, i32* %1
	%321 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %320)
	store i32 160, i32* %1
	%322 = load i32, i32* %1
	%323 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %322)
	store i32 161, i32* %1
	%324 = load i32, i32* %1
	%325 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %324)
	store i32 162, i32* %1
	%326 = load i32, i32* %1
	%327 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %326)
	store i32 163, i32* %1
	%328 = load i32, i32* %1
	%329 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %328)
	store i32 164, i32* %1
	%330 = load i32, i32* %1
	%331 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %330)
	store i32 165, i32* %1
	%332 = load i32, i32* %1
	%333 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %332)
	store i32 166, i32* %1
	%334 = load i32, i32* %1
	%335 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %334)
	store i32 167, i32* %1
	%336 = load i32, i32* %1
	%337 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %336)
	store i32 168, i32* %1
	%338 = load i32, i32* %1
	%339 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %338)
	store i32 169, i32* %1
	%340 = load i32, i32* %1
	%341 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %340)
	store i32 170, i32* %1
	%342 = load i32, i32* %1
	%343 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %342)
	store i32 171, i32* %1
	%344 = load i32, i32* %1
	%345 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %344)
	store i32 172, i32* %1
	%346 = load i32, i32* %1
	%347 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %346)
	store i32 173, i32* %1
	%348 = load i32, i32* %1
	%349 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %348)
	store i32 174, i32* %1
	%350 = load i32, i32* %1
	%351 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %350)
	store i32 175, i32* %1
	%352 = load i32, i32* %1
	%353 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %352)
	store i32 176, i32* %1
	%354 = load i32, i32* %1
	%355 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %354)
	store i32 177, i32* %1
	%356 = load i32, i32* %1
	%357 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %356)
	store i32 178, i32* %1
	%358 = load i32, i32* %1
	%359 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %358)
	store i32 179, i32* %1
	%360 = load i32, i32* %1
	%361 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %360)
	store i32 180, i32* %1
	%362 = load i32, i32* %1
	%363 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %362)
	store i32 181, i32* %1
	%364 = load i32, i32* %1
	%365 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %364)
	store i32 182, i32* %1
	%366 = load i32, i32* %1
	%367 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %366)
	store i32 183, i32* %1
	%368 = load i32, i32* %1
	%369 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %368)
	store i32 184, i32* %1
	%370 = load i32, i32* %1
	%371 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %370)
	store i32 185, i32* %1
	%372 = load i32, i32* %1
	%373 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %372)
	store i32 186, i32* %1
	%374 = load i32, i32* %1
	%375 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %374)
	store i32 187, i32* %1
	%376 = load i32, i32* %1
	%377 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %376)
	store i32 188, i32* %1
	%378 = load i32, i32* %1
	%379 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %378)
	store i32 189, i32* %1
	%380 = load i32, i32* %1
	%381 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %380)
	store i32 190, i32* %1
	%382 = load i32, i32* %1
	%383 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %382)
	store i32 191, i32* %1
	%384 = load i32, i32* %1
	%385 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %384)
	store i32 192, i32* %1
	%386 = load i32, i32* %1
	%387 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %386)
	store i32 193, i32* %1
	%388 = load i32, i32* %1
	%389 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %388)
	store i32 194, i32* %1
	%390 = load i32, i32* %1
	%391 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %390)
	store i32 195, i32* %1
	%392 = load i32, i32* %1
	%393 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %392)
	store i32 196, i32* %1
	%394 = load i32, i32* %1
	%395 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %394)
	store i32 197, i32* %1
	%396 = load i32, i32* %1
	%397 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %396)
	store i32 198, i32* %1
	%398 = load i32, i32* %1
	%399 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %398)
	store i32 199, i32* %1
	%400 = load i32, i32* %1
	%401 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %400)
	store i32 200, i32* %1
	%402 = load i32, i32* %1
	%403 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %402)
	store i32 201, i32* %1
	%404 = load i32, i32* %1
	%405 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %404)
	store i32 202, i32* %1
	%406 = load i32, i32* %1
	%407 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %406)
	store i32 203, i32* %1
	%408 = load i32, i32* %1
	%409 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %408)
	store i32 204, i32* %1
	%410 = load i32, i32* %1
	%411 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %410)
	store i32 205, i32* %1
	%412 = load i32, i32* %1
	%413 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %412)
	store i32 206, i32* %1
	%414 = load i32, i32* %1
	%415 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %414)
	store i32 207, i32* %1
	%416 = load i32, i32* %1
	%417 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %416)
	store i32 208, i32* %1
	%418 = load i32, i32* %1
	%419 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %418)
	store i32 209, i32* %1
	%420 = load i32, i32* %1
	%421 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %420)
	store i32 210, i32* %1
	%422 = load i32, i32* %1
	%423 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %422)
	store i32 211, i32* %1
	%424 = load i32, i32* %1
	%425 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %424)
	store i32 212, i32* %1
	%426 = load i32, i32* %1
	%427 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %426)
	store i32 213, i32* %1
	%428 = load i32, i32* %1
	%429 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %428)
	store i32 214, i32* %1
	%430 = load i32, i32* %1
	%431 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %430)
	store i32 215, i32* %1
	%432 = load i32, i32* %1
	%433 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %432)
	store i32 216, i32* %1
	%434 = load i32, i32* %1
	%435 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %434)
	store i32 217, i32* %1
	%436 = load i32, i32* %1
	%437 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %436)
	store i32 218, i32* %1
	%438 = load i32, i32* %1
	%439 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %438)
	store i32 219, i32* %1
	%440 = load i32, i32* %1
	%441 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %440)
	store i32 220, i32* %1
	%442 = load i32, i32* %1
	%443 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %442)
	store i32 221, i32* %1
	%444 = load i32, i32* %1
	%445 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %444)
	store i32 222, i32* %1
	%446 = load i32, i32* %1
	%447 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %446)
	store i32 223, i32* %1
	%448 = load i32, i32* %1
	%449 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %448)
	store i32 224, i32* %1
	%450 = load i32, i32* %1
	%451 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %450)
	store i32 225, i32* %1
	%452 = load i32, i32* %1
	%453 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %452)
	store i32 226, i32* %1
	%454 = load i32, i32* %1
	%455 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %454)
	store i32 227, i32* %1
	%456 = load i32, i32* %1
	%457 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %456)
	store i32 228, i32* %1
	%458 = load i32, i32* %1
	%459 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %458)
	store i32 229, i32* %1
	%460 = load i32, i32* %1
	%461 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %460)
	store i32 230, i32* %1
	%462 = load i32, i32* %1
	%463 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %462)
	store i32 231, i32* %1
	%464 = load i32, i32* %1
	%465 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %464)
	store i32 232, i32* %1
	%466 = load i32, i32* %1
	%467 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %466)
	store i32 233, i32* %1
	%468 = load i32, i32* %1
	%469 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %468)
	store i32 234, i32* %1
	%470 = load i32, i32* %1
	%471 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %470)
	store i32 235, i32* %1
	%472 = load i32, i32* %1
	%473 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %472)
	store i32 236, i32* %1
	%474 = load i32, i32* %1
	%475 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %474)
	store i32 237, i32* %1
	%476 = load i32, i32* %1
	%477 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %476)
	store i32 238, i32* %1
	%478 = load i32, i32* %1
	%479 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %478)
	store i32 239, i32* %1
	%480 = load i32, i32* %1
	%481 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %480)
	store i32 240, i32* %1
	%482 = load i32, i32* %1
	%483 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %482)
	store i32 241, i32* %1
	%484 = load i32, i32* %1
	%485 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %484)
	store i32 242, i32* %1
	%486 = load i32, i32* %1
	%487 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %486)
	store i32 243, i32* %1
	%488 = load i32, i32* %1
	%489 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %488)
	store i32 244, i32* %1
	%490 = load i32, i32* %1
	%491 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %490)
	store i32 245, i32* %1
	%492 = load i32, i32* %1
	%493 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %492)
	store i32 246, i32* %1
	%494 = load i32, i32* %1
	%495 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %494)
	store i32 247, i32* %1
	%496 = load i32, i32* %1
	%497 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %496)
	store i32 248, i32* %1
	%498 = load i32, i32* %1
	%499 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %498)
	store i32 249, i32* %1
	%500 = load i32, i32* %1
	%501 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %500)
	store i32 250, i32* %1
	%502 = load i32, i32* %1
	%503 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %502)
	store i32 251, i32* %1
	%504 = load i32, i32* %1
	%505 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %504)
	store i32 252, i32* %1
	%506 = load i32, i32* %1
	%507 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %506)
	store i32 253, i32* %1
	%508 = load i32, i32* %1
	%509 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %508)
	store i32 254, i32* %1
	%510 = load i32, i32* %1
	%511 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %510)
	store i32 0, i32* %1
	%512 = load i32, i32* %1
	%513 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %512)
	store i32 0, i32* %1
	%514 = load i32, i32* %1
	%515 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %514)
	store i32 0, i32* %1
	%516 = load i32, i32* %1
	%517 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %516)
	store i32 1, i32* %1
	%518 = load i32, i32* %1
	%519 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %518)
	store i32 2, i32* %1
	%520 = load i32, i32* %1
	%521 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %520)
	store i32 3, i32* %1
	%522 = load i32, i32* %1
	%523 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %522)
	store i32 4, i32* %1
	%524 = load i32, i32* %1
	%525 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %524)
	store i32 5, i32* %1
	%526 = load i32, i32* %1
	%527 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %526)
	store i32 6, i32* %1
	%528 = load i32, i32* %1
	%529 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %528)
	store i32 7, i32* %1
	%530 = load i32, i32* %1
	%531 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %530)
	store i32 1, i32* %1
	%532 = load i32, i32* %1
	%533 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %532)
	store i32 8, i32* %1
	%534 = load i32, i32* %1
	%535 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %534)
	store i32 9, i32* %1
	%536 = load i32, i32* %1
	%537 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %536)
	store i32 10, i32* %1
	%538 = load i32, i32* %1
	%539 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %538)
	store i32 11, i32* %1
	%540 = load i32, i32* %1
	%541 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %540)
	store i32 12, i32* %1
	%542 = load i32, i32* %1
	%543 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %542)
	store i32 13, i32* %1
	%544 = load i32, i32* %1
	%545 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %544)
	store i32 14, i32* %1
	%546 = load i32, i32* %1
	%547 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %546)
	store i32 15, i32* %1
	%548 = load i32, i32* %1
	%549 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %548)
	store i32 2, i32* %1
	%550 = load i32, i32* %1
	%551 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %550)
	store i32 16, i32* %1
	%552 = load i32, i32* %1
	%553 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %552)
	store i32 17, i32* %1
	%554 = load i32, i32* %1
	%555 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %554)
	store i32 18, i32* %1
	%556 = load i32, i32* %1
	%557 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %556)
	store i32 19, i32* %1
	%558 = load i32, i32* %1
	%559 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %558)
	store i32 20, i32* %1
	%560 = load i32, i32* %1
	%561 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %560)
	store i32 21, i32* %1
	%562 = load i32, i32* %1
	%563 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %562)
	store i32 22, i32* %1
	%564 = load i32, i32* %1
	%565 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %564)
	store i32 23, i32* %1
	%566 = load i32, i32* %1
	%567 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %566)
	store i32 3, i32* %1
	%568 = load i32, i32* %1
	%569 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %568)
	store i32 24, i32* %1
	%570 = load i32, i32* %1
	%571 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %570)
	store i32 25, i32* %1
	%572 = load i32, i32* %1
	%573 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %572)
	store i32 26, i32* %1
	%574 = load i32, i32* %1
	%575 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %574)
	store i32 27, i32* %1
	%576 = load i32, i32* %1
	%577 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %576)
	store i32 28, i32* %1
	%578 = load i32, i32* %1
	%579 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %578)
	store i32 29, i32* %1
	%580 = load i32, i32* %1
	%581 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %580)
	store i32 30, i32* %1
	%582 = load i32, i32* %1
	%583 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %582)
	store i32 31, i32* %1
	%584 = load i32, i32* %1
	%585 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %584)
	store i32 4, i32* %1
	%586 = load i32, i32* %1
	%587 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %586)
	store i32 32, i32* %1
	%588 = load i32, i32* %1
	%589 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %588)
	store i32 33, i32* %1
	%590 = load i32, i32* %1
	%591 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %590)
	store i32 34, i32* %1
	%592 = load i32, i32* %1
	%593 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %592)
	store i32 35, i32* %1
	%594 = load i32, i32* %1
	%595 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %594)
	store i32 36, i32* %1
	%596 = load i32, i32* %1
	%597 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %596)
	store i32 37, i32* %1
	%598 = load i32, i32* %1
	%599 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %598)
	store i32 38, i32* %1
	%600 = load i32, i32* %1
	%601 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %600)
	store i32 39, i32* %1
	%602 = load i32, i32* %1
	%603 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %602)
	store i32 5, i32* %1
	%604 = load i32, i32* %1
	%605 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %604)
	store i32 40, i32* %1
	%606 = load i32, i32* %1
	%607 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %606)
	store i32 41, i32* %1
	%608 = load i32, i32* %1
	%609 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %608)
	store i32 42, i32* %1
	%610 = load i32, i32* %1
	%611 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %610)
	store i32 43, i32* %1
	%612 = load i32, i32* %1
	%613 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %612)
	store i32 44, i32* %1
	%614 = load i32, i32* %1
	%615 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %614)
	store i32 45, i32* %1
	%616 = load i32, i32* %1
	%617 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %616)
	store i32 46, i32* %1
	%618 = load i32, i32* %1
	%619 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %618)
	store i32 47, i32* %1
	%620 = load i32, i32* %1
	%621 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %620)
	store i32 6, i32* %1
	%622 = load i32, i32* %1
	%623 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %622)
	store i32 48, i32* %1
	%624 = load i32, i32* %1
	%625 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %624)
	store i32 49, i32* %1
	%626 = load i32, i32* %1
	%627 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %626)
	store i32 50, i32* %1
	%628 = load i32, i32* %1
	%629 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %628)
	store i32 51, i32* %1
	%630 = load i32, i32* %1
	%631 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %630)
	store i32 52, i32* %1
	%632 = load i32, i32* %1
	%633 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %632)
	store i32 53, i32* %1
	%634 = load i32, i32* %1
	%635 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %634)
	store i32 54, i32* %1
	%636 = load i32, i32* %1
	%637 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %636)
	store i32 55, i32* %1
	%638 = load i32, i32* %1
	%639 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %638)
	store i32 7, i32* %1
	%640 = load i32, i32* %1
	%641 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %640)
	store i32 56, i32* %1
	%642 = load i32, i32* %1
	%643 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %642)
	store i32 57, i32* %1
	%644 = load i32, i32* %1
	%645 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %644)
	store i32 58, i32* %1
	%646 = load i32, i32* %1
	%647 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %646)
	store i32 59, i32* %1
	%648 = load i32, i32* %1
	%649 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %648)
	store i32 60, i32* %1
	%650 = load i32, i32* %1
	%651 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %650)
	store i32 61, i32* %1
	%652 = load i32, i32* %1
	%653 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %652)
	store i32 62, i32* %1
	%654 = load i32, i32* %1
	%655 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %654)
	store i32 63, i32* %1
	%656 = load i32, i32* %1
	%657 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %656)
	store i32 1, i32* %1
	%658 = load i32, i32* %1
	%659 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %658)
	store i32 8, i32* %1
	%660 = load i32, i32* %1
	%661 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %660)
	store i32 64, i32* %1
	%662 = load i32, i32* %1
	%663 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %662)
	store i32 65, i32* %1
	%664 = load i32, i32* %1
	%665 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %664)
	store i32 66, i32* %1
	%666 = load i32, i32* %1
	%667 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %666)
	store i32 67, i32* %1
	%668 = load i32, i32* %1
	%669 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %668)
	store i32 68, i32* %1
	%670 = load i32, i32* %1
	%671 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %670)
	store i32 69, i32* %1
	%672 = load i32, i32* %1
	%673 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %672)
	store i32 70, i32* %1
	%674 = load i32, i32* %1
	%675 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %674)
	store i32 71, i32* %1
	%676 = load i32, i32* %1
	%677 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %676)
	store i32 9, i32* %1
	%678 = load i32, i32* %1
	%679 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %678)
	store i32 72, i32* %1
	%680 = load i32, i32* %1
	%681 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %680)
	store i32 73, i32* %1
	%682 = load i32, i32* %1
	%683 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %682)
	store i32 74, i32* %1
	%684 = load i32, i32* %1
	%685 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %684)
	store i32 75, i32* %1
	%686 = load i32, i32* %1
	%687 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %686)
	store i32 76, i32* %1
	%688 = load i32, i32* %1
	%689 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %688)
	store i32 77, i32* %1
	%690 = load i32, i32* %1
	%691 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %690)
	store i32 78, i32* %1
	%692 = load i32, i32* %1
	%693 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %692)
	store i32 79, i32* %1
	%694 = load i32, i32* %1
	%695 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %694)
	store i32 10, i32* %1
	%696 = load i32, i32* %1
	%697 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %696)
	store i32 80, i32* %1
	%698 = load i32, i32* %1
	%699 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %698)
	store i32 81, i32* %1
	%700 = load i32, i32* %1
	%701 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %700)
	store i32 82, i32* %1
	%702 = load i32, i32* %1
	%703 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %702)
	store i32 83, i32* %1
	%704 = load i32, i32* %1
	%705 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %704)
	store i32 84, i32* %1
	%706 = load i32, i32* %1
	%707 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %706)
	store i32 85, i32* %1
	%708 = load i32, i32* %1
	%709 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %708)
	store i32 86, i32* %1
	%710 = load i32, i32* %1
	%711 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %710)
	store i32 87, i32* %1
	%712 = load i32, i32* %1
	%713 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %712)
	store i32 11, i32* %1
	%714 = load i32, i32* %1
	%715 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %714)
	store i32 88, i32* %1
	%716 = load i32, i32* %1
	%717 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %716)
	store i32 89, i32* %1
	%718 = load i32, i32* %1
	%719 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %718)
	store i32 90, i32* %1
	%720 = load i32, i32* %1
	%721 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %720)
	store i32 91, i32* %1
	%722 = load i32, i32* %1
	%723 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %722)
	store i32 92, i32* %1
	%724 = load i32, i32* %1
	%725 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %724)
	store i32 93, i32* %1
	%726 = load i32, i32* %1
	%727 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %726)
	store i32 94, i32* %1
	%728 = load i32, i32* %1
	%729 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %728)
	store i32 95, i32* %1
	%730 = load i32, i32* %1
	%731 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %730)
	store i32 12, i32* %1
	%732 = load i32, i32* %1
	%733 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %732)
	store i32 96, i32* %1
	%734 = load i32, i32* %1
	%735 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %734)
	store i32 97, i32* %1
	%736 = load i32, i32* %1
	%737 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %736)
	store i32 98, i32* %1
	%738 = load i32, i32* %1
	%739 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %738)
	store i32 99, i32* %1
	%740 = load i32, i32* %1
	%741 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %740)
	store i32 100, i32* %1
	%742 = load i32, i32* %1
	%743 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %742)
	store i32 101, i32* %1
	%744 = load i32, i32* %1
	%745 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %744)
	store i32 102, i32* %1
	%746 = load i32, i32* %1
	%747 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %746)
	store i32 103, i32* %1
	%748 = load i32, i32* %1
	%749 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %748)
	store i32 13, i32* %1
	%750 = load i32, i32* %1
	%751 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %750)
	store i32 104, i32* %1
	%752 = load i32, i32* %1
	%753 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %752)
	store i32 105, i32* %1
	%754 = load i32, i32* %1
	%755 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %754)
	store i32 106, i32* %1
	%756 = load i32, i32* %1
	%757 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %756)
	store i32 107, i32* %1
	%758 = load i32, i32* %1
	%759 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %758)
	store i32 108, i32* %1
	%760 = load i32, i32* %1
	%761 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %760)
	store i32 109, i32* %1
	%762 = load i32, i32* %1
	%763 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %762)
	store i32 110, i32* %1
	%764 = load i32, i32* %1
	%765 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %764)
	store i32 111, i32* %1
	%766 = load i32, i32* %1
	%767 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %766)
	store i32 14, i32* %1
	%768 = load i32, i32* %1
	%769 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %768)
	store i32 112, i32* %1
	%770 = load i32, i32* %1
	%771 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %770)
	store i32 113, i32* %1
	%772 = load i32, i32* %1
	%773 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %772)
	store i32 114, i32* %1
	%774 = load i32, i32* %1
	%775 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %774)
	store i32 115, i32* %1
	%776 = load i32, i32* %1
	%777 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %776)
	store i32 116, i32* %1
	%778 = load i32, i32* %1
	%779 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %778)
	store i32 117, i32* %1
	%780 = load i32, i32* %1
	%781 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %780)
	store i32 118, i32* %1
	%782 = load i32, i32* %1
	%783 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %782)
	store i32 119, i32* %1
	%784 = load i32, i32* %1
	%785 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %784)
	store i32 15, i32* %1
	%786 = load i32, i32* %1
	%787 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %786)
	store i32 120, i32* %1
	%788 = load i32, i32* %1
	%789 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %788)
	store i32 121, i32* %1
	%790 = load i32, i32* %1
	%791 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %790)
	store i32 122, i32* %1
	%792 = load i32, i32* %1
	%793 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %792)
	store i32 123, i32* %1
	%794 = load i32, i32* %1
	%795 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %794)
	store i32 124, i32* %1
	%796 = load i32, i32* %1
	%797 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %796)
	store i32 125, i32* %1
	%798 = load i32, i32* %1
	%799 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %798)
	store i32 126, i32* %1
	%800 = load i32, i32* %1
	%801 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %800)
	store i32 127, i32* %1
	%802 = load i32, i32* %1
	%803 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %802)
	store i32 2, i32* %1
	%804 = load i32, i32* %1
	%805 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %804)
	store i32 16, i32* %1
	%806 = load i32, i32* %1
	%807 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %806)
	store i32 128, i32* %1
	%808 = load i32, i32* %1
	%809 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %808)
	store i32 129, i32* %1
	%810 = load i32, i32* %1
	%811 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %810)
	store i32 130, i32* %1
	%812 = load i32, i32* %1
	%813 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %812)
	store i32 131, i32* %1
	%814 = load i32, i32* %1
	%815 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %814)
	store i32 132, i32* %1
	%816 = load i32, i32* %1
	%817 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %816)
	store i32 133, i32* %1
	%818 = load i32, i32* %1
	%819 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %818)
	store i32 134, i32* %1
	%820 = load i32, i32* %1
	%821 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %820)
	store i32 135, i32* %1
	%822 = load i32, i32* %1
	%823 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %822)
	store i32 17, i32* %1
	%824 = load i32, i32* %1
	%825 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %824)
	store i32 136, i32* %1
	%826 = load i32, i32* %1
	%827 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %826)
	store i32 137, i32* %1
	%828 = load i32, i32* %1
	%829 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %828)
	store i32 138, i32* %1
	%830 = load i32, i32* %1
	%831 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %830)
	store i32 139, i32* %1
	%832 = load i32, i32* %1
	%833 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %832)
	store i32 140, i32* %1
	%834 = load i32, i32* %1
	%835 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %834)
	store i32 141, i32* %1
	%836 = load i32, i32* %1
	%837 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %836)
	store i32 142, i32* %1
	%838 = load i32, i32* %1
	%839 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %838)
	store i32 143, i32* %1
	%840 = load i32, i32* %1
	%841 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %840)
	store i32 18, i32* %1
	%842 = load i32, i32* %1
	%843 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %842)
	store i32 144, i32* %1
	%844 = load i32, i32* %1
	%845 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %844)
	store i32 145, i32* %1
	%846 = load i32, i32* %1
	%847 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %846)
	store i32 146, i32* %1
	%848 = load i32, i32* %1
	%849 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %848)
	store i32 147, i32* %1
	%850 = load i32, i32* %1
	%851 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %850)
	store i32 148, i32* %1
	%852 = load i32, i32* %1
	%853 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %852)
	store i32 149, i32* %1
	%854 = load i32, i32* %1
	%855 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %854)
	store i32 150, i32* %1
	%856 = load i32, i32* %1
	%857 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %856)
	store i32 151, i32* %1
	%858 = load i32, i32* %1
	%859 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %858)
	store i32 19, i32* %1
	%860 = load i32, i32* %1
	%861 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %860)
	store i32 152, i32* %1
	%862 = load i32, i32* %1
	%863 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %862)
	store i32 153, i32* %1
	%864 = load i32, i32* %1
	%865 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %864)
	store i32 154, i32* %1
	%866 = load i32, i32* %1
	%867 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %866)
	store i32 155, i32* %1
	%868 = load i32, i32* %1
	%869 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %868)
	store i32 156, i32* %1
	%870 = load i32, i32* %1
	%871 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %870)
	store i32 157, i32* %1
	%872 = load i32, i32* %1
	%873 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %872)
	store i32 158, i32* %1
	%874 = load i32, i32* %1
	%875 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %874)
	store i32 159, i32* %1
	%876 = load i32, i32* %1
	%877 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %876)
	store i32 20, i32* %1
	%878 = load i32, i32* %1
	%879 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %878)
	store i32 160, i32* %1
	%880 = load i32, i32* %1
	%881 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %880)
	store i32 161, i32* %1
	%882 = load i32, i32* %1
	%883 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %882)
	store i32 162, i32* %1
	%884 = load i32, i32* %1
	%885 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %884)
	store i32 163, i32* %1
	%886 = load i32, i32* %1
	%887 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %886)
	store i32 164, i32* %1
	%888 = load i32, i32* %1
	%889 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %888)
	store i32 165, i32* %1
	%890 = load i32, i32* %1
	%891 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %890)
	store i32 166, i32* %1
	%892 = load i32, i32* %1
	%893 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %892)
	store i32 167, i32* %1
	%894 = load i32, i32* %1
	%895 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %894)
	store i32 21, i32* %1
	%896 = load i32, i32* %1
	%897 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %896)
	store i32 168, i32* %1
	%898 = load i32, i32* %1
	%899 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %898)
	store i32 169, i32* %1
	%900 = load i32, i32* %1
	%901 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %900)
	store i32 170, i32* %1
	%902 = load i32, i32* %1
	%903 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %902)
	store i32 171, i32* %1
	%904 = load i32, i32* %1
	%905 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %904)
	store i32 172, i32* %1
	%906 = load i32, i32* %1
	%907 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %906)
	store i32 173, i32* %1
	%908 = load i32, i32* %1
	%909 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %908)
	store i32 174, i32* %1
	%910 = load i32, i32* %1
	%911 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %910)
	store i32 175, i32* %1
	%912 = load i32, i32* %1
	%913 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %912)
	store i32 22, i32* %1
	%914 = load i32, i32* %1
	%915 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %914)
	store i32 176, i32* %1
	%916 = load i32, i32* %1
	%917 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %916)
	store i32 177, i32* %1
	%918 = load i32, i32* %1
	%919 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %918)
	store i32 178, i32* %1
	%920 = load i32, i32* %1
	%921 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %920)
	store i32 179, i32* %1
	%922 = load i32, i32* %1
	%923 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %922)
	store i32 180, i32* %1
	%924 = load i32, i32* %1
	%925 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %924)
	store i32 181, i32* %1
	%926 = load i32, i32* %1
	%927 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %926)
	store i32 182, i32* %1
	%928 = load i32, i32* %1
	%929 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %928)
	store i32 183, i32* %1
	%930 = load i32, i32* %1
	%931 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %930)
	store i32 23, i32* %1
	%932 = load i32, i32* %1
	%933 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %932)
	store i32 184, i32* %1
	%934 = load i32, i32* %1
	%935 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %934)
	store i32 185, i32* %1
	%936 = load i32, i32* %1
	%937 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %936)
	store i32 186, i32* %1
	%938 = load i32, i32* %1
	%939 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %938)
	store i32 187, i32* %1
	%940 = load i32, i32* %1
	%941 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %940)
	store i32 188, i32* %1
	%942 = load i32, i32* %1
	%943 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %942)
	store i32 189, i32* %1
	%944 = load i32, i32* %1
	%945 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %944)
	store i32 190, i32* %1
	%946 = load i32, i32* %1
	%947 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %946)
	store i32 191, i32* %1
	%948 = load i32, i32* %1
	%949 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %948)
	store i32 3, i32* %1
	%950 = load i32, i32* %1
	%951 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %950)
	store i32 24, i32* %1
	%952 = load i32, i32* %1
	%953 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %952)
	store i32 192, i32* %1
	%954 = load i32, i32* %1
	%955 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %954)
	store i32 193, i32* %1
	%956 = load i32, i32* %1
	%957 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %956)
	store i32 194, i32* %1
	%958 = load i32, i32* %1
	%959 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %958)
	store i32 195, i32* %1
	%960 = load i32, i32* %1
	%961 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %960)
	store i32 196, i32* %1
	%962 = load i32, i32* %1
	%963 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %962)
	store i32 197, i32* %1
	%964 = load i32, i32* %1
	%965 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %964)
	store i32 198, i32* %1
	%966 = load i32, i32* %1
	%967 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %966)
	store i32 199, i32* %1
	%968 = load i32, i32* %1
	%969 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %968)
	store i32 25, i32* %1
	%970 = load i32, i32* %1
	%971 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %970)
	store i32 200, i32* %1
	%972 = load i32, i32* %1
	%973 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %972)
	store i32 201, i32* %1
	%974 = load i32, i32* %1
	%975 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %974)
	store i32 202, i32* %1
	%976 = load i32, i32* %1
	%977 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %976)
	store i32 203, i32* %1
	%978 = load i32, i32* %1
	%979 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %978)
	store i32 204, i32* %1
	%980 = load i32, i32* %1
	%981 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %980)
	store i32 205, i32* %1
	%982 = load i32, i32* %1
	%983 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %982)
	store i32 206, i32* %1
	%984 = load i32, i32* %1
	%985 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %984)
	store i32 207, i32* %1
	%986 = load i32, i32* %1
	%987 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %986)
	store i32 26, i32* %1
	%988 = load i32, i32* %1
	%989 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %988)
	store i32 208, i32* %1
	%990 = load i32, i32* %1
	%991 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %990)
	store i32 209, i32* %1
	%992 = load i32, i32* %1
	%993 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %992)
	store i32 210, i32* %1
	%994 = load i32, i32* %1
	%995 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %994)
	store i32 211, i32* %1
	%996 = load i32, i32* %1
	%997 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %996)
	store i32 212, i32* %1
	%998 = load i32, i32* %1
	%999 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %998)
	store i32 213, i32* %1
	%1000 = load i32, i32* %1
	%1001 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1000)
	store i32 214, i32* %1
	%1002 = load i32, i32* %1
	%1003 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1002)
	store i32 215, i32* %1
	%1004 = load i32, i32* %1
	%1005 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1004)
	store i32 27, i32* %1
	%1006 = load i32, i32* %1
	%1007 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1006)
	store i32 216, i32* %1
	%1008 = load i32, i32* %1
	%1009 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1008)
	store i32 217, i32* %1
	%1010 = load i32, i32* %1
	%1011 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1010)
	store i32 218, i32* %1
	%1012 = load i32, i32* %1
	%1013 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1012)
	store i32 219, i32* %1
	%1014 = load i32, i32* %1
	%1015 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1014)
	store i32 220, i32* %1
	%1016 = load i32, i32* %1
	%1017 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1016)
	store i32 221, i32* %1
	%1018 = load i32, i32* %1
	%1019 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1018)
	store i32 222, i32* %1
	%1020 = load i32, i32* %1
	%1021 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1020)
	store i32 223, i32* %1
	%1022 = load i32, i32* %1
	%1023 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1022)
	store i32 28, i32* %1
	%1024 = load i32, i32* %1
	%1025 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1024)
	store i32 224, i32* %1
	%1026 = load i32, i32* %1
	%1027 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1026)
	store i32 225, i32* %1
	%1028 = load i32, i32* %1
	%1029 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1028)
	store i32 226, i32* %1
	%1030 = load i32, i32* %1
	%1031 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1030)
	store i32 227, i32* %1
	%1032 = load i32, i32* %1
	%1033 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1032)
	store i32 228, i32* %1
	%1034 = load i32, i32* %1
	%1035 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1034)
	store i32 229, i32* %1
	%1036 = load i32, i32* %1
	%1037 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1036)
	store i32 230, i32* %1
	%1038 = load i32, i32* %1
	%1039 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1038)
	store i32 231, i32* %1
	%1040 = load i32, i32* %1
	%1041 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1040)
	store i32 29, i32* %1
	%1042 = load i32, i32* %1
	%1043 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1042)
	store i32 232, i32* %1
	%1044 = load i32, i32* %1
	%1045 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1044)
	store i32 233, i32* %1
	%1046 = load i32, i32* %1
	%1047 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1046)
	store i32 234, i32* %1
	%1048 = load i32, i32* %1
	%1049 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1048)
	store i32 235, i32* %1
	%1050 = load i32, i32* %1
	%1051 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1050)
	store i32 236, i32* %1
	%1052 = load i32, i32* %1
	%1053 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1052)
	store i32 237, i32* %1
	%1054 = load i32, i32* %1
	%1055 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1054)
	store i32 238, i32* %1
	%1056 = load i32, i32* %1
	%1057 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1056)
	store i32 239, i32* %1
	%1058 = load i32, i32* %1
	%1059 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1058)
	store i32 30, i32* %1
	%1060 = load i32, i32* %1
	%1061 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1060)
	store i32 240, i32* %1
	%1062 = load i32, i32* %1
	%1063 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1062)
	store i32 241, i32* %1
	%1064 = load i32, i32* %1
	%1065 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1064)
	store i32 242, i32* %1
	%1066 = load i32, i32* %1
	%1067 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1066)
	store i32 243, i32* %1
	%1068 = load i32, i32* %1
	%1069 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1068)
	store i32 244, i32* %1
	%1070 = load i32, i32* %1
	%1071 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1070)
	store i32 245, i32* %1
	%1072 = load i32, i32* %1
	%1073 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1072)
	store i32 246, i32* %1
	%1074 = load i32, i32* %1
	%1075 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1074)
	store i32 247, i32* %1
	%1076 = load i32, i32* %1
	%1077 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1076)
	store i32 31, i32* %1
	%1078 = load i32, i32* %1
	%1079 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1078)
	store i32 248, i32* %1
	%1080 = load i32, i32* %1
	%1081 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1080)
	store i32 249, i32* %1
	%1082 = load i32, i32* %1
	%1083 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1082)
	store i32 250, i32* %1
	%1084 = load i32, i32* %1
	%1085 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1084)
	store i32 251, i32* %1
	%1086 = load i32, i32* %1
	%1087 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1086)
	store i32 252, i32* %1
	%1088 = load i32, i32* %1
	%1089 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1088)
	store i32 253, i32* %1
	%1090 = load i32, i32* %1
	%1091 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1090)
	store i32 254, i32* %1
	%1092 = load i32, i32* %1
	%1093 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1092)
	store i32 255, i32* %1
	%1094 = load i32, i32* %1
	%1095 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1094)
	store i32 4, i32* %1
	%1096 = load i32, i32* %1
	%1097 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1096)
	store i32 32, i32* %1
	%1098 = load i32, i32* %1
	%1099 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1098)
	store i32 33, i32* %1
	%1100 = load i32, i32* %1
	%1101 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1100)
	store i32 34, i32* %1
	%1102 = load i32, i32* %1
	%1103 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1102)
	store i32 35, i32* %1
	%1104 = load i32, i32* %1
	%1105 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1104)
	store i32 36, i32* %1
	%1106 = load i32, i32* %1
	%1107 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1106)
	store i32 37, i32* %1
	%1108 = load i32, i32* %1
	%1109 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1108)
	store i32 38, i32* %1
	%1110 = load i32, i32* %1
	%1111 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1110)
	store i32 39, i32* %1
	%1112 = load i32, i32* %1
	%1113 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1112)
	store i32 5, i32* %1
	%1114 = load i32, i32* %1
	%1115 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1114)
	store i32 40, i32* %1
	%1116 = load i32, i32* %1
	%1117 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1116)
	store i32 41, i32* %1
	%1118 = load i32, i32* %1
	%1119 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1118)
	store i32 42, i32* %1
	%1120 = load i32, i32* %1
	%1121 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1120)
	store i32 43, i32* %1
	%1122 = load i32, i32* %1
	%1123 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1122)
	store i32 44, i32* %1
	%1124 = load i32, i32* %1
	%1125 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1124)
	store i32 45, i32* %1
	%1126 = load i32, i32* %1
	%1127 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1126)
	store i32 46, i32* %1
	%1128 = load i32, i32* %1
	%1129 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1128)
	store i32 47, i32* %1
	%1130 = load i32, i32* %1
	%1131 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1130)
	store i32 6, i32* %1
	%1132 = load i32, i32* %1
	%1133 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1132)
	store i32 48, i32* %1
	%1134 = load i32, i32* %1
	%1135 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1134)
	store i32 49, i32* %1
	%1136 = load i32, i32* %1
	%1137 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1136)
	store i32 50, i32* %1
	%1138 = load i32, i32* %1
	%1139 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1138)
	store i32 51, i32* %1
	%1140 = load i32, i32* %1
	%1141 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1140)
	store i32 52, i32* %1
	%1142 = load i32, i32* %1
	%1143 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1142)
	store i32 53, i32* %1
	%1144 = load i32, i32* %1
	%1145 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1144)
	store i32 54, i32* %1
	%1146 = load i32, i32* %1
	%1147 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1146)
	store i32 55, i32* %1
	%1148 = load i32, i32* %1
	%1149 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1148)
	store i32 7, i32* %1
	%1150 = load i32, i32* %1
	%1151 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1150)
	store i32 56, i32* %1
	%1152 = load i32, i32* %1
	%1153 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1152)
	store i32 57, i32* %1
	%1154 = load i32, i32* %1
	%1155 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1154)
	store i32 58, i32* %1
	%1156 = load i32, i32* %1
	%1157 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1156)
	store i32 59, i32* %1
	%1158 = load i32, i32* %1
	%1159 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1158)
	store i32 60, i32* %1
	%1160 = load i32, i32* %1
	%1161 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1160)
	store i32 61, i32* %1
	%1162 = load i32, i32* %1
	%1163 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1162)
	store i32 62, i32* %1
	%1164 = load i32, i32* %1
	%1165 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1164)
	store i32 63, i32* %1
	%1166 = load i32, i32* %1
	%1167 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %1166)
	ret i32 0
}
