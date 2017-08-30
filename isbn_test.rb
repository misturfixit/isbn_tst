require "minitest/autorun"
require_relative "isbn.rb"


class Testnum < Minitest::Test
	#______________________________________________#
	def test_1eq_1
		assert_equal(1, 1)	
	end
	#______________________________________________#
	def test_isbn
		assert_equal(true,check_isbn("1234567892"))
	end
	#______________________________________________#
	def test_not_10
		assert_equal(false,check_isbn("12345678912"))
	end
	#______________________________________________#
	def test_digtnlettr_match
		assert_equal(true,check_isbn("123456789x"))
	end
	#______________________________________________#
	def test_wth_hyphspace
		assert_equal(true,check_isbn("12-345-6789-x"))
	end	
	#_________________________________________#
	def test_wth_x_____
		assert_equal(false,check_isbn("123-4-5b789-x"))
	end
	#______________________________________________#
	def test_wth_letternot_x
		assert_equal(false,check_isbn("123-4-56789-q"))
	end	
	#______________________________________________#
	def test_letter_wheritshuddnbe
		assert_equal(false,check_isbn("123-4-5b789-x"))
	end		
	#______________________________________________#	
	def test_validity_fail
	assert_equal(false,check_isbn("1-234-56789-x"))		
	end
	#______________________________________________#
	
	#______________________________________________#
	#______________________________________________#
	#______________________________________________#
	#______________________________________________#
	#______________________________________________#
end
