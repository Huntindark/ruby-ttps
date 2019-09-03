# Investigá y probá en un intérprete de Ruby cómo crear objetos de los siguientes tipos
# básicos usando literales y usando el constructor new (cuando sea posible):
# Arreglo (Array)
# Diccionario o hash (Hash)
# String (String)
# Símbolo (Symbol)

array = Array.new

dic = Hash.new

string = String.new

symbol = :text

puts "Para poder crear un array se puede utilizar tanto [] como Array.new"

puts "Para poder crear un hash se puede utilizar tanto {} como Hash.new, la ventaja del segundo siendo que se le puede agregar un valor default para toda solicitud que no exista"

puts "Para poder crear un string se puede utilizar tanto "" como String.new"

puts "Para poder crear un symbol hay que asignarle un symbol literal"