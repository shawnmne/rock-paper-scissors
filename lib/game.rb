require "pry"
require_relative "rule.rb"
require_relative "player.rb"

#this is a class that creates a game object
#
#+
#+
#+

class Game

	def player
		@player
	end	

	def player=(player)
		@player = player
	end






	#play_game method plays a game of rock paper scissors.  it calls
	#
	#+players is an array of 2 players
	#
	#
	def play_game(players)
		winner = take_turns(players)
		update_wins(winner, players)
		declare_winner(winner, players)
	end


	#take_turns method plays a game of rock paper scissors
	#
	#+players is an array of 2 players
	#
	#outcome is either 0 or 1 reflecting player 1 or player 2
	def take_turns(players)
		outcome = "tie"
		while outcome == "tie"
				players.each do |player|
					puts "\n#{player.name} it is your turn"
					player.move = player.move + player.enter_toss
				end
			outcome = Rule.new.determine_outcome_from_tosses(players[0].move[-1,1], players[1].move[-1, 1])
		end
		outcome
	end

	#update_wins method updates the number of wins of the winner by 1
	#
	#+winner is the either 0 or 1 depending on if it is player 1 or 2
	#+players is the array of players
	#
	#
	def update_wins(winner, players)
		players[winner].number_of_wins += 1
	end
	#declare_winner method outputs the winner to the screen
	#
	#+winner is determined from the play_ganme method 
	#+players is the array of players
	#
	def declare_winner(winner, players)
		puts "\n#{players[winner].name} has won\n"
	end

end	