=begin Escribí una función que convierta a palabras la hora actual, dividiendo en los siguientes rangos los minutos:
Si el minuto está entre 0 y 10, debe decir "en punto", si el minuto está entre 11 y 20, debe decir "y cuarto", si el minuto está entre 21 y 34, debe decir "y media", si el minuto está entre 35 y 44, debe decir "menos veinticinco" (de la hora siguiente), si el minuto está entre 45 y 55, debe decir "menos cuarto" (de la hora siguiente), y si el minuto está entre 56 y 59, debe decir "casi las" (y la hora siguiente)

Tip: resolver utilizando rangos numéricos
=end

def en_palabras(aTime)
	case aTime.strftime("%M").to_i
		when 0..10
			puts "Son las " + aTime.hour.to_s + " en punto"
		when 11..20
			puts "Son las " + aTime.hour.to_s + " y cuarto"
		when 21..34
			puts "Son las " + aTime.hour.to_s + " y media"
		when 35..44
			puts "Son las " + (aTime.hour + 1).to_s + " menos veinticinto"
		when 45..55
			puts "Son las " + (aTime.hour + 1).to_s + " menos cuarto"
		when 56..59
			puts "Son casi las " + (aTime.hour + 1).to_s
	end
end

en_palabras(Time.now)