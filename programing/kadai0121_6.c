//AJG24080 今場智哉
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

struct z {
    float x;
    float y;
};

int main(void) {
    struct z c, d;
    scanf("%f %f", &c.x, &c.y);
    scanf("%f %f", &d.x, &d.y);  
    float d;
    d = sqrt(pow(c.x - d.x, 2) + pow(c.y - d.y, 2));   
    printf("The distance: %f\n", d);  
    return 0;
}
