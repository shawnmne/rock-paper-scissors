require "pry"
require_relative "lib/player.rb"
require_relative "lib/game.rb"


#add_a_player creates a player object
#
#
#returns a player object
def add_a_player
	puts"\nAdding a new player"
	print "\nWhat is your name? "
	name = gets.chomp
	Player.new(name) 
end	

#show_player method shows a player and stats for that player
#
#+player is a single player
#
#
def show_player(player)
	puts"\nShowing Player and Stats\n"
	puts"#{player.name} has made these moves '#{player.move}'"
	puts"#{player.name} has won #{player.number_of_wins} games"
end


#show_all_players method shows all players and their stats
#
#+arr is an array of all players
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






#play_matches method plays anassigned number of matches determined by the 
#   variables matches
#
#+matches is the number of matches in the match
#+players is the array of players
#
#returns a call to the show all players method to show the current standings of the players
def play_matches(matches, players)
		i = 0
		while i < matches
			Game.new.play_game(players)
			i += 1
		end
		show_all_players(players)
end


choice = 9
players = []

puts "Welcome to rock-paper-scissor game"

while choice != 0
	puts "\n\n1 Review players\n2 Play a game\n3 Play a match\n4 Add a Player\n0 Exit"
	print "\nPlease make a selection "
	choice = gets.chomp.to_i
	
	if choice == 1 
	 	show_all_players(players)
	 	
	elsif choice == 2
		puts "\nNow playing a game\n"
		add_two_players(players)
		Game.new.play_game(players)

	elsif choice == 3
		puts "\nNow playing a match\n"
		add_two_players(players)
		print "How many games would you like in your match? "
		matches = gets.chomp.to_i
		play_matches(matches,players)



	elsif choice == 0
		puts "\nGoodbye"
	else
		puts "\nInvalid choice selected"		 		
	end
end	



