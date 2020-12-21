
char myGlobalChar = 'A' + 'B' - 'B';
int notInitializedOnDec;

double alsoSneaky = 2;

int SNEAKY = 'Z';

void testAndTweak(void){
	int a = myGlobalChar;
	myGlobalChar = myGlobalChar + 1;
	notInitializedOnDec = 67; //C
}


int main(void){

	//prints:
	//S
	//Ax
	//BC
	//CD
	
	char SNEAKY = 'S';
	
	putchar(SNEAKY);
	putchar('\n');
	
	
	//INIT VALUES
	notInitializedOnDec = 'x';
	
	putchar(myGlobalChar);
	putchar(notInitializedOnDec);
	putchar('\n');
	
	//CHANGED IN FUNCTION
	testAndTweak();
	
	putchar(myGlobalChar);
	putchar(notInitializedOnDec);
	putchar('\n');
	
	//REASSIGN IN MAIN
	myGlobalChar = 'C';
	notInitializedOnDec = notInitializedOnDec +1;
	
	putchar(myGlobalChar);
	putchar(notInitializedOnDec);
	putchar('\n');
	
	
	
	
	int useless1 = notInitializedOnDec;
	int useless2 = myGlobalChar;
	
	return myGlobalChar;
	
}
