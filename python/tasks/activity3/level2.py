
from scanner import Scanner
import sys as s

def main():
    file_name = s.argv[1]
    fptr = Scanner(file_name)
    line = fptr.readline()
    col = len(line.strip())
    row = 0
    while(len(line)!=0):
        row+=1
        line = fptr.readline()
    
    print(f"Rows = {row}, Columns = {col}")
    fptr.close()
main()