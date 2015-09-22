import networkx as nx
import matplotlib.pyplot as plt
import copy
def utility(node):
    return 1

def terminal(node):
    if node == 1:
        return True
    else:
        return False

def actions(node):
    moveSet = []
    if (node - 1 > 0):
        moveSet.append(1)
    if (node - 2 > 0):
        moveSet.append(2)
    if (node - 3 > 0):
        moveSet.append(3)
    return moveSet

def minimax(node,maximizingPlayer):
    if terminal(node):
        if maximizingPlayer:
            return 1
        else:
            return -1
    if maximizingPlayer:
        bestValue = -float("inf")
        for action in actions(node):
            new_node = ((node - action),nx.utils.generate_unique_node())
            G.add_node(new_node)
            G.add_edge(node,new_node)
            val = minimax((node - action),False)
            bestValue = max(bestValue,val)
        return bestValue
    else:
        bestValue = float("inf")
        for action in actions(node):
            val = minimax((node - action),True)
            new_node = ((node-action),nx.utils.generate_unique_node())
            G.add_node(new_node)
            G.add_edge(node,new_node)
            bestValue = min(bestValue,val)
        return bestValue

def max_decision(origin,G):
    #val = 0
    values = []
    move = None
    G.add_node(origin)
    for action in actions(origin):
        new_node = (origin - action , nx.utils.generate_unique_node())
        G.add_node(new_node)
        G.add_edge(origin,new_node)
        values.append(minimax(new_node[0],True))
        #values.append(val)
        #G.add_node(((origin - action),val))
        #G.add_edge((origin,val),((origin-action),val))
    for i in range(len(values)):
        value = values[i]
        if value == 1:
            move = i+1
            break
    if move == None:
       move = 1
    return move

def min_decision(origin,G):
    #val = 0
    values = []
    move = None
    G.add_node(origin)
    for action in actions(origin):
        new_node = (origin - action , nx.utils.generate_unique_node())
        G.add_node(new_node)
        G.add_edge(origin,new_node)
        values.append(minimax(new_node[0],False))
        #values.append(val)
        #G.add_node(((origin - action),val))
        #G.add_edge((origin,val),((origin-action),val))
        for i in range(len(values)):
            print values[i]
            value = values[i]
            if value == -1:
                move = i+1
    if move == None:
       move = 1
    return move

origin = 21
G = nx.DiGraph()
#G.add_node(origin)
while(origin > 0):
    print("max turn")
    decision = max_decision((origin),G)
    #value = minimax(origin,True)
    #print (decision,value)
    #if (value == -float("inf")):
    #    print("min wins")
    #    break
    print("max move:"+str(decision))
    if (origin == 1):
        print("min wins")
        break
    origin -= decision
    print("max_origin:"+str(origin))
    print("min turn")
    #origin -= decision
    minD = min_decision((origin),G)
    #min_val = minimax(origin,False)
    #if min_val == float('inf'):
    #    print("max wins")
    #    break
    if (origin == 1):
        print("max wins")
        break
    print("min_move:"+str(minD)) 
    origin -= minD
    print("min_origin:"+str(origin))

nx.draw(G)
print("Number of edges: " + str(len(G.edges())))
plt.savefig("graph.jpeg")
