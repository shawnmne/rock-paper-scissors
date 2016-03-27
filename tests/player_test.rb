require "test_helper"
require_relative "../lib/player.rb"

class PlayerTest < Minitest::Test

	#tests able to build an object of player
	def test_building_player_object
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		refute_nil(player)
	end

		#tests getter for name
	def test_name_getter
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		assert("shawn", player.name)
	end

	#tests setter for name
	def test_name_setter
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		player.name = "polly"
		assert_equal("polly", player.name)
	end

		#tests getter for move
	def test_move_getter
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		assert("f", player.move)
	end

	#tests setter for move
	def test_move_setter
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		player.move = "q"
		assert_equal("q", player.move)
	end

		#tests getter for number_of_wins
	def test_number_of_wins_getter
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		assert(10, player.number_of_wins)
	end

	#tests setter for number_of_wins
	def test_number_of_wins_setter
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		player.number_of_wins = 2
		assert_equal(2, player.number_of_wins)
	end

	#test for player last_move
	def test_last_move
		player = Player.new(name: "shawn", move: "abcdefg", number_of_wins: "10")
		assert("g", player.last_move)
	end

end