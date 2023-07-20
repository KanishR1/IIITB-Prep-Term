#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<math.h>

int *bundle3(int a,int b,int c)
{
int *bundle;
bundle = malloc(sizeof(bundle)*3);
bundle[0] = a;
bundle[1]= b;
bundle[2] = c;
for(int i=0;i<3;i++)
{
printf("The address of the %d location of the dynamically allocated mem in array = %ld",i,&bundle[i]);
printf("\n");
}
return bundle;
}

int main(int argc, char **argv)
{
int *p = bundle3(1,2,3);
for(int i=0;i<3;i=i+1)
{
printf("The address of the %d location in main() = %ld",i,&p[i]);
}
free(p);
return 0;
}
