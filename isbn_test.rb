require "minitest/autorun"
require_relative "isbn.rb"


class Testnum < Minitest::Test
	#______________________________________________#
	def test_1eq_1
		assert_equal(1, 1)	
	end
	#______________________________________________#  derp
	# def test_length10
	#  	assert_equal(true,check_isbn("8771958690"))
	# end
	#______________________________________________#  length =10
	def test_not_10
		assert_equal(false,check_isbn("12345678912"))
	end
	#______________________________________________#  length =11
	def test_illegal_char
		assert_equal("877195GILL869x", glosub("877195G IL--L869x"))
	end	
	#______________________________________________#  ill. char.
	def test_wth_hyphspace
		assert_equal("877195869x", glosub("8-77  1-95-869-x"))
	end	
	#______________________________________________#  hyphens and spaces
	def test_more_illegals
		assert_equal("877195869x", glosubrepl("877durp19-586 9x"))
	end	
	#______________________________________________#  more ill. char. 
	def test_v_char
		assert_equal(false, valid_char(["8","7","7","1","9","b","c","5","8","6","9","x"]))
	end
	#______________________________________________#  w
	def test_v_char0
		assert_equal(true, valid_char(["8","7","7","1","9","5","8","6","9","x"]))
	end
	#______________________________________________#
	def test_mathof_val_isbn
		assert_equal(true, mathpart(["0","4","7","1","9","5","8","6","9","7"]))
	end		
  #______________________________________________#	
	def test_math_inval_isbn
		assert_equal(false,mathpart(["0","4","7","1","3","5","8","6","9","7"]))
	end	
	#______________________________________________#

	# def test_validity_fail
	# 	assert_equal(false,check_isbn("1-234-56789-x"))		
	# end
	#______________________________________________#
	
	#______________________________________________#
	#______________________________________________#
end
