//AJG24080 今場智哉
#include <stdio.h>
int main(void){
int c,i;
char s[100];
printf("Input a word:");
scanf("%s", s);
for(i=0;i<100;i++){
    if(s[i]=='a'){
        c+=1;
    }
}
printf("aの数=%d\n",c);
return 0;
}