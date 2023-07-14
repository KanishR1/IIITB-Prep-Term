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
char ch = *argv[2];
switch(ch){
case '+'  : printf("%d\n",atoi(argv[1])+atoi(argv[3]));break;
case '-'  : printf("%d\n",atoi(argv[1])-atoi(argv[3]));break;
case '*'  : printf("%d\n",atoi(argv[1])*atoi(argv[3]));break;
case '/'  : printf("%f\n",atof(argv[1])/atof(argv[3]));break;
default : printf("Invalid Operator");
}
}
return 0;
}
