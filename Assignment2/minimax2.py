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

def factor(node,maxPlayer):
    factors = []
    if node % 2 != 0:
       factors.append(node % 2)
    n = (node-1)/2
    for i in range(0,n):
        factors.append(2)
    if ((len(factors) % 2 == 0) and (maxPlayer)):
        return 1
    elif ((len(factors) % 2 == 1) and not(maxPlayer)):
        return 1
    else:
        if len(factors) >= 4:
           twoCount = 0
           size = len(factors)
           for factor in factors:
               if factor == 2:
                  twoCount += 1
               if twoCount == 3:
                  factors.append(3)
                  factors.append(3)
                  factors.remove(2)
                  factors.remove(2)
                  factors.remove(2)
                  break
           if len(factors) % 2 == 0:
               if(maxPlayer):
                   return 1 
               else:
                   return 1
           else:
               if(maxPlayer):
                   return -1
               else:
                   return -1

def minimax(node,maximizingPlayer,depth,alpha,beta,G):
    if terminal(node):
        #print("Terminaled!")
        if maximizingPlayer:
            return 1
        else:
            return -1
    if depth == 0:
        #print("Factored!")
        return factor(node,maximizingPlayer)

    if maximizingPlayer:
        val = -float("inf")
        for action in actions(node):
            val = max(val,minimax(node - action,False, depth - 1, alpha,beta,G))
            alpha = max(alpha,val)
            if beta <= alpha:
                #print("alpha pruned")
                break
        return val
    else:
        val = float("inf")
        for action in actions(node):
            val = min(val,minimax(node - action,True,depth - 1,alpha,beta,G))
            beta = min(beta,val)
            if beta <= alpha:
                #print("beta pruned")
                break
        return val

def max_decision(origin,G,depth):
    val = 0
    values = []
    moves = []
    G.add_node((origin))
    for action in actions(origin):
	val=minimax(origin-action,True,depth,-float("inf"),float("inf"),G)
        new_node = ((origin-action),val)
        if val == 1:
           moves.append(action)
        values.append(val)
        G.add_node(new_node)
        G.add_edge(origin,new_node)
    for i in range(len(values)):
        value = values[i]
    if len(moves) == 0:
       moves.append(1)
    bestMove = -float("inf")
    print("max_moves:"+str(moves))
    for move in moves:
        bestMove = max(bestMove,move)
    return bestMove

def min_decision(origin,G,depth):
    val = 0
    values = []
    moves = [] 
    G.add_node((origin))
    for action in actions(origin):
        val = minimax(origin-action,False,depth,-float("inf"),float("inf"),G)
        new_node = (origin-action,val)
        if val == -1:
            moves.append(action)
        values.append(val)
        G.add_node(new_node)
        G.add_edge(origin,new_node)
    for i in range(len(values)):
        value = values[i]
    print(moves)
    if len(moves) == 0:
       moves.append(1)
    return min(moves)

origin = 19
depth = 1
G = nx.DiGraph()
while(origin > 0):
    #print("max turn")
    decision = max_decision((origin),G,depth)
    if (origin == 1):
       print("min wins")
       break
    origin -= decision
    print("origin_max:"+str(origin)) 
    #print("min turn")
    minD = min_decision((origin),G,depth)
    if (origin == 1):
        print("max wins")
        break
    origin -= minD
    print("origin_min:"+str(origin))

pos = nx.circular_layout(G,scale=5,dim=2)
nx.draw_networkx(G,pos)
print("Number of Edges: " +str(len(G.edges())))
plt.savefig("graph19_2.jpeg")
