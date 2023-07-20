#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main(int argc, char**argv)
{
if(argc<2)
printf("Arguments not received by the calculator");
else
{
int i = atoi(argv[1]);
while(i<=atoi(argv[2]))
{
printf("%d ",i);
i = i+atoi(argv[3]);
}
printf("\n");
}
return 0;
}

