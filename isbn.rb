def check_isbn(isbn)
#	isbn.gsub!(/[^0-9A-Za-z]/, "")
	arr = isbn.split(//)

		if arr.size == 10
			
			true
		else
			false
		end

end	 	 



def check_for_integers

	array = ["1","2","3","4","5","6","7","8","9","x"]
end