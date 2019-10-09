module Countable
	class << self
		attr_accessor :methods_list
		@methods_list = Hash.new(0)
	end
	
	def count_invocations_of(sym)
		@methods_list.store(sym, 0)
		puts @methods_list
	end

	def invoked?(sym)
		@methods_list[sym] > 0 ? true : false
	end

	def invoked(sym)
		@methods_list[sym]
	end

	TracePoint.trace(:call) do |t|
		@methods_list.select { |k, v| k == t.method_id ? (@methods_list[t.method_id] += 1) : nil } 
	end


end

class Test

	include Countable

	def hi
		puts "Hiii"
	end

end


t = Test.new
t.count_invocations_of(:hi)
t.invoked?(:hi)
t.invoked(:hi)

t.hi

t.invoked(:hi)
