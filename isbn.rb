def check_isbn(isbn)
	isbn.gsub!(/[^0-9A-Za-z]/, "")
	arr = isbn.split(//)

		if arr.size == 10
				if check_key(arr) == 1
				true
				else
				false
				end			
		elsif arr.size == 13
			else		
			false
		end
end	 	 



def check_key(arr)
	keys = ["1","2","3","4","5","6","7","8","9","x"]
		keys.each do |x|
			arr.delete(x)	
		end		
 	  if arr == []	
	 		1
  	else		
			2
	  end		
	#p "#{arr} arrr is herre!!!!ARRRR" 
end