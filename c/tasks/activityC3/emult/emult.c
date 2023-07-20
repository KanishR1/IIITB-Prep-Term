#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int down (int a, int b, int c, int d)
{
    if(a<1)
    return d;
    else if(c<=a)
    return down(a-c,b/2,c/2,d+b);
    else
    return down(a,b/2,c/2,d);
}

int up(int a, int b, int c){
    if(c<a)
    return up(a, 2*b, 2*c );
    else
    return down(a,b,c,0); 
}

int emult(int a, int b){
    return up(a,b,1);
} 


int main(int argc, int **argv){
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    int prod = emult(a,b);

    printf("Product of %d and %d = %d\n",a,b,prod);

    return 0;
}