import equationsimplier as eqs
import eqparser as parse
import ariithmetic as arith
equation = eqs.parse()

print(equation[0])
print(equation[1])
print(str(equation))
print(equation)

num_paren = 0
substring = ""
postfix = str(equation[0]).strip()
infix = str(equation[1]).strip()

#sub_problems = []

print (postfix)
print (infix)

def seperate_left_right(expression):
    print("expression[0]:" + str(expression[0]))
    print("expression[1]:" + str(expression[1]))     
    print("expression[2]:" + str(expression[2]))
    if not(expression[0] == '(' and expression[1] == '='):
        print("seperate_left_right function requires postfix notation")
        return ("","")
    else:
        num_paren = 0
        posisition = 0
        for i in range(3,len(expression)):
            char = expression[i]
            if (char == '('):
                num_paren += 1
            elif (char == ')'):
                num_paren -= 1
            else:
                pass
            if (num_paren == 0):
                posisition = i+1
                break
        return(expression[3:posisition],expression[posisition+1:len(expression)-1])

#for token in postfix:
def tokenize(expression):
    substring = ""
    i = 0
    num_paren = 0
    while True:
        token = expression[i]
        if token == '(':
           num_paren += 1
           substring += token
        elif token == ')':
           num_paren -= 1
           substring += token
        else:
           substring += token
        
        if num_paren == 0:
           break
        i += 1
        #substring += token
    return substring

def break_up(postfix):
    sub_problems = []
    for i in range(len(postfix)):
        token = postfix[i]
        if token == '(':
            sub_problems.append(tokenize(postfix[i:len(postfix)]))     
    return sub_problems

def combine_integers(problem):
#for problem in sub_problems:
#if(len(problem) == 7):
#num_of_ints = 0
#for token in proble,
    new_string = []
    try:
        a = int(problem[3]) #MUST EXPAND TO MULTIDIGIT NUMBERS
        b = int(problem[5]) #MUST EXPAND TO MULTIDIGIT NUMBERS
        symbol = problem[1]
        print("a:" + str(a) + " b:" + str(b) + " symbol:" + symbol)
        result = arith.arithmetic(a,b,symbol)
        print("result of math: " + str(result))
        return (str(result))
        #num_of_ints += 1
    except TypeError:
        return problem
       #print("Not an int:" + token)
    except ValueError:
        return problem      
       #print("Not valid value:" + token)
       #print("number of ints in subproblem:"+str(num_of_ints))
    return new_string

def integer_problems(sub_problems):
    new_subtree = []
    for i in range(len(sub_problems)):
        problem = sub_problems[i]
        print(problem)
        result = combine_integers(problem) 
        if result != sub_problems[i]:
            new_subtree.append(result)
            for j in range(len(new_subtree)):
               new_subtree[j] =  new_subtree[j].replace(str(problem),str(result))
        else:
            new_subtree.append(problem)
    return new_subtree


tree = seperate_left_right(postfix)
#print(tree)

left_side = tree[0]
right_side = tree[1]

print("left side: " + str(left_side))
print("right side: " + str(right_side))

#changes = break_up(left_side)
sub_left = break_up(left_side)
sub_right = break_up(right_side)

print("left subtrees: " + str(sub_left))
print("right subtrees: " + str(sub_right))
#print("Before combine: " + str(changes))

new_set = integer_problems(sub_left)
print("After combine: " + str(new_set))

sub_left = new_set

print(str(sub_left)+" = " + str(right_side))
#print(changes[1][1])
#print(len(changes[1]))
#print(changes)

