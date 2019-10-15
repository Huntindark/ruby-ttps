

module Opposite

	def opposite
		not self
	end

end

class FalseClass
	include Opposite
end

class TrueClass
	include Opposite
end

p false.opposite.opposite

