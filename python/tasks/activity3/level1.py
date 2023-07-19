from scanner import Scanner
import sys as s

def main():
    file_name = s.argv[1]
    fptr = Scanner(file_name)
    line = fptr.readline()
    while(len(line)!=0):
        print(line)
        line = fptr.readline()
    fptr.close()

main()