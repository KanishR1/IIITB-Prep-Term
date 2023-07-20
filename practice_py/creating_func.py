def makeLine(slope,inttercept):
    def y(x):
        return slope * x + inttercept
    return y

def main():
    a = makeLine(5,-3)
    print(a(9))
    return 0

main()