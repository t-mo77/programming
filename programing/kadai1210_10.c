//AJG24080 今場智哉
#include <stdio.h>
#include<string.h>
struct Player{
char name[40];
int number;
char position[40];
};
int main(void){
    struct Player p[11]={
        {"Gonda",12,"GK"},
        {"Miura",2,"DF"},
        {"Muroya",3,"DF"},
        {"Yamanaka",5,"DF"},
        {"Makino",20,"DF"},
        {"Haraguchi",8,"MF"},
        {"Ito",14,"MF"},
        {"Morita",17,"MF"},
        {"Misano",18,"FW"},
        {"Sugimoto",11,"FW"},
        {"Kitagawa",13,"Fw"}
    };
    char n[40];
    scanf("%s",n);
    if(strcmp(n,"number")==0){
        for(int i=0;i<11;i++){
            printf("%d %s\n",p[i].number,p[i].name);
        }
    }
    else if(strcmp(n,"position")==0){
        for(int i=0;i<11;i++){
            printf("%s %s\n",p[i].position,p[i].name);
        }
    }
    else{
        printf("Error\n");
    }
    return 0;
}

