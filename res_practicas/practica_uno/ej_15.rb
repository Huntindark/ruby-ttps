def sum_until(number)
	(1...number).select { |i| i%3==0 || i%5==0 }.inject(:+)
end

puts sum_until
puts "En realidad es el 16, mala mia"
