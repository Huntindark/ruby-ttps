def cuanto_falta(time = Time.new(Time.now.year, Time.now.month, Time.now.day, 24, 0, 0) )
	((time - Time.now) / 60).to_i.to_s

end	


puts "Faltan " + cuanto_falta + " minutos hasta el horario/mediaNoche"