#include <stdio.h>
#include <string.h>

int main(void)
{
    char buffer[10];
    int xyz = 0;

    printf("\n Enter the key: \n");
    gets(buffer);

    if(strcmp(buffer, "gainesville"))
    {
        printf ("\n You entered wrong key \n");
    }
    else
    {
        printf ("\n You entered Right key\n");
        xyz = 1;
    }

    if(xyz)
    {
       
        printf ("\n Congrates access given to user \n");
    }

    return 0;
}
