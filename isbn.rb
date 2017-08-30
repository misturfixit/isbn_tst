def check_isbn(isbn)
	arr = isbn.split(//)

		if arr.size == 10
			if check_key(arr) == 1
				doo_it = mathpart(arr)
				if doo_it == arr[-1]
					true
				else
					false
				end		
			else
				false
			end			
		elsif arr.size == 13
			else		
				false
		end
end	 	 
#---_____________---_____________---_____________---#
def glosub(string_isbn)
	updtstr	= string_isbn.gsub!(/[- " "]/, "")
end
#---_____________---_____________---_____________---#
def glosubrepl(string_isbn)
p	"#{string_isbn} wheres my numberrr!!!!!!!!!!!!"
	replstring	= string_isbn.gsub!(/[^x0-9]/, "")
p	"#{string_isbn} Heres my numberrr!!!!!!!!!!!!!!"
string_isbn
end	
#---_____________---_____________---_____________---#


def check_key(arr)
	keys = ["1","2","3","4","5","6","7","8","9","x"]
		keys.each do |x|
			arr.delete()	
		end		
 	  if arr == []	
	 		1
  	else		
			2
	  end		
	p "#{arr} arrr is herre!!!!ARRRR" 
	arr
end
#---_____________---_____________---_____________---#
def mathpart(arr)
	cownter = 1
	holder = []
		9.times do
			multp = arr[cownter-1].to_i * cownter
			holder << multp
		cownter += 1
		end

	totes = holder.sum
	chektotes = totes%11
	p "#{chektotes} wheee!!!@@@!!!hereitis!! "

end	