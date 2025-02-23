//AJG24080 今場智哉
#include <stdio.h>
#include <string.h>

struct Person {
    char name[40];
    int height;
    float weight;
    float bmi;
};

int main(void) {
    struct Person p[3] = {
        {"Bob", 158, 60, 24},
        {"Julia", 172, 68, 23},
        {"Steve", 152, 74, 32}
    };   
    int n = 3;
    for (int i = 0; i < n - 1; i++) {
        for (int j = n - 1; j > i; j--) {
            if (p[j - 1].height < p[j].height) {
                struct Person temp = p[j];
                p[j] = p[j - 1];
                p[j - 1] = temp;
            }
        }
    }
    for (int i = 0; i < n; i++) {
        printf("name:%s height:%d\n", p[i].name, p[i].height);
    }
    for (int i = 0; i < n - 1; i++) {
        for (int j = n - 1; j > i; j--) {
            if (p[j - 1].weight > p[j].weight) {
                struct Person temp = p[j];
                p[j] = p[j - 1];
                p[j - 1] = temp;
            }
        }
    }    
    for (int i = 0; i < n; i++) {
        printf("name:%s weight:%f\n", p[i].name, p[i].weight);}

    for (int i = 0; i < n - 1; i++) {
        for (int j = n - 1; j > i; j--) {
            if (p[j - 1].bmi < p[j].bmi) {
                struct Person temp = p[j];
                p[j] = p[j - 1];
                p[j - 1] = temp;
            }
        }
    }    
    for (int i = 0; i < n; i++) {
        printf("name:%s bmi:%f\n", p[i].name, p[i].bmi);}


    return 0;
}