import networkx as nx
import matplotlib.pyplot as plt
import copy

G = nx.DiGraph()
root = str(7)
G.add_node(str(root))
lables = []

previous = (0,0)

def max_value(state,node):
    if terminal_test(state):
        return max_utility(state)
    max_value = 0
    for action in [1,2,3] :
        if(state - action >= 1):
            
            lables.append(str(state-action))
            value = min_value(state-action,copy.copy(str(state-action)))
            G.add_node(str(state-action), label=str(state-action),node_color='r')
            e = [(node,str(state-action),value)]
            G.add_weighted_edges_from(e)
            if (max_value < value):
                max_value = value
    return max_value

def min_value(state,node):
    if terminal_test(state):
        return min_utility(state)
    min_value = 0
    for action in [1,2,3] :
        if(state - action >= 1): 
            value = max_value(state-action,copy.copy(str(state-action)))
            G.add_node(str(state-action), label=str(state-action),node_color='b')
            e = [(node,str(state-action),value)]
            G.add_weighted_edges_from(e)
            if (min_value < value):
                min_value = value
    
    return min_value           

def terminal_test(state):
    if(state == 1):
        return True
    else:
        return False

def max_utility(state):
    return 1

def min_utility(state):
    return -1

max_value(7,root)
nx.draw_networkx(G,pos = nx.spring_layout(G,k=6,iterations=100))


plt.savefig("graph.png")
print("Number of edges:"+str(len(G.edges())))
