[:upcase, :downcase, :capitalize, :swapcase].map do | meth|
"TTPS Ruby".send(meth)
end

puts "Lo que hace es aplicar reflection sobre el string TTPS Ruby y le manda los symbolos como mensajes contenidos en el bloque"