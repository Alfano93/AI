import Board
import State


edges = ((0,0,0,0,2,3),(0,1,0,3,4,5),(1,0,2,0,5,6),(0,2,0,5,7,8),(2,3,4,6,8,9),
        (3,0,5,0,9,10),(0,4,0,8,11,12),(4,5,7,9,12,13),(5,6,8,10,13,14),
        (6,0,9,0,14,15),(0,7,0,12,0,0),(7,8,11,13,0,0),(8,9,12,14,0,0),
        (9,10,13,15,0,0),(10,0,14,0,0,0))


def setup(board, edges):
	i = 0
	for edge in edges:
		if(not(edge[0] == 0)):
			board.holes[i].left_parent = board.holes[edge[0]-1]
		if(not(edge[1] == 0)):
			board.holes[i].right_parent = board.holes[edge[1]-1]
		if(not(edge[2] == 0)):
			board.holes[i].left = board.holes[edge[2]-1]
		if(not(edge[3] == 0)): 
			board.holes[i].right = board.holes[edge[3]-1]
		if(not(edge[4] == 0)):
			board.holes[i].left_child = board.holes[edge[4]-1]
		if(not(edge[5] == 0)):
			board.holes[i].right_child = board.holes[edge[5]-1]
		i += 1


game = Board.board(0)

setup(game,edges)

game.check_board()

initial_state = State.state(game)

num_moves = 0

if(initial_state.check_success() == True):
	print("Already Successful...LOL this won't ever happen")
else:
	current_state = initial_state
	frontier = []
	frontier.append(current_state)
	explored = []
	solved = False
	while(True):
                if(len(frontier) == 0):
                        break
                else:
                        current_state = frontier.pop()
                        explored.append(current_state)
                        for action in current_state.actions:
                                print(current_state.actions)
                                next_state = State.state(current_state.game_state.jump(action))
                                #action = current_state.actions.pop(0)
                                #print("ACTION TO BE TAKEN")
                                #print(action)
			
                                #next_state = State.state(current_state.game_state.jump(action))
	
                                if(not(next_state in explored) or (next_state in frontier)):
                                        if(current_state.check_success()):
                                                print(current_state)
                                                print("Game Solved")
                                                solved = True
                                                break
                                        elif(current_state.check_failure()):
                                                print("Failed")
                                                num_moves += 1
                                        else:
                                                #frontier.insert(0,next_state)
                                                frontier.append(next_state)
                                                num_moves += 1
                        if(solved):
                                break

                if(solved):
                        print("SOLVED")
                else:
                        print(num_moves)
                        print("No Solution Found") 
