require "pry"
require_relative "lib/player.rb"
#determine_outcome_from_tosses method determines who is the winner based on the rules of rock 
#   paper scissors
#
#+toss1 is the entry player 1 makes and can be a rock, paper, or scissor
#+toss2 is the entry player 2 makes and can be a rock, paper, or scissor
#+players is the array of players playing the game
#
#returns outcome determined by the rules of rock paper scissor
def determine_outcome_from_tosses(toss1, toss2, players)
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

#add_a_player creates a player object
#
#accepts the following variable to create the object
#+name player name
#
#returns a player object
def add_a_player
	puts"\nAdding a new player"
	print "\nWhat is your name? "
	name = gets.chomp
	Player.new(name) 
end	

#show_player method shows a player and stats for that player
def show_player(player)
	puts"\nShowing Players\n"
	puts"#{player.name} has made these moves '#{player.move}'"
	puts"#{player.name} has won #{player.number_of_wins} games"
end


#show_all_players method shows all players and their stats
#
#+arr accepts an array of players
#
#outputs all players and stats
def show_all_players(arr)
	arr.each do |player|
		show_player(player)
	end
end

#add_two_players method verifies that there are two players made to play a game 
#
#+arr is the array that contains the players and must conatain 2 players
#
#
def add_two_players(players)
	while players.length < 2
		players << add_a_player
	end
end

#play_game method plays a game of rock paper scissors
#
#+players is an array of 2 players
#
#outcome is a string declaring the winner of the game
def play_game(players)
	outcome = "tie"
	while outcome == "tie"
		puts "\n#{players[0].name} it is your turn"
		player1 = players[0].enter_toss
		players[0].move = players[0].move + player1
		puts "\n#{players[1].name} it is your turn"
		player2 = players[1].enter_toss
		players[1].move = players[1].move + player2
		outcome = determine_outcome_from_tosses(player1, player2, players)
	end
	outcome
end

#odeclare_winner method outputs the winner to the screen
#
#+winner is determined from the play_ganme method 
#+players is the array of players
#
def declare_winner(winner, players)
	puts "\n#{players[winner].name} has won\n"
	players[winner].number_of_wins += 1
end

choice = 9
players = []

puts "Welcome to rock-paper-scissor game"

while choice != 0
	puts "\n\n1 Add a player\n2 Review players\n3 Play a game\n0 Exit"
	print "\nPlease make a selection "
	choice = gets.chomp.to_i
 
	if choice == 1
		players << add_a_player
		show_player(players.last)
	
	elsif choice == 2 
	 	show_all_players(players)
	 	
	elsif choice == 3
		puts "Now playing a game\n"
		add_two_players(players)
	 	winner = play_game(players)
		declare_winner(winner, players)

	elsif choice == 0
		puts "\nGoodbye"
	else
		puts "\nInvalid choice selected"		 		
	end
end	


#puts "Player one it is your turn"
#player1 = enter_toss

#puts "\nPlayer two it is your turn"
#player2 = enter_toss
#puts "\n\n"
#outcome = determine_outcome_from_tosses(player1, player2)
#puts outcome
