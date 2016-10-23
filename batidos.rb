
class Milkshake
	
	def initialize(ingredients, base_price)
		@base_price = base_price
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_milkshake
		total_price_of_milkshake = @base_price 
		
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end		
	
		return total_price_of_milkshake
	end		
end

class Ingredient
	attr_accessor :name, :price
		
	def initialize(name, price)
		@name = name
		@price = price
	end

class Shake_Shop	
	def initialize #creo un listado vacio
		@milkshakes = []
	end
	
	def add_milkshakes(elemento) #mando al listado vacio
		@milkshakes.push(elemento)
	end	

	def ticket
		total_ticket = 0

		@milkshakes.each do |milkshake|	
			total_ticket += milkshake.price_milkshake
		end

		return total_ticket
	end
	
end		




# aqui creo los objetos
new_milkshake = Milkshake.new("chocolate", 7)	
puts new_milkshake.inspect # para comprobar que esta todo en orden
secund_milkshake = Milkshake.new("fresa", 4)
banana = Ingredient.new("banana", 2)
vanilla = Ingredient.new("vanilly", 3)
chocolate = Ingredient.new("chocolate chips", 1)

new_milkshake.add_ingredient(banana)
new_milkshake.add_ingredient(vanilla)
new_milkshake.add_ingredient(chocolate)

secund_milkshake.add_ingredient(vanilla)

new_ticket = Shake_Shop.new
new_ticket.add_milkshakes(new_milkshake)
new_ticket.add_milkshakes(secund_milkshake)

puts new_ticket.ticket 
end
