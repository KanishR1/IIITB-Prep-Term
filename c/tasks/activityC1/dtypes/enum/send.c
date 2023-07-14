#include<stdio.h>
int main()
{
enum petrolpumps {ZLINE=0, MPD, QPD};
enum parityTypes {noparity = 0, odd, even};
//enum petrolpumps using= ZLINE;
//enum parityTypes parity = noparity;
int packet = 0;
/* Forming data packets */

for(int using = ZLINE; using<=QPD; using++)
{
for(int parity = noparity; parity<=even; parity++)
{
packet = using << 8;
packet = packet | parity;
/* Sending the data packet */
fprintf(stderr,"In send program- Sending the packet\n");
fprintf(stdout,"%d\n",packet);
}
}
return 1;
}
