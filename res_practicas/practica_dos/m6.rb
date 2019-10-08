# Tira un dado virtual de 6 caras
def tirar_dado
rand 1..6
end
# Mueve la ficha de un jugador tantos casilleros como indique el dado en un tablero virtual de 40 posiciones.
# Si no se recibe la cantidad de casilleros, aprovecho el valor por defecto para ese parámetro para evitar tener q
# llamar a #tirar_dado dentro del cuerpo del método.
def mover_ficha(fichas, jugador, casilleros = tirar_dado)
fichas[jugador] += casilleros
if fichas[jugador] > 40
puts "Ganó #{jugador}!!"
true
else
puts "#{jugador} ahora está en el casillero #{fichas[jugador]}"
false
end
end
posiciones = { azul: 0, rojo: 0, verde: 0 }
finalizado = false
until finalizado
[:azul, :rojo, :verde].shuffle.each do |jugador|
finalizado = mover_ficha(posiciones, jugador)
if finalizado
	break
end
end
end

puts "Ej 6 al llamar al arreglo para shuffle each, se deben llamar los symbolos, no strings -- // -- al asignar el valor en finalizado tras la ejecucion, y el shuffle each se repite 3 veces, si el ultimo de los tres no gana el juego continua hasta que el mismo lo logre"
puts "Ej 7 ahora funciona"