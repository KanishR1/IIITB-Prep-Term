#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<limits.h>

int main(int argc, char **argv)
{
    char line[6];
    int r,c;
    char* val;
    long i,j;
    r = c = __INT_MAX__;
    if(argc<2){
        printf("Invalid number of arguments");
    }
    else {
        FILE *fptr;
        //printf("%s",argv[1]);
        fptr = fopen(argv[1],"r");
        if(fptr == NULL){
            printf("File not exists");
            exit(0);
        }
        fscanf(fptr,"%[^\n]\n",line);
        if(r == __INT_MAX__ && c == __INT_MAX__){
                r = atoi(&line[0]);
                c = atoi(&line[2]);
        }
        //printf("r = %d, c= %d",r,c);
        char **arr = (char**)malloc(r*sizeof(char*));
        for (i = 0; i < r; i++) {
            arr[i] = (char*)malloc(c * sizeof(char));
        }     
        while(fscanf(fptr,"%[^\n]\n",line)==1){
            
                i = atoi(&line[0]);
                j = atoi(&line[2]);
                val = &line[4];
                if(!strcmp(val,"@"))
                    arr[i][j] = ' ';
                else
                    arr[i][j] = line[4];

            }
            fclose(fptr);
            for(i=0;i<r;i++)
            {
                printf("\n");
                for(j=0;j<c;j++)
                printf("%c ",arr[i][j]);
            }
            printf("\n");
            free(arr);
        }

        


    return 0;
}