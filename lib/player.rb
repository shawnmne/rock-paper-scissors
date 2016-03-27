require "pry"


#this is a class that creates a player object
#
#+name is the name of the player
#+move is the move the player has made
#+number_of_wins is the number of wins the player has

class Player

	attr_accessor :name, :move, :number_of_wins

	def initialize(name, move = "", number_of_wins = 0)
		@move = move
		@name = name
		@number_of_wins = number_of_wins
	end

	#enter_toss method allows player to enter a toss 
	#
	#
	#returns toss as a "r" for rock, "s" for scissor, "p" for paper.
	def enter_toss
		toss =nil	
		while toss != "r" && toss != "s" && toss != "p"
			print "\nPlease enter 'r' for rock, 's' for scissor, 'p' for paper. "
			toss = gets.chomp
		end
		toss
	end

	#last_move method returns the last character from the move string
	#
	#
	def last_move
		move[-1, 1]
	end

end

