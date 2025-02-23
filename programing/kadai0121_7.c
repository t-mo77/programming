//AJG24080 今場智哉
#include <stdio.h>

int main(void)
{
	int i,j,yakusuu,sum;
    sum=0;

	for(i=1;i<=100;i++)
	{
		yakusuu=0;
		for(j=1;j<=i;j++)
		{
			if(i%j==0) yakusuu++;
		}

		if(yakusuu==2){
            printf("%d ",i);
            sum+=i;
        }
	}

	printf("\n");
    printf("sum: %d\n",sum);

	return 0;
}