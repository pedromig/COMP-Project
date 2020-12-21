// int m(int r, int y) {
//     int l = y || r;
//     return l;
// }

// char nand(char x, char y) {
//     return !(x && y);
// }

// char nor(char x, char y) {
//     return !(x || y);
// }

// int l(void) {
//     int c = 2;
//     int a = 1;
//     int b = 2;

//     m(1241, 123);

//     int x = 4;
//     if (m(1231, 142))
//         x = x + 2;
//     putchar(x);

//     //a = 0 && (a = a + 1) || 0 + a && 12 && b && 1 + 'A';
//     // putchar(a);

//     // while (a && b && !c)
//     //
//     ;

//     //asd = a + putchar('A' && putchar('A') || 0 & (b = b + 10 && a));

//     short y = (a = a + 1) && a || 10 && a || b && a;

//     int d = 10 && nand(100, 124) && nor(12, 3) || nand(1, 41) && nand(5, 42) || 1;
//     if (d) {
//         if (nand(100, 124) && nor(12, 3) || nand(1, 41) && nand(5, 42) || 1) {
//             if (nand(100, 124) && nor(12, 3) || nand(1, 41) && nand(5, 42) || 1)
//                 return 0;
//             else {
//                 if (nand(100, 124) && nor(12, 3) || nand(1, 41) && nand(5, 42) || 1) {
//                     if (nand(100, 124) && nor(12, 3) || nand(1, 41) && nand(5, 42) || 1) {
//                     }
//                     putchar('A');
//                 } else {
//                     return 0;
//                 }
//             }
//         }
//     }

//     if (a) {
//         a = 0;
//         if (a) {
//             putchar(a);
//         }
//     }
//     if (!a && !b || !b) {
//         if (a = 2) {
//         }
//     }

//     if (a && b || (a = 1) && a || b || 0 && a) {
//         if (b || a && (b + a) && a && !b) {
//             a = a + 2;
//         }
//         a = 0;
//     }

//     if ((!b || !a)) {
//         if (!b) {
//             putchar('A');
//             if (!a) {
//                 putchar('B');
//             } else {
//                 if (!a && !b || b) {
//                     putchar('C');
//                 }
//             }
//             return 0;
//         }
//     }
//     return 0;
// }

int main(void) {
    int a = 65, b = 68;
    char c = 76;
    int d = (b = b + 10 && 65 || 0) || 12;

    return 0;
}
