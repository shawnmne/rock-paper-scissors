require "test_helper"
require_relative "../lib/rule.rb"

class RuleTest < Minitest::Test


	#test if both players enter same toss
	def test_both_players_toss_same
		result = Rule.new.determine_outcome_from_tosses("r", "r")
		assert_equal("tie", result)
	end

	#test if player 1 should win
	def test_player1_should_win
		result = Rule.new.determine_outcome_from_tosses("r", "s")
		assert_equal(0, result)
	end

	#test if player 2 should win
	def test_player2_should_win
		result = Rule.new.determine_outcome_from_tosses("s", "r")
		assert_equal(1, result)
	end

end