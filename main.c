#include <stdio.h>

int main(void)
{
    int input;
    scanf("%d", &input);

    // 0以上10未満、または12以上15未満ならOK
    // それ以外の整数はNG
    int is_ok = !(input < 0 || (input >= 10 && input < 12) || input >= 15);

    if (is_ok == 1)
    {
        printf("OK");
    }
    else
    {
        printf("NG");
    }

    return 0;
}