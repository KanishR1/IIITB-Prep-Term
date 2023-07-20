#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>

int sqr(int x)
{
    return x*x;
}

int identity(int x)
{
    return x;
}




int prod(int m, int n, int(*fptr) (int x))
{
    if(m == n)
        return fptr(m);
    else
        return fptr(m)*prod(m+1,n,fptr);
}

int main(int argc, char **argv)
{
    int (*id)(int)=identity;
    int (*square)(int)=sqr;

    int val = atoi(argv[1]);

    printf("\nprod(1,5,&id) is %d",prod(1,val,id));
    printf("\nprod(1,5,&sqr) is %d\n",prod(1,val,square));

    return 0;
}