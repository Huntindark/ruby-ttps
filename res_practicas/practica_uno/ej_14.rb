def notacion_hexadecimal(anArray)
	#anArray.map! { |x| x.to_s(16)}
	a = "#"
	anArray.each do |spot|
		a += spot > 16 ? spot.to_s(16) : "0" + spot.to_s(16)
	end	
	a
end

def notacion_entera(anArray)
	anArray[0] + anArray[1]* 256 + anArray[2]*256*256
end

puts notacion_hexadecimal([00,128,255])
puts notacion_entera([0,128,255])