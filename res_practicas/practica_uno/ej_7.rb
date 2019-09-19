# Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá
# las siguientes operaciones sobre el string:
# Imprimilo con sus caracteres en orden inverso.
# Eliminá los espacios en blanco que contenga.
# Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
# Cambiá las vocales por números (a por 4, e por 3, i por 1, o por 0, u por 6)

puts "String invertido".reverse
puts "String with whitespace gsub".gsub(/\s+/, "")
puts "String with whitespace delete".delete(' ')
puts "String with whitespace strip".strip
puts "String to ascii".bytes
puts "String vowels to numbers abstemious ABSTEMIOUS".gsub(/[aA+]/, "4").gsub(/[eE+]/, "3").gsub(/[iI+]/, "1").gsub(/[oO+]/, "0").gsub(/[uU+]/, "6")