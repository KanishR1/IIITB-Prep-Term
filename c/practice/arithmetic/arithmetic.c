#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>

int main(int argc, char **argv)
{
    u_int32_t a = 0x12345678;
    u_int16_t mask = 0x00f0;
 
    printf("Promoted mask:\t%#010x\n"
           "Value:\t\t%#x\n"
           "Setting bits:\t%#x\n"
           "Clearing bits:\t%#x\n"
           "Selecting bits:\t%#010x\n"
           , mask
           , a
           , a | mask
           , a & ~mask
           , a & mask
    );
}


