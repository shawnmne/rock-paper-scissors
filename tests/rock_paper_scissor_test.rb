require "test_helper"
require_relative "../lib/rock_paper_scissor.rb"

class RockPaperScissorTest < Minitest::Test


	#test if both players enter same toss
	def test_both_players_toss_same
		result = determine_outcome_from_tosses("r", "r")
		assert_equal("tie", result)
	end

	#test if player 1 should win
	def test_player1_should_win
		result = determine_outcome_from_tosses("r", "s")
		assert_equal("player 1 wins", result)
	end

	#test if player 2 should win
	def test_player2_should_win
		result = determine_outcome_from_tosses("s", "r")
		assert_equal("player 2 wins", result)
	end
end