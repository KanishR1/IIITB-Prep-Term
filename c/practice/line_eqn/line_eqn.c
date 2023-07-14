#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<math.h>

int main(int argc, char **argv)
{
int m = 6;
int x = 9;
int b = -12;
int y = m*x + b;
int z = m>b && x>m;
printf("y is %d\n",y);
printf("%d\n",z);
return 0;
}
