//AJG24080 今場智哉
#include <stdio.h>
int main(void){
char s[32];
char *pt=s;
char *a;
scanf("%s", s);
a=pt;
for(int i=0;i<32 && *(pt+i) != '\0';i++){
    if('A'<=*(pt+i) && *(pt+i)<='Z'){
        pt+=i;
        *pt+=32;
        printf("%c",*pt);
        pt=a;
    }
    else if('a'<=*(pt+i) && *(pt+i)<='z'){
        pt+=i;
        *pt-=32;
        printf("%c",*pt);
        pt=a;
    }
}
printf("\n");
return 0;}