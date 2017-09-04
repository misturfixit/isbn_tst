def check_isbn(isbn)
	stripped = glosub(isbn)
	
p "#{stripped} sTrIpPed...!!IS this it????"
		if stripped.length == 10
			arr = stripped#.split(//) 
				 if valid_char(arr) == true
				 	 doo_it = mathpart(arr)
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
 	#p "#{string_isbn} whhhhhaass this it????"
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
	keys = ["0","1","2","3","4","5","6","7","8","9","x"]
#p "#{arr} arrr is herre!!!!ARRRR" 
		# keys.each do |x|
		 	tst_arr.each do |i|
				if keys.include?(i)

				else
		# 		if i != x
		 			invalid_arr << i
		 		end	
		 	end
		# end	
#p "#{invalid_arr} INVALID___arrr is herre!!!!yyyyARRRRgggg"
	  if invalid_arr == []
	 		true
  	else		
			false
	  end		
#p "#{arr} vereissa my ARRAYYYY???!?!?!?"
end
#---_____________---_____________---_____________---#
def valid_13(arr)
	tst_arr = arr.split(//)
	inv_arr = []
	keyz = ["0","1","2","3","4","5","6","7","8","9"]
p "#{arr} 13arr@@@ is @@@herre@@@!!!!ARgg"		
		tst_arr.each do |i|
			if keyz.include?(i)

			else 
				inv_arr << i
			end
		end
p "#{inv_arr} INV*&*&___arrr is herre!!SNARFFF!!"		
	if inv_arr == []
		true
	else
		false
	end
#p "#{arr} Wheers MMmy ARRAYYYY???!?!?!?$$$$$$$"	
end				
#---_____________---_____________---_____________---#
def mathpart(arr)
p	"#{arr}herre da arrr"
	cownter = 1
	holder = []
		9.times do
		#p	"#{arr[cownter-1]}heree isss the arr pos"
			multp = arr[cownter-1].to_i * cownter
			holder << multp
		cownter += 1
		end
	totes = holder.sum
#p "#{totes}heeerreeess totess!!!!!"
	chektotes = totes%11
#p "#{arr[9]} wheeeeeeeee!!!@@@!!!hereitis!! "
		if arr[9] == "x" 
			 arr[9] = "10"
		end	 
#p "#{chektotes} whoooooo!!!@@@!!!hereitis!! "
		 arr[9] == chektotes.to_s
end	
#---_____________---_____________---_____________---#
#---_____________---_____________---_____________---#
def mathing(arr)
	cownter = 1
	holder = []
		12.times do
			if cownter%2 == 0
				multp = arr[cownter-1].to_i * 3
				holder << multp
			else 
				multp = arr[cownter-1].to_i * 1
				holder << multp
			end
			cownter += 1		
		end	
p "#{holder} whatsss innn herrree"		
	totes = holder.sum	
	this = totes % 10
	that = 10 - this
	chektotes = that % 10
#p "#{chektotes} here is the TOTASLL"
	chektotes.to_s
end

#---_____________---_____________---_____________---#

