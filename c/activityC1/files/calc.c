#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<limits.h>

int main(int argc , char **argv)
{
    //char line[6];
    if(argc<2){
        printf("Invalid number of arguments");
    }
    else {
        //printf("%s", argv[1]);
        FILE *fptr = fopen(argv[1], "r");
        if(fptr == NULL){
            printf("\nFile not opened");
            exit(0);
        }
        char line[256];
        //int val1, val2;
        while (fscanf(fptr,"%[^\n]\n",line)==1)
        {
            //printf("%s",line);
            switch(line[2]){
                case '+'  : printf("%d\n",atoi(&line[0])+atoi(&line[4]));break;
                case '-'  : printf("%d\n",atoi(&line[0])-atoi(&line[4]));break;
                case '*'  : printf("%d\n",atoi(&line[0])*atoi(&line[4]));break;
                case '/'  : printf("%f\n",atof(&line[0])/atof(&line[4]));break;
                default : printf("Invalid Operator");
            }
            
        }
        fclose(fptr);
    }

    return 0;
}
