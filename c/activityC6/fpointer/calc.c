#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

typedef float (*Operation)(int, int);

float add(int a,int b)
{
    return a+b;
}

float subtract(int a,int b)
{
    return a-b;
}


float multiply(int a,int b)
{
    return a*b;
}


float division(int a,int b)
{
    return a/b;
}


int main(int argc, char **argv)
{
    int num1,num2;
    char op;
    if(argc<4)
        printf("Invalid number of arguments");
    else{
        num1 = atoi(argv[1]);
        num2 = atoi(argv[3]);
        op = *argv[2];
        
        Operation fptr;

        switch (op)
        {
        case '+' : fptr=add;break;
        case '-' : fptr=subtract;break;
        case '*' : fptr=multiply;break;
        case '/' : fptr=division;break;
        }
        float result = fptr(num1,num2);
        if(fptr!=division){
        printf("%d %c %d = %d\n",num1,op,num2,(int)result);}
        else
        printf("%d %c %d = %f\n",num1,op,num2,result);
    }
    return 0;
}