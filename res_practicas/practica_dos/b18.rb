def ejecutar_bloque *args
	begin
		yield *args
	rescue RuntimeError 
		puts "Algo salió mal..."
		:rt
	rescue NoMethodError => e
		puts "No encontré un metodo: #{e.message}"		
		:nm
	rescue
		puts "¡No se que hacer!"
		raise
	else
		puts "Entre a ok"
		:ok
	end
end

ejecutar_bloque {"Matias".hola}

ejecutar_bloque {"Matias".length}
=begin
ejecutar_bloque {1/0} 
=end
ejecutar_bloque {raise "Matias"}
