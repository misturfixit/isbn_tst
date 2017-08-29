require "minitest/autorun"
require_relative "isbn.rb"


class TestArr < Minitest::Test

	def test_1_eq_1
		assert_equal(1, 1)	
	end

	def test_isbn
		assert_equal(true,check_isbn("1234567892"))
	end

	def test_not_10
		assert_equal(false,check_isbn("12345678912"))
	end

	def test_digits_match
		assert_equal(true,check_isbn("123456789x"))
	end
		
end
