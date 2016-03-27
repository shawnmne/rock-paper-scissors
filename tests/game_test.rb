require "test_helper"
require_relative "../lib/game.rb"

class GameTest < Minitest::Test

#test assigning a player to a game
	def test_assigning_player_to_a_game
		player = Player.new(name: "shawn", move: "f", number_of_wins: "10")
		game = Game.new
	
		game.player = player

		assert_equal(player, game.player)
	end

end	