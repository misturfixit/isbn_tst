require "minitest/autorun"
require_relative "isbn.rb"


class Testnum < Minitest::Test
	#_____________________^^^_________________________#
	# def test_1eq_1
	# 	assert_equal(1, 1)	
	# end
	# #_____________________^^^_________________________#  derp
	# def test_length10
	#  	assert_equal(true, check_isbn("0471958697"))
	# end
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___# length =10
	# def test_not_10
	# 	assert_equal(false, check_isbn("12345678912"))
	# end
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#  length =11
	# def test_wth_hyphspace
	# 	assert_equal("877195869x", glosub("8-77  1-95-869-x"))
	# end	
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___# hyphens and spaces
	# def test_illegal_char
	# 	assert_equal("877195GILL869x", glosub("877195G IL--L869x"))
	# end	
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___# ill. char.
	# def test_more_illegals
	# 	assert_equal("877195869x", glosubrepl("877durp19-586 9x"))
	# end	
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___# more ill. char. 
	# def test_v_char
	#  	assert_equal(false, valid_char(["8","7","7","1","9","b","c","5","8","6","9","x"]))
 #  end
 #  #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#  valid chars.
	# def test_v_char0
	#   assert_equal(true, valid_char(["8","7","7","1","9","5","8","6","9","x"]))
	# end
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#  def test_math_val_isbn
	#  	assert_equal(true, mathpart(["0","4","7","1","9","5","8","6","9","7"]))
 #   end		
 #   #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#  def test_math_inval_isbn
	#  	assert_equal(false, mathpart(["0","4","7","1","3","5","8","6","9","7"]))
	#  end	
	#  #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#  def test_math_inval_isbn_w_x
	#  	assert_equal(true, mathpart(["8","7","7","1","9","5","8","6","9","x"]))
	#  end	
	#  #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
 #   def test_full_func
	#  	assert_equal(true, check_isbn("047-195-869-7"))
	#  end
	# #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
 #  def test_validity_fail
	# 	assert_equal(false, check_isbn("1-284-56789-x"))		
	# end
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	def test_val13
		assert_equal(true, valid_13("9780470059029"))
	end
  #___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
  def test_not_val13
		assert_equal(false, valid_13("97804g70059029"))
	end
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	def test_13_mathing
		assert_equal("0", mathing("9780471486480"))
	end	
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
  def test_13mathing_and
	 	assert_equal("9", mathing("9780470059029"))
	end
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#
	#___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___^^^___#







end
