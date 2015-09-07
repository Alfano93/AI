import copy

edges15 = ((-1,-1,-1,-1,2,3),(-1,1,-1,3,4,5),(1,-1,2,-1,5,6),
           (-1,2,-1,5,7,8),(2,3,4,6,8,9),(3,-1,5,-1,9,10),
           (-1,4,-1,8,11,12),(4,5,7,9,12,13),(5,6,8,10,13,14),
           (6,-1,9,-1,14,15),(-1,7,-1,12,-1,-1),(7,8,11,13,-1,-1),
           (8,9,12,14,-1,-1),(9,10,13,15,-1,-1),(10,-1,14,-1,-1,-1))

class board15(object):
    def __init__(self,state,edges):
        self.pegs = state
        self.actions = []
        self.edges = edges

    def copy(self):
        return(board15(self.pegs.copy(),self.edges))

    def check_board(self):
        actions = []
        for peg in range(0,len(self.pegs)):
            edges = self.edges[peg]
            if(self.pegs[peg]):
                    if(not((edges[0] == -1) or (edges[5] == -1))):
                        if (self.pegs[edges[0]-1] ^ self.pegs[edges[5]-1]):
                            if (self.pegs[edges[0] -1]):
                                action = (peg + 1, edges[0], edges[5])
                                actions.append(action)
                            elif(self.pegs[edges[5]-1]):
                                action = (peg + 1, edges[5], edges[0])
                                actions.append(action)
                    if(not((edges[1] == -1) or (edges[4] == -1))):
                        if(self.pegs[edges[1]-1] ^ self.pegs[edges[4]-1]):
                            if(self.pegs[edges[1]-1]):
                                action = (peg + 1,edges[1],edges[4])
                                actions.append(action)
                            elif(self.pegs[edges[4]-1]):
                                action = (peg + 1,edges[4],edges[1])
                                actions.append(action)
                    if(not((edges[2] == -1) or (edges[3] == -1))):
                        if (self.pegs[edges[2]-1] ^ self.pegs[edges[3]-1]):
                            if(self.pegs[edges[2]-1]):
                                action = (peg + 1,edges[2],edges[3])
                                actions.append(action)
                            elif(self.pegs[edges[3]-1]):
                                action = (peg + 1,edges[3],edges[2])
                                actions.append(action)
        return actions

    def jump(self,action):
        if(action == -1):
            return self
        else:
            state = self.pegs.copy()
            state[action[0] - 1] = False
            state[action[1] - 1] = False
            state[action[2] - 1] = True
            return board15(state,self.edges)

    def check_success(self):
        num_pegs = 0
        for check in range(0,15):
            if (self.pegs[check]):
                num_pegs += 1
        if(num_pegs == 1 and len(self.check_board()) == 0):
            return True
        else:
            print(num_pegs)
            return False
    
    def print_board(self):
        print("     " + str(self.pegs[0]) + "     ")
        print("    " + str(self.pegs[1]) + " " + str(self.pegs[2]) + "    ")
        print("   " + str(self.pegs[3]) + " " + str(self.pegs[4]) + " " + str(self.pegs[5]) + "   ")
        print("  " + str(self.pegs[6]) + " " + str(self.pegs[7]) + " " + str(self.pegs[8]) + " " + str(self.pegs[9]) +"  ")
        print(" " + str(self.pegs[10]) + " " + str(self.pegs[11]) + " " + str(self.pegs[12]) + " " + str(self.pegs[13]) + " " + str(self.pegs[14]) + " " )

    

class child_node(object):
    def __init__(self,board,parent):
        self.state = board.copy()
        self.parent = parent
        self.action = board.check_board()
        
        #self.cost = parent.cost + 1
    def copy(self):
        return (child_node(self.state.copy(),self.parent))

def BFS(initial_game):
    num_sol = 0
    node = child_node(initial_game,[])
    frontier = []
    explored = []
    frontier.append(node)
    while frontier:
        current = frontier.pop(0).copy()
        current.state.print_board()
        explored.append(current)
        #print(current.action)
        for action in current.action:
            #print("CURRENT \n")
            #current.state.print_board()
            #print(action)
            child =  child_node(current.state.jump(action),action)
            #print("CHILD \n")
            if current.state.pegs == child.state.pegs:
                print ("LOTS OF PROBLEMS!")
            #child.state.print_board()
            #if child not in frontier and child not in explored:
            
            if child not in frontier and child not in explored:
                if child.state.check_success():
                    print("SUCCESS!")
                    child.state.print_board()
                    num_sol += 1
                else:
                    frontier.append(child)
                    
    #print("Failure")
    return num_sol
                   
        
            
                
        

initial = []
for i in range(15):
    initial.append(True)
initial[0] = False


game = board15(initial,edges15)
game.print_board()
already_played = []
print("Number of Solutions")
print(BFS(game))
      
