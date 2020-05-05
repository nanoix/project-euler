#include "stdio.h"

int main()
{

	int i;
	i = 0;
	int sum;
	sum = 0;
	while(i < 1000)
	{

		if(i % 3 == 0 || i % 5 == 0)
		{

			sum += i;
			
		}
		i += 1;

	}
	printf("%d\n",sum);
	return 0;
}

