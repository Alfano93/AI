class hole:
	def __init__(self,tag,edges):
		self.tag = tag
		self.edges = edges
		self.left_parent = self
		self.right_parent = self
		self.left = self
		self.right = self
		self.left_child = self
		self.right_child = self
		self.filled = True
		self.can_remove = False
	
	def remove_peg(self):
		self.filled = False

	def place_peg(self):
		self.filled = True
	
	def check_for_move(self):
		move_set = []
		if (self.filled):
			if(self.left.filled ^ self.right.filled):
				if(self.left.filled):
					move_set.append((self.tag,self.left.tag,self.right.tag))
				else:
					move_set.append((self.tag,self.right.tag,self.left.tag))
			if(self.left_parent.filled ^ self.right_child.filled):
				if(self.left_parent.filled):
					move_set.append((self.tag,self.left_parent.tag,self.right_child.tag))
				else:
					move_set.append((self.tag,self.right_child.tag,self.left_parent.tag))
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
		print("Num Holes")
		print(len(self.holes))
	
	def remove_peg(self,peg):
		self.holes[peg].filled = False
		self.num_pegs -= 1

	def place_peg(self,peg):
		self.holes[peg].filled = True

	def check_board(self):
		for Peg in self.holes:
			if (Peg.filled):
				moves = Peg.check_for_move()
				for move in moves:
					self.move_set.append(move)
			else:
				continue
		print(self.move_set)
				
		
	def jump(self,action):
		self.remove_peg(action[1])
		self.holes[action[0]].remove_peg()
		self.place_peg(action[2])
		return self


# Game = board(0)
# for Peg in Game.holes:
#	print(Peg.filled)
#	print("\n")



# NewGame = Game.jump((5,2,0))
# print("AFTER JUMP")
# for Peg in NewGame.holes:
#	print (Peg.filled)

