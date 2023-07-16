#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

void displayOptions()
{
    printf("\nSelect menu");
    printf("\n0x01: multiplexer");
    printf("\n0x02: demultiplexer");
    printf("\n0x04: encoding");
    printf("\n0x08: decoding");
    printf("\n0x10: dma");
    printf("\n0x20: rma");
    printf("\n0x40: updating-cache");
    printf("\n0x80: recent-memory-search\n");
    return;
}

void print_selection(int a)
{
    switch(a)
    {
        case 1 : printf("\n Multiplexer Selected\n");break;
        case 2 : printf("\n Demultiplexer Selected\n");break;
        case 4 : printf("\n Encoding Selected\n");break;
        case 8 : printf("\n Decoding Selected\n");break;
        case 16 : printf("\n DMA Selected\n");break;
        case 32 : printf("\n RMA Selected\n");break;
        case 64 : printf("\n Updating-Cache Selected\n");break;
        case 128 : printf("\n Recent Memory Search Selected\n");break;
    }
    return;
} 

int main(int argc , char **argv)
{
    int temp;
    if(argc<2){
        printf("Invalid number of arguments");
    }
    else {
        int num = atoi(argv[1]);
        if(num == 0)
        {
            displayOptions();
        }
        else{
        for(int i = 7 ; i >= 0 ;i--)
        {
            temp = (num & (1<<i));
            if(temp){
                //printf("%d\n", num&(1<<i) );
                print_selection(temp);
                num = num - temp;
            }
        }
        }
    }

    return 0;
}

