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
for(int i = atoi(argv[1]); i<=atoi(argv[2]); i = i+atoi(argv[3]))
printf("%d ",i);
printf("\n");
}
return 0;
}

