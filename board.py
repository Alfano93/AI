import copy

edges15 = ((-1,-1,-1,-1,2,3),(-1,1,-1,3,4,5),(1,-1,2,-1,5,6),
           (-1,2,-1,5,7,8),(2,3,4,6,8,9),(3,-1,5,-1,9,10),
           (-1,4,-1,8,11,12),(4,5,7,9,12,13),(5,6,8,10,13,14),
           (6,-1,9,-1,14,15),(-1,7,-1,12,-1,-1),(7,8,11,13,-1,-1),
           (8,9,12,14,-1,-1),(9,10,13,15,-1,-1),(10,-1,14,-1,-1,-1))

edges21 = ((-1,-1,-1,-1,2,3),(-1,1,-1,3,4,5),(1,-1,2,-1,5,6),
           (-1,2,-1,5,7,8),(2,3,4,6,8,9),(3,-1,5,-1,9,10),
           (-1,4,-1,8,11,12),(4,5,7,9,12,13),(5,6,8,10,13,14),
           (6,-1,9,-1,14,15),(-1,7,-1,12,16,17),(7,8,11,13,17,18),
           (8,9,12,14,18,19),(9,10,13,15,19,20),(10,-1,14,-1,20,21),
           (-1,11,-1,17,-1,-1),(11,12,16,18,-1,-1),(12,13,17,19,-1,-1),
           (13,14,18,20,-1,-1),(14,15,19,21,-1,-1),(15,-1,20,-1,-1,-1))

class board21(object):
    def __init__(self,state,edges):
        self.pegs = state
        self.actions = []
        self.edges = edges
        self.num_pegs = 0

    def copy(self):
        return(board21(self.pegs.copy(),self.edges))

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
            return board21(state,self.edges)

    def check_success(self):
        num_pegs = 0
        for check in range(0,21):
            if (self.pegs[check]):
                num_pegs += 1
        if(num_pegs == 1 and len(self.check_board()) == 0):
            if(self.pegs[0] or self.pegs[15] or self.pegs[20]):
                return(True,True)
            else:
                return (True,False)
        else:
            self.num_pegs = num_pegs
            return (False,False)
    
    def print_board(self):
        print("      " + str(self.pegs[0]) + "      ")
        print("     " + str(self.pegs[1]) + " " + str(self.pegs[2]) + "     ")
        print("    " + str(self.pegs[3]) + " " + str(self.pegs[4]) + " " + str(self.pegs[5]) + "    ")
        print("   " + str(self.pegs[6]) + " " + str(self.pegs[7]) + " " + str(self.pegs[8]) + " " + str(self.pegs[9]) +"   ")
        print("  " + str(self.pegs[10]) + " " + str(self.pegs[11]) + " " + str(self.pegs[12]) + " " + str(self.pegs[13]) + " " + str(self.pegs[14]) + "  " )
        print(" " + str(self.pegs[15])+" "+str(self.pegs[16])+" "+str(self.pegs[17])+" "+str(self.pegs[18])+" "+str(self.pegs[19])+" "+str(self.pegs[20]) + " ")

class board15(object):
    def __init__(self,state,edges):
        self.pegs = state
        self.actions = []
        self.edges = edges
        self.num_pegs = 14

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
            if(self.pegs[0] or self.pegs[10] or self.pegs[14]):
                return (True,True)
            else:
                return (True,False)
        else:
            self.num_pegs = num_pegs
            return (False,False)    
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
        
        
    def copy(self):
        return (child_node(self.state.copy(),self.parent))

def BFS(initial_game):
    num_sol = 0
    corner = 0
    current_amount = 0
    node = child_node(initial_game,[])
    frontier = []
    explored = []
    solutions = []
    frontier.append(node)
    while frontier:
        current = frontier.pop(0).copy() 
        explored.append(current)
        for action in current.action:
            child =  child_node(current.state.jump(action),action)
            test = True
            for check in frontier:
                if (child.state.pegs == check.state.pegs):
                   test = False
                   break
            for check2 in explored:
                if (child.state.pegs == check2.state.pegs):
                   test = False
                   break 
            if test:
                success = child.state.check_success()
                if success[0] == True:
                    unique_test = True
                    for unique_check in solutions:
                        if (child.state.pegs == unique_check.pegs):
                            unique_test = False
                            break
                    if unique_test:
                        num_sol += 1
                        if(success[1] == True):
                            corner += 1
                        solutions.append(child.state)

                elif len(child.state.check_board()) == 0 :
                    continue
                else:
                    if(current_amount != child.state.num_pegs):
                        current_amount = child.state.num_pegs
                        #print("Current:" + str(current_amount))

                    frontier.append(child)
                    
    return (num_sol,corner,solutions)
                   
        
            
                
        

initial15 = []
for i in range(15):
    initial15.append(True)
initial15[0] = False

initial21 = []
for i in range(21):
    initial21.append(True)
initial21[0] = False

game15 = board15(initial15,edges15)
#game15.print_board()

game21 = board21(initial21,edges21)
#game21.print_board()


print("Calculating the 15 hole game")
result15 = BFS(game15)
print("Number of successful sequences: "+ str(result15[0]))
print("Number of unique solutions: " + str(len(result15[2])))
print("Number of corner solutions: " + str(result15[1]))

print("Calculating the 21 hole game")
result21 = BFS(game21)
print("Number of successful sequences: " + str(result21[0]))
print("Number of unique solutions: " + (len(result21[2])))
print("Number of corner solutions: " + (str(result21[1])))




      
