
from scanner import Scanner
import sys as s

def generation(r,c,lst):
    tmplst=[[None for i in range(c)] for j in range(r)]
    for i in range(r):
        for j in range(c):
            if(lst[i][j].isalpha()):
                tmplst[i][j]= chr(ord(lst[i][j]) - 1)
            else:
                tmplst[i][j] = lst[i][j]
    return tmplst


def display(r,c,lst):
    for i in range(r):
        print()
        for j in range(c):
            print(lst[i][j],end="")
    print()


def main():
    file_name = s.argv[1]
    no_gen = int(s.argv[2])
    fptr = Scanner(file_name)

    tmplst=[]
    lst=[]

    charac = fptr.readrawchar()
  
    while(charac!=""):
        if(charac == "\n"):
            lst.append(tmplst)
            tmplst=[]

        else:
            tmplst+=charac
            #print(tmplst)
        charac = fptr.readrawchar()
    
    row = len(lst)
    col = len(lst[0])
    for i in range(no_gen):
        print(f"Generation {i+1}")
        display(row,col,lst)
        print()
        if(i!=no_gen-1):
            lst=generation(row,col,lst)
        
    fptr.close()

main()