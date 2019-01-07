
```c
#include <stdio.h>
#include <stdlib.h>
int main()
{
	int a;
	a=1; //value of a in stack
	int *i;
	i = (int*)malloc(sizeof(int));
	*i=10; //value of i stored in heap
	free(i);
	i = (int*)malloc(20*sizeof(int));
}
```