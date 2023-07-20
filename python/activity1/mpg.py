def getInfo():
    no_miles = eval(input("\nThe number of miles driven per year (an integer): "))
    gasoline_cost = eval(input("\nThe cost (in dollars) of a gallon of gasoline (a real number) :"))
    modification_cost = eval(input("\nThe cost of the modification (a real number) :"))
    mpg_without_mod = eval(input("\nThe mpg before the modification (a real number) : "))
    mpg_with_mod = eval(input("\nThe mpg after the modification (a real number) : \n"))
    return no_miles,gasoline_cost,modification_cost,mpg_without_mod,mpg_with_mod

def getYearlyCost(miles_driven,cost_fuel,mpg):
    return (miles_driven*cost_fuel)/mpg
    

def BreakEvenPoint(cost_without, cost_with, mod_cost):
    yearly_saving = cost_without - cost_with
    return mod_cost/yearly_saving