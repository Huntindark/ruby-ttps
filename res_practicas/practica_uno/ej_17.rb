def fibo
	a = Array.new
	f = 1
	s = 1 
	r = 0
	while r < 4000000
		r = s + f
		f = s
		s = r
		s % 2 == 0 ? a.insert(-1, s) : nil
	end
	a.sum
end



puts fibo
#fibo

#puts fibonacci 4