def check_isbn(isbn)
	arr = isbn.split(//)

		if arr.size == 10
			if valid_char(arr) == true
					 glosubrepl(arr)

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


def valid_char(arr)
	keys = ["1","2","3","4","5","6","7","8","9","x"]
		keys.each do |x|
			arr.delete(x)	
		end		
 	  if arr == []	
	 		true
  	else		
			false
	  end		
	#p "#{arr} arrr is herre!!!!ARRRR" 
end
#---_____________---_____________---_____________---#
def mathpart(arr)
		p	"#{arr}herre da arrr"
	cownter = 1
	holder = []
		9.times do
		p	"#{arr[cownter-1]}heree isss the arr pos"
			multp = arr[cownter-1].to_i * cownter
			holder << multp
		cownter += 1
		end

	totes = holder.sum
	p "#{totes}heeerreeess totess!!!!!"
	chektotes = totes%11
	p "#{arr[9]} wheee!!!@@@!!!hereitis!! "
		if arr[9] == "x" 
			 arr[9] = "10"
		end	 
	 	p "#{chektotes} wheee!!!@@@!!!hereitis!! "
		 arr[9] == chektotes.to_s
			
end	