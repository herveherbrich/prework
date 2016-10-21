class Car
	attr_accessor :año, :color, :ruedas
	@@total_coches = 0

	def initialize(año, color, ruedas)
		@año = año
		@color = color
		@ruedas = ruedas
		@@total_coches += 1 
		return @@total_coches
	end
				
	def self.num_coches  
		puts "numero de coches : #{@@total_coches}"
	end
	
end	

car_herve = Car.new(2003, "gris", 4)
# car_herve.año = 2003 ESAS 3 LINEAS NO SON NECESARIAS AL PONERLO DENTRO DE CAR.NEW(..) 
# car_herve.color = "gris"
# car_herve.ruedas = 4
puts "el coche de Hervé : #{car_herve.año} - #{car_herve.color} - #{car_herve.ruedas}"

car_lourdes = Car.new(2008, "naranja", 5)
puts "el coche de Lourdes : #{car_lourdes.año} - #{car_lourdes.color} - #{car_lourdes.ruedas}"

car_lano = Car.new(2004, "negro", 5)
puts "el coche de Lano : #{car_lano.año} - #{car_lano.color} - #{car_lano.ruedas}"


Car.num_coches





