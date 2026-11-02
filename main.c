#include <stdio.h>
int main(void){int a;scanf("%d",&a);int f=!(a<0||(a>=10&&a<12)||a>=15);if(f==1){printf("OK");}else{printf("NG");}return 0;}
