require "test_helper"
require_relative "../lib/rock_paper_scissor.rb"

class RockPaperScissorTest < Minitest::Test


	#test if both players enter same toss
	def test_both_players_toss_same
		result = determine_outcome_from_tosses("r", "r")
		assert_equal("tie", result)
	end
end