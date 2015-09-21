import networkx as nx
import matplotlib.pyplot as plt

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
            val = minimax(node - action,False)
            bestValue = max(bestValue,val)
        return bestValue
    else:
        bestValue = float("inf")
        for action in actions(node):
            val = minimax(node - action,True)
            bestValue = min(bestValue,val)
        return bestValue

def max_decision(origin,G):
    val = []
    move = None
    for action in actions(origin):
        G.add_node(origin - action)
        G.add_edge(origin,origin-action)
        val.append(minimax(origin - action,False))
    for i in range(len(val)):
        value = val[i]
        if value == 1:
            move = i+1
    if move == None:
       move = 1
    return move

def min_decision(origin,G):
    val = []
    move = None
    for action in actions(origin):
        G.add_node(origin - action)
        G.add_edge(origin,origin-action)
        val.append(minimax(origin - action,True))
    for i in range(len(val)):
        print val[i]
        value = val[i]
        if value != 1:
            move = i+1
    if move == None:
       move = 1
    return move

origin = 7
G = nx.DiGraph()

while(origin > 0):
    print("max turn")
    decision = max_decision(origin,G)
    value = minimax(origin,True)
    print (decision,value)
    if (value == -float("inf")):
        print("min wins")
        break
    print("min turn")
    origin -= decision
    print("origin:"+str(origin)) 
    minD = min_decision(origin-decision,G)
    min_val = minimax(origin,False)
    if min_val == float('inf'):
        print("max wins")
        break

    print(minD,min_val) 
    origin -= minD
    print("origin:"+str(origin))

nx.draw_networkx(G)
plt.savefig("graph.jpeg")
