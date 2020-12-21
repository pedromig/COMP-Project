
int d;
int declaredOnly(int,int x);


double globalDouble = 2.0;

int func(int a, double c){

	a=3;
	return a*3;

}

void notTest(void){
	int a;
	a=!a;
	
	double c;
	c=!a;

}

void declarationTests(void){
	int x;
	double b=x;
	
	double c = 2;
	
	double anotherD = 'a';
	
	int a = 'a';
	double k2=2.2;
	
	double k3=1+2.2;
	double k4 =2.2+1;	
	
	k3=9 + 9.9;
	k3=6 + 6.6;
}

void uselessFunction(int a, int b){}

void arithmeticTests(void){
	double a=90;
	int b = 50;
	double c;
	
	c= 2.0+1; 
	
	uselessFunction(3+4,5+3);
	
	c=1*2+3*4;
	
	c= a+7*b;
	c=1*7+b*3*4+2+(3*4)+2;
	
	a = 1*2+3*4;
	
	int AAAAAAAA = b;
	
	int z= 2*2;
	
	double k9 = 2.2*c+1;
	k9=c=a;
}


void errorTestingLogicalOps(void){
	double d;
	int a;
	//a = a&d;
	//a = a&&d;
	//a = a|d;
	//a = a||d;
	//a = a^d;
	//a = !d;

}

void relationalOperationsTest(void){

	int a=1;
	int b=0;
	
	//prints: bdfgik
	
	if(a == b){  // -> false
	putchar('a');
	} 
	
	if(a == a){ // -> true
	putchar('b');
	} 
	
	if(b != b){ // -> false
	putchar('c');
	} 
	
	if(a != b){  // -> true
	putchar('d');
	} 
	
	if(a < a){ // false
	putchar('e');
	} 
	
	if(b < a){ // true 
	putchar('f');
	}
	
	if(a <= a){ // true
	putchar('g');
	} 
	
	if(b > a){ // false 
	putchar('h');
	}
	
	if(a > b){ // true
	putchar('i');
	} 
	
	if(b >= a){ // false 
	putchar('j');
	}
	
	if(a >= a){ // true
	putchar('k');
	} 
	
	
	putchar('\n');
	
	
}

void whileAndIfChains(void){
	
	//prints: ABC
	
	int a=5;
	int b;
	while(a <= 10){
		b = 1;
		if(b==2){
		
		} else {
			
			if(a == 7){
			putchar('\n');
			putchar('A');
			putchar('B');
			putchar('C');
			putchar('\n');
			}
		}
	
	a=a+1;
	}

}

void intAndDouble(int a, double b){}

int scopeLimitTesting(void){
	int a=1;
	if(a){
		if(a){
		}
		return 3;
	}
	
	while(a){
		if(a){}
		a=a-1;
		
		//int a = 3; //erro
		
	}
	return 0;
}

void moreIntToDoubleConversionTests(void){
	double d = (3,3);
	d = (1,1);

}

void andOrTesting(void){
	int a = 1;
	int b = 0;
	
	//prints: bde
	
	putchar('\n');
	
	if(a && b){  // 1 && 0 -> false
	putchar('a');
	} 
	
	if(a && a){ // 1 && 1 -> true
	putchar('b');
	} 
	
	if(b && b){ // 0 && 0 -> false
	putchar('c');
	} 
	
	if(a || b){  // 1 || 0 -> true
	putchar('d');
	} 
	
	if(a || a){ // 1 || 1 -> true
	putchar('e');
	} 
	
	if(b || b){ // 0 || 0 -> false
	putchar('f');
	}
	
	putchar('\n');

}

int main(void){
whileAndIfChains();
relationalOperationsTest();
andOrTesting();

intAndDouble(1, 1);

errorTestingLogicalOps();

d=98;

/*
	char c = '\n'; 
	int a=5;
	while(a){
	putchar('a');
	putchar(d);
	
		a=a-1;
	}

int c=d;

*/
func(97, 0.0);

	
}
