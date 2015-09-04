class hole:
	def __init__(self,id,edges):
		self.id = id
		self.edges = edges
		self.left_parent = 0
		self.right_parent = 0
		self.left = 0
		self.right = 0
		self.left_child = 0
		self.right_child = 0
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
					move_set.append((self.left.id,self.right.id))
				else:
					move_set.append((self.right.id,self.left,id))
			if(self.left_parent.filled ^ self.right_child.filled):
				if(self.left_parent.filled):
					move_set.append((self.left_parent.id,self.right_child.id))
				else:
					move_set.append((self.right_child.id,self.left_parent.id))
			if(self.right_parent.filled ^ self.left_child.filled):
				if(self.right_parent.filled):
					move_set.append((self.right_parent.id,self.left_child.id))
				else:
					move_set.append((self.left_child.id,self.right_parent.id))
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
			self.holes.append(hole(i,[]))
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
				
		
	def jump(self,action):
		self.remove_peg(action[1])
		self.holes[action[0]].remove_peg()
		self.place_peg(action[2])
		return self


Game = board(0)
for Peg in Game.holes:
	print(Peg.filled)
	print("\n")



NewGame = Game.jump((5,2,0))
print("AFTER JUMP")
for Peg in NewGame.holes:
	print (Peg.filled)
