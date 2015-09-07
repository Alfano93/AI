import Board

class state:

	def __init__(self,board):
		self.game_state = board
		self.actions = board.move_set
		self.num_pegs = board.num_pegs

	def check_success(self):
		if(self.num_pegs == 1):
			return(True)
		else:
			return(False)

	def check_failure(self):
		if(self.num_pegs != 1 and len(self.actions) == 0):
			return(True)
		else:
			return(False)
 				
