class hole:
	def __init__(self,tag,edges):
		self.tag = tag
		self.edges = edges
		self.left_parent = 999
		self.right_parent = 999
		self.left = 999
		self.right = 999
		self.left_child = 999
		self.right_child = 999
		self.filled = True
		self.can_remove = False		

	
	def remove_peg(self):
		self.filled = False

	def place_peg(self):
		self.filled = True
	
	def check_for_move(self):
		move_set = []
		if (self.filled):
			if(not(self.left == 999 or self.right == 999)):
				if(self.left.filled ^ self.right.filled):
					if(self.left.filled):
						move_set.append((self.tag,self.left.tag,self.right.tag))
					else:
						move_set.append((self.tag,self.right.tag,self.left.tag))
			if(not(self.left_parent == 999 or self.right_child == 999)):
				if(self.left_parent.filled ^ self.right_child.filled):
					if(self.left_parent.filled):
						move_set.append((self.tag,self.left_parent.tag,self.right_child.tag))
					else:
						move_set.append((self.tag,self.right_child.tag,self.left_parent.tag))
			if(not(self.right_parent == 999 or self.left_child == 999)):
				if(self.right_parent.filled ^ self.left_child.filled):
					if(self.right_parent.filled):
						move_set.append((self.tag,self.right_parent.tag,self.left_child.tag))
					else:
						move_set.append((self.tag,self.left_child.tag,self.right_parent.tag))
		if(len(move_set) != 0):
			self.can_remove = True
		else:
			self.can_remove = False

		return (move_set)
class board:

	def __init__(self,empty_hole):
		self.num_holes = 15
		self.num_pegs = 14
		self.empty_hole = empty_hole
		self.holes = []
		self.move_set = []
		for i in range(15):
			self.holes.append(hole(i+1,[]))
		self.holes[empty_hole].filled = False
		print("Num Holes: "+ str(len(self.holes)))
	
	def remove_peg(self,peg):
		self.holes[peg].filled = False


	def place_peg(self,peg):
		self.holes[peg].filled = True

	def check_board(self):
		self.move_set = []
		self.num_pegs = 0
		for Peg in self.holes:
			if (Peg.filled):
				self.num_pegs += 1
				moves = Peg.check_for_move()
				for move in moves:
					self.move_set.append(move)
			else:
				continue
	#	print(self.move_set)
				
		
	def jump(self,action):
		next_game = self
#		print(action[0], action[1], action[2])
		next_game.remove_peg(action[1]-1)
		next_game.holes[action[0]-1].remove_peg()
		next_game.place_peg(action[2]-1)
		next_game.check_board()
		print("Num pegs left:" + str(next_game.num_pegs))
		next_game.print_game()
		print("possible moves: ", next_game.move_set)
		return next_game

	def print_game(self):
		print("     " + str(self.holes[0].filled) + "     ")
		print("    " + str(self.holes[1].filled) + " "+ str(self.holes[2].filled) +"   ")
		print("  " + str(self.holes[3].filled) + " " + str(self.holes[4].filled) + " " + str(self.holes[5].filled) + "  ")
		print(" " + str(self.holes[6].filled) + " " + str(self.holes[7].filled) + " " + str(self.holes[8].filled) + " " + str(self.holes[9].filled) + " ")
		print(str(self.holes[10].filled) + " " + str(self.holes[11].filled) + " " + str(self.holes[12].filled) + " " + str(self.holes[13].filled) + " " +str(self.holes[14].filled))

# Game = board(0)
# for Peg in Game.holes:
#	print(Peg.filled)
#	print("\n")



# NewGame = Game.jump((5,2,0))
# print("AFTER JUMP")
# for Peg in NewGame.holes:
#	print (Peg.filled)

