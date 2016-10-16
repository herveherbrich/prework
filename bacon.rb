def taste(food)
  if food == "bacon"
    puts "Yummy!!! BACON!!!"
	elsif food == "spinach"
		puts "urgh spinach"
	else 
		puts "can i have some bacon on the side?"
	end
end

print "what do you want to eat?"
food = gets.chomp

taste(food)

