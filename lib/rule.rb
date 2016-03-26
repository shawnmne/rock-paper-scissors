require "pry"


#this is a class that creates a rule object
#
#it only contains methods
#
#

class Rule






	#determine_outcome_from_tosses method determines who is the winner based on the rules of rock 
	#   paper scissors
	#
	#+toss1 is the entry player 1 makes and can be a rock, paper, or scissor
	#+toss2 is the entry player 2 makes and can be a rock, paper, or scissorß
	#
	#returns outcome, which will be 0 or 1 and is based on the
	def determine_outcome_from_tosses(toss1, toss2)
		if toss1 == toss2 
			outcome = "tie"

		elsif toss1 == "r" && toss2 == "s" ||
					toss1 == "p" && toss2 == "r" ||
					toss1 == "s" && toss2 == "p"
			outcome = 0
	
		elsif toss2 == "r" && toss1 == "s" ||
					toss2 == "p" && toss1 == "r" ||
					toss2 == "s" && toss1 == "p"
			outcome = 1				
	
		end
		outcome
	end

	
end