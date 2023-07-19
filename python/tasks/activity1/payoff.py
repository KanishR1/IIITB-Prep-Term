from mpg import *
import math as m

def main():
    no_miles,gasoline_cost,modification_cost,mpg_without_mod,mpg_with_mod = getInfo()

    costWithout = getYearlyCost(no_miles,gasoline_cost,mpg_without_mod)
    print("Yearly cost without modification : ",costWithout)

    costWith = getYearlyCost(no_miles, gasoline_cost,mpg_with_mod)
    costWith = m.ceil(costWith*100)/100
    print("Yearly cost with modification : ",costWith)

    no_days = BreakEvenPoint(costWithout,costWith,modification_cost)
    
    #print(no_days)

    print()
    if(no_days<=0):
        print ("None")
    else:
        year = int(no_days)
        days = int((no_days-year)*365)
        if(year>1):
            if(days>0):
                print(f"{year} years and {days} days")
            else:
                print(f"{year} years")
        elif(year == 1):
            if(days>0):
                print(f"{year} year and {days} days")
            else:
                print(f"{year} year")
        else:
            if(days>0):
                print(f"{year} year and {days} days")
            else:
                print(f"{year} year")

main()