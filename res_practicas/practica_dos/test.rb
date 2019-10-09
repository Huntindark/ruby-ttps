module Countable

	attr_accessor :methods_list

=begin
		def add
			puts @methods_list
			@methods_list[:invento] = 5
			
		end
=end
		def Countable.included(mod)
			puts "been included"
			@methods_list = Hash.new
		end

end

class Test

	include Countable

	puts @methods_list

	def hi
		puts "Hiii"
	end

end


t = Test.new
#t.add
p t.methods_list