#include <stdio.h>

int main(void)
{
    int x=0, y=8, z=0; //sigma: estado inicial
    {
        int x=1;  //e1 = 1 (expresion entera 1)
        {
            int y=x;  //e2 = x (expresion entera 2)
            z = y;  //comando c = z:=y
        }
    }
    printf("%d %d %d\n", x, y, z);
    {
        int y=x;  //e2 = x (expresion entera 2)
        {
            int x=1;  //e1 = 1 (expresion entera 1)
            z = y;  //comando c == z:=y
        }
    }
    printf("%d %d %d\n", x, y, z);
    return 0;
}
