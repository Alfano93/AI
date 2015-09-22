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
            val = minimax((node - action),False)
            new_node = ((node-action),val)
            bestValue = max(bestValue,val)
            G.add_node(new_node,Label = str(nx.utils.generate_unique_node()))
            G.add_edge(node,new_node)
        return bestValue
    else:
        bestValue = float("inf")
        for action in actions(node):
            val = minimax((node - action),True)
            new_node = ((node-action))
            G.add_node(new_node,Label= str(nx.utils.generate_unique_node()))
            G.add_edge(node,new_node)
            bestValue = min(bestValue,val)
        return bestValue

def max_decision(origin,G):
    values = []
    moves = []
    G.add_node(origin)
    for action in actions(origin):
        val = minimax(origin - action,True)
        new_node = ((origin - action),val)
        G.add_node(new_node, Label=str(nx.utils.generate_unique_node()))
        G.add_edge(origin,new_node)
        values.append(val)
    for i in range(len(values)):
        value = values[i]
        if value == 1:
            moves.append(i+1)
            break
    if len(moves)==0:
       moves.append(1)
    bestMove = -float("inf")
    for move in moves:
        bestMove = max(bestMove,move)
    return move

def min_decision(origin,G):
    values = []
    moves = []
    G.add_node(origin,Label = str(origin))
    for action in actions(origin):
        val = minimax(origin - action,False)
        new_node = ((origin - action),val)
        G.add_node(new_node,Label = str(nx.utils.generate_unique_node()))
        G.add_edge(origin,new_node)
        values.append(val)
        for i in range(len(values)):
            value = values[i]
            if value == -1:
                moves.append(i+1)
    if len(moves) == 0:
       moves.append(1)
    bestMove = float("inf")
    for move in moves:
        bestMove = min(bestMove,move)
    return move

origin = 19
G = nx.DiGraph()

while(origin > 0):
    print("max turn")
    decision = max_decision((origin),G)
    print("max move:"+str(decision))
    if (origin == 1):
        print("min wins")
        break
    origin -= decision
    print("min turn")
    minD = min_decision((origin),G)
    if (origin == 1):
        print("max wins")
        break
    print("min_move:"+str(minD)) 
    origin -= minD

pos = nx.circular_layout(G,dim = 2, scale = 15)
#nx.draw_networkx_labels(G,pos,labels)
nx.draw_networkx(G,pos)
print("Number of edges: " + str(len(G.edges())))
plt.savefig("graph19_1.jpeg")
