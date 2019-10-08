class Vehicle

	attr_accessor :key, :status

	def initialize 
		@key = false
		@status = "Off"
	end

	def ignite
		@key == true ? self.turn_on : puts("Insert key to ignite the Vehicle")
	end
	def insertKey
		@key = true
	end
	def on 
		@status = "On"
	end
	def inform
		puts "Vehicle ignited"
	end
	def turn_on
		self.on
		self.inform
		
	end
end

class Car < Vehicle
	
	attr_accessor :handBreak, :shift

	def initialize
		super
		@handBreak = true
		@shift = 0
	end

	def inform
		puts "car ignited"
	end

	def ignite
		(@key and not @handBreak and @shift == 0) ? self.turn_on : puts("Check yo shit bruh") 
	end

	def removeBreak
		@handBreak = false
	end
end

class Motorbike < Vehicle

	attr_accessor :kick

	def initialize
		@kick = false
	end


end

class Boat < Vehicle

end


auto = Car.new
auto.removeBreak
auto.insertKey
auto.ignite

puts "Sin terminar por paja"