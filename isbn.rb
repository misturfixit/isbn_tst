def check_isbn(isbn)
		pull_spaces	= glosubrepl(isbn) 
		if pull_spaces.length == 10
			 	arr = pull_spaces.split(//)
				 #p "#{arr} is this it????"
				 if valid_char(arr) == true
				 	 doo_it = mathpart(arr)
				 else
				 	false
				 end			
		elsif pull_spaces.size == 13
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
#p	"#{string_isbn} wheres my numberrr!!!!!!!!!!!!"
	restring	= string_isbn.gsub!(/[^x0-9]/, "")
#p	"#{string_isbn} Heres my numberrr!!!!!!!!!!!!!!"
string_isbn
restring
end	
#---_____________---_____________---_____________---#
def valid_char(arr)
	tst_arr = arr
	invalid_arr = []
	keys = ["0","1","2","3","4","5","6","7","8","9","x"]
	p "#{arr} arrr is herre!!!!ARRRR" 
		keys.each do |x|
 	  p "#{tst_arr} test___arrr is herre!!!!yyyyARRRRgggg"
			tst_arr.delete_if(x) != keys	
		end		
 	  if tst_arr == []	
	 		true
  	else		
			false
	  end		
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
	 	p "#{chektotes} whoooooo!!!@@@!!!hereitis!! "
		 arr[9] == chektotes.to_s
end	

#`Finished in 0.024260s, 82.4401 runs/s, 41.2201 assertions/s.
#Finished in 0.012813s, 156.0901 runs/s, 78.0450 assertions/s.

# "[\"0\", \"4\", \"7\", \"1\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] is this it????"
# "[\"0\", \"4\", \"7\", \"1\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"4\", \"7\", \"1\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"4\", \"7\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"4\", \"7\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"4\", \"7\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"7\", \"9\", \"5\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"7\", \"9\", \"8\", \"6\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"7\", \"9\", \"8\", \"9\", \"7\"] arrr is herre!!!!ARRRR"
# "[\"9\", \"8\", \"9\"] arrr is herre!!!!ARRRR"
# "[\"9\", \"9\"] arrr is herre!!!!ARRRR"
# "[] arrr is herre!!!!ARRRR"
# "[]herre da arrr"