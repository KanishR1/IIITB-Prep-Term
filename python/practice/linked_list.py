

def NodeCreate(value,next): #This is a constructor
    return [value,next]

def NodeValue(n):
    return n[0]

def NodeNext(n):
    return n[1]

def NodeSetValue(n,value):
    n[0]=value
    return

def NodeSetNext(n,next):
    n[1] = next
    return

def main():
    a = NodeCreate(3,None)
    b = NodeCreate(4,None)
    NodeSetValue(a,"two")
    NodeSetNext(a,b)
    print("b's value through a is",NodeValue(NodeNext(a)))
    NodeSetNext(b,NodeCreate(6,None))
    print(a)

main()