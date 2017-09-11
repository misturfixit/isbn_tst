def check_isbn(isbn)
	stripped = glosub(isbn)
	
		if stripped.length == 10
			arr = stripped#.split(//) 
				 if valid_char(arr) == true
				 	doo_it = mathpart(arr.split(//))
				 else
				 	false
				 end			
		elsif stripped.length == 13
			arr = stripped#.split(//)
				if valid_13(arr) == true
					do_eet = mathing(arr)
				else		
				false
				end	
#p "#{gitt_er}.$%.%$%.$.$%$"		
		end
end	 	 
#---_____________---_____________---_____________---#
  def glosub(string_isbn)
 	updtstr	= string_isbn.gsub(/[- " "]/, "")
  #p "#{updtstr} whhhhhis this it????"
  end

#---_____________---_____________---_____________---#
def glosubrepl(string_isbn)
#p	"#{string_isbn} wheres my numberrr!!!!!!!!!!!!"
	restring	= string_isbn.gsub!(/[^x0-9]/, "")
#p	"#{string_isbn} Heres my numberrr!!!!!!!!!!!!!!"
string_isbn
# restring
end	
#---_____________---_____________---_____________---#
def valid_char(arr)
	tst_arr = arr.split(//)
	invalid_arr = []
	keys = ["0","1","2","3","4","5","6","7","8","9","x","X"]
		 	tst_arr.each do |i|
				if keys.include?(i)

				else
		 			invalid_arr << i
		 		end	
		 	end
	  if invalid_arr == []
	 		true
  	else		
			false
	  end		
end
#---_____________---_____________---_____________---#
def valid_13(arr)
	tst_arr = arr.split(//)
	inv_arr = []
	keyz = ["0","1","2","3","4","5","6","7","8","9"]
#p "#{arr} 13arr@@@ is @@@herre@@@!!!!ARgg"		
		tst_arr.each do |i|
			if keyz.include?(i)

			else 
				inv_arr << i
			end
		end
#p "#{inv_arr} INV*&*&___arrr is herre!!SNARFFF!!"		
	if inv_arr == []
		true
	else
		false
	end
end				
#---_____________---_____________---_____________---#
def mathpart(arr)
	last = arr.slice!(-1)
		if arr.include?("x") || arr.include?("X")
			false
		else
		arr << last
	cownter = 1
	holder = []
		9.times do
			multp = arr[cownter-1].to_i * cownter
			holder << multp
		cownter += 1
		end
	totes = holder.sum
	chektotes = totes%11
		if arr[9] == "x"
			 arr[9] = "10"
		elsif arr[9] =="X"
				arr[9] = "10"
		end	 
		 arr[9] == chektotes.to_s
		end
end	
#---_____________---_____________---_____________---#
#---_____________---_____________---_____________---#
def mathing(string)
	cownter = 1
	#arr.split(//)
	holder = []
		12.times do
			if cownter%2 == 0
				multp = string[cownter-1].to_i * 3
				holder << multp
			else 
				multp = string[cownter-1].to_i * 1
				holder << multp
			end
			cownter += 1		
		end	
#p "#{arr.class} whatsss innn herrree"		
	totes = holder.sum	
	this = totes % 10
	that = 10 - this
	chektotes = that % 10

#arr.class
	string[12] == chektotes.to_s
end

#---_____________---_____________---_____________---#

