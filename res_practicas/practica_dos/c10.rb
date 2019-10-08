module Reverso
	

	def di_tcejb
		self.object_id.to_s.reverse
	end
	
	def ssalc
		self.name.reverse
	end

end

class Time 
	extend Reverso
end

puts Time.di_tcejb
puts Time.ssalc