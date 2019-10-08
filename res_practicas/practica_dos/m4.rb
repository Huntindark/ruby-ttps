def characters_in(*args)
	args.map { |arg| arg.to_s.length }
end

puts characters_in(9, Time.now, 'Hola', {un: 'hash'}, :ruby)