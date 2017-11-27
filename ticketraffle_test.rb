require "minitest/autorun"
require_relative "ticketraffle.rb"
class TestTicketRaffle < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_there_is_an_array_for_winning_numbers
		winner = [1234, 4567, 7890]
		my_ticket = 1234
		assert_equal(Array, winningNums(winner, my_ticket))
	end

	def test_assert_that_my_ticket_is_4_digits
		winner = [1234, 4567, 7890]
		my_ticket = 1234
		assert_equal(4, my_ticket_length(winner, my_ticket))
	end

	def test_assert_that_my_ticket_is_in_winners_array
		winner = [8789, 1105, 1987]
		my_ticket = 8789
		assert_equal("Winner!", ticket_search(winner, my_ticket))
	end

	def test_assert_that_my_ticket_is_a_losing_ticket
		winner = [8789, 1105, 1987]
		my_ticket = 8849
		assert_equal("Loser!", ticket_search(winner, my_ticket))
	end

	def test_assert_that_my_ticket_was_a_losing_ticket_but_close
		winner = [7463, 8892, 4001]
		my_ticket = 7363
		assert_equal("So Close!", ticket_search(winner, my_ticket))
	end

end