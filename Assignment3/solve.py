import expressions as expr
import math_fun as math
import eqparser as parser
import equationsimplier as eqsim
from collections import deque
import copy

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
    return substring


def break_up(postfix):
    sub_problems = []
    for i in range(len(postfix)):
        token = postfix[i]
        if token == '(':
            sub_problems.append(tokenize(postfix[i:len(postfix)]))
    return sub_problems

def BFS(node):
    queue = deque([node])
    output_a = []
    while len(queue)>0:
        current_node = queue.popleft()
        #output.append(current_node)
        #print(current_node.leaf)
        if len(current_node.children) != 0:
            if current_node.children[0] != None:
                queue.append(current_node.children[0])
            if current_node.children[1] != None:
                queue.append(current_node.children[1])
            output_a.append(str(current_node.children[0]) + str(current_node.leaf) + str(current_node.children[1]))
            #print(current_node.children[0])
            #print(current_node.children[1])
   # output = []
    #for i in range(2,len(output_a)-1):
     #   output[i] = math.like_terms(output_a[i])
    return output_a

def DFS(node):
    stack = deque([node])
    output = []
    while len(stack)>0:
        current_node = stack.pop()
        #output.append(current_node)
        #print(current_node.leaf)
        if len(current_node.children) != 0:
            if current_node.children[0] != None:
               stack.append(current_node.children[0])
            if current_node.children[1] != None:
               stack.append(current_node.children[1])
            output.append(str(current_node.children[0]) + str(current_node.leaf) + str(current_node.children[1]))
            print(current_node.children[0],current_node.children[1])
    #for i in range(1,len(output)):
    #    output[i] = math.like_terms(output[i])

    return output       

def valid_changes(array):
    valid = []
    for i in range(len(array)):
        possible_changes = expr.find_changes(str(array[i]))
        for j in range(len(possible_changes)):
            section = possible_changes[j]
            for k in range(len(section)):
                if len(section[1]) != 0:
                    part = section[1]
                    if len(part)>0:
                        for m in range(len(part)):
                           change = part[m]
                           if change[1] != []:
                               #print(change)
                               valid.append(change)
    output = []
    for element in array:
        element = element.replace(" ","")
        #print("element: "+str(element))
        for change in valid:
            #print("change: " + str(change))
            if element==change[1][0]:
               if not(change in output):
                  output.append(change)
               break
    for change in valid:
        if not(change in output):
            output.append(change)
    return output

def do_math(change):
    print("change: "+ str(change[0]) + str(change[1]))
    if change[0] == 'multiply':
        return str(math.multiply(change[1][0]))
    elif change[0] == "divide":
        return str(math.divide(change[1][0]))
    elif change[0] == "add":
        return str(math.add(change[1][0]))
    elif change[0] == "subtract":
        return str(math.sub(change[1][0]))
    elif change[0] == "var_mul":
        return str(math.var_multiply(change[1][0]))
    elif change[0] == "var_div":
        return str(math.var_divide(change[1][0]))
    elif change[0] == "var_add":
        return str(math.var_add(change[1][0]))
    elif change[0] == "var_sub":
        return str(math.var_sub(change[1][0]))
    else:
        print("not implemented yet")
        return None 



def simplify_expression(tree):
    BFSarray = BFS(tree)
    simplified = str(tree).replace(" ","")
    BFSarray.append(simplified)
   #simplified = math.like_terms(simplified)
    changes = valid_changes(BFSarray)
    #changes = expr.find_changes(simplified)
    #print("changes"+str(changes))
    if len(changes) == 0:
       #jumble = math.associative_jumble(str(tree))
       #print("jumble: " + str(jumble)) 
       return tree
    #print(changes[0])
    #print("change being made: " + str(changes[0][1]))
    replacement = do_math(changes[0])
    #print("replacement: " + str(replacement))
    simplified = simplified.replace(changes[0][1][0],replacement)
    #print("current: "+str(simplified))
    new_tree = eqsim.reparse(simplified)
    return simplify_expression(new_tree)

tree = eqsim.parse()

possible_matches = expr.look_for_match(str(tree))
possible_changes = expr.find_changes(str(tree))
#print("possible matches: " + str(possible_matches)) 

BFSarray = BFS(tree)
DFSarray = DFS(tree)

#print("BFS: " + str(BFSarray))
#print("DFS: " + str(DFSarray))


changeA = valid_changes(DFSarray)
changeB = valid_changes(BFSarray)
    
#print("A: " + str(changeA))
#print("B: " + str(changeB))
valid_moves = []
new_tree = simplify_expression(copy.copy(tree))
BFSarray = BFS(new_tree)
valid_moves = valid_changes(BFSarray)

#while True:
#    new_tree = simplify_expression(copy.copy(new_tree))
#    BFSarray = BFS(new_tree)
#    valid_moves = valid_changes(BFSarray)
#    print "valid"+str(valid_moves)
 


#space_test = str(tree).replace(" ","")

#math.like_terms(space_test)

print(str(new_tree))
