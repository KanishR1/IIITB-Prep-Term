#include<stdio.h>
int main()
{
enum petrolpumps {ZLINE=0, MPD, QPD};
enum parityTypes {noparity = 0, odd, even};
//enum petrolpumps using;
//enum parityTypes parity;
int packet = 0;

//printf("Size of the enum petrolpumps = %ld",sizeof());

for (int /*petrolpumps*/ using = ZLINE; using<=QPD; using++)
{
for (int /* parityTypes*/ parity= noparity; parity<=even; parity++)
{
fprintf(stdout,"\n Petrol Pumps = %d, Parity Types = %d",using,parity);
fprintf(stdout,"\n Packet before shifting left by 8 = %d",packet);
packet = using << 8;
fprintf(stdout,"\n Packet after left shifting with 8 = %d",packet);
packet = packet | parity;
fprintf(stdout, "\n Packet after performing or with parity = %d",packet);
/* Sending the data packet */
fprintf(stdout,"\n In send program- Sending the packet = %d\n",packet);
//fprintf(stdout,"%d\n",packet);
}
fprintf(stdout,"\n %d iteration over\n",using);
}
return 1;
}
