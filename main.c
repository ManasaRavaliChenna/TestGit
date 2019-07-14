#include<stdio.h>
#include "arithematic.h"
int main(int argc, char *argv[])
{
	int a,b;
	if(argc == 1 || argc == 2)
	{
		printf("Enter 2 operands for performing arithematic operations\nextitng\n");
		return 0;
	}
	sscanf(argv[1], "%d", &a);
	sscanf(argv[2], "%d", &b);
	printf("%d %d\n", a, b);
	printf("In main.cpp\n");
	printf("%d+%d = %d\n", a,b,add(a,b) );
	printf("%d-%d = %d\n", a,b,sub(a,b) );
	printf("%d*%d = %d\n", a,b,mul(a,b) );
	return 0;
}
