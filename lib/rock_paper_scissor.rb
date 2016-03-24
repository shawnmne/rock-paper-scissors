require "pry"

#determine_outcome_from_tosses method determines who is the winner based on the rules of rock 
#   paper scissors
#
#+toss1 is the entry player 1 makes and can be a rock, paper, or scissor
#+toss2 is the entry player 2 makes and can be a rock, paper, or scissor
#
#returns outcome determined by the rules of rock paper scissor
def determine_outcome_from_tosses(toss1, toss2)
	outcome = "happy dance"
	if toss1 == "r" && toss2 == "r" ||
		 toss1 == "p" && toss2 == "p" ||
		 toss1 == "s" && toss2 == "s" 
		outcome = "tie"

	elsif toss1 == "r" && toss2 == "s" ||
				toss1 == "p" && toss2 == "r" ||
				toss1 == "s" && toss2 == "p"
		outcome = "player 1 wins"
	
	elsif toss2 == "r" && toss1 == "s" ||
				toss2 == "p" && toss1 == "r" ||
				toss2 == "s" && toss1 == "p"
		outcome = "player 2 wins"				
	
	end
	outcome
end

binding.pry
