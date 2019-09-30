def rot(aString, shift=13)
 aString.tr "A-Za-z", "#{(65 + shift).chr}-ZA-#{(64 + shift).chr}#{(97 + shift).chr}-za-#{(96 + shift).chr}"
end

puts rot("hola como va", 25)
