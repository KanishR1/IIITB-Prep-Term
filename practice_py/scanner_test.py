from scanner import *
#from scanner import Scanner
def main():
    s = Scanner("data")
    b = s.readtoken()
    i = s.readtoken()
    f = s.readtoken()
    str1 = s.readtoken()
    str2 = s.readtoken()
    t = s.readtoken()
    print("The type of",b,"is",type(b))
    print("The type of",i,"is",type(i))
    print("The type of",f,"is",type(f))
    print("The type of",str1,"is",type(str1))
    print("The type of",str2,"is",type(str2))
    print("The type of",t,"is",type(t))
    s.close()
    return 0
main()