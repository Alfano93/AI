def arithmetic(a,b,symbol):
    return_value = 0
    if symbol == '+':
        return_value = add(a,b)
    elif symbol == '-':
        return_value = subtract(a,b)
    elif symbol == '*':
        return_value = multiply(a,b)
    elif symbol == '/':
        return_value = divide(a,b)
    elif symbol == '^':
        return_value = exponent(a,b) #not implemented yet
    else:
        print("Not a valid symbol")
        return ""
    return return_value

def add(a,b):
    return a+b

def subtract(a,b):
    return a-b

def multiply(a,b):
    return a*b

def divide(a,b):
    return a/b

