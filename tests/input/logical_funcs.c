char nand(char x, char y){
    return !(x && y);
}

char nor(char x, char y){
    return !(x || y);
}

int main(void){
    putchar(nand(0, 0) + 'A');
    putchar(nor(0, 0) + 'A');
    return 0;
}