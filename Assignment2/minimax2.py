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
            #val = minimax(node - action,False,depth - 1,alpha,beta,G)
            new_node = ((node - action),nx.utils.generate_unique_node())
            G.add_node(new_node)
            G.add_edge(node,new_node)
            val = max(val,minimax(node - action,False, depth - 1, alpha,beta,G))
            #G.add_node(((node - action),val))
            #G.add_edge((node,val),((node - action),val))
            alpha = max(alpha,val)
            if beta <= alpha:
                #print("alpha pruned")
                continue
        #    G.add_node(((node - action),val))
        #    G.add_edge((node,val),((node - action),val))
        return val
    else:
        val = float("inf")
        for action in actions(node):
            #val = minimax(node - action,True,depth - 1,alpha,beta,G)
            new_node = ((node - action),nx.utils.generate_unique_node())
            G.add_node(new_node)
            G.add_edge(node,new_node)
            val = min(val,minimax(node - action,True,depth - 1,alpha,beta,G))
            #G.add_node(((node-action),val))
            #G.add_edge((node,val),((node-action),val))
            beta = min(beta,val)
            if beta <= alpha:
                #print("beta pruned")
                continue
        #    G.add_node(((node - action),val))
        #    G.add_edge((node,val),((node - action),val))
        return val

def max_decision(origin,G,depth):
    val = 0
    values = []
    moves = []
    G.add_node((origin))
    for action in actions(origin):
        #G.add_node(origin - action)
        #G.add_edge(origin,origin-action)
        new_node = (origin - action, nx.utils.generate_unique_node())
	val=minimax(origin-action,True,depth,-float("inf"),float("inf"),G)
        if val == 1:
           moves.append(action)
        values.append(val)
        G.add_node(new_node)
        G.add_edge(origin,new_node)
    for i in range(len(values)):
        value = values[i]
        #print(values)
        #if value == 1:
        #    moves.append(i+1) 
        #if value == -float("inf"):
        #    move = -float("inf")
        #    break
    if len(moves) == 0:
       moves.append(1)
    #print("max move:" + str(move))
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
        #G.add_node(origin - action)
        #G.add_edge(origin,origin-action)
        new_node = (origin-action,nx.utils.generate_unique_node())
        val = minimax(origin-action,False,depth,-float("inf"),float("inf"),G)
        if val == -1:
            moves.append(action)
        values.append(val)
        G.add_node(new_node)
        G.add_edge(origin,new_node)
    for i in range(len(values)):
        #print val[i]
        value = values[i]
        #if value == -1:
            #moves.append(i+1)
        #if value == float("inf"):
        #    move = float("inf")
        #    break
    print(moves)
    if len(moves) == 0:
       moves.append(1)
    #print("min move:" + str(move))
    return min(moves)

origin = 15 
depth = 1
G = nx.DiGraph()
#G.add_node(origin)
while(origin > 0):
    #print("max turn")
    decision = max_decision((origin),G,depth)
    #value = minimax(origin,True,3,G)
    #print (decision,value)
    #if (decision == -float("inf")):
    #    print("min wins")
    #    break
    if (origin == 1):
       print("min wins")
       break
    origin -= decision
    print("origin_max:"+str(origin)) 
    #print("min turn")
    minD = min_decision((origin),G,depth)
    #min_val = minimax(origin,False,3,G)
    #if minD == float('inf'):
    #    print("max wins")
    #    break
    if (origin == 1):
        print("max wins")
        break
    #print(minD,min_val) 
    origin -= minD
    print("origin_min:"+str(origin))

nx.draw(G)
print("Number of Edges: " +str(len(G.edges())))
plt.savefig("graph.jpeg")
