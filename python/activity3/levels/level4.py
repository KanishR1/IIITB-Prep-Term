
from scanner import Scanner
import sys as s

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
    fptr.close()

main()