#Que devuelve la siguiente comparacion, y porque?

puts "La comparacion 'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id devolvera false ya que ambos strings son generados en el momento que se llaman y no referencian el mismo obj, por lo que su object id sera distinto"

puts 'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id

