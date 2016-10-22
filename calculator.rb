def pedir_numeros
	numeros = []
	print "dame un numero ---> "
	numeros << gets.chomp.to_i

	print "dame otro numero ---> "
	numeros << gets.chomp.to_i

	return numeros
end

def pedir_operacion
	operacion = 0
	while (operacion < 1) || (operacion > 4)
	puts "elige una opcion ---> "
	puts "1 : sumar"
	puts "2 : restar"
	puts "3 : multiplicar"
	puts "4 : dividir"
	operacion = gets.chomp.to_i
	end

	return operacion
end

def calculadora(nums,operacion)
	num1 = nums[0]
	num2 = nums[1]
	if operacion == 1
		puts "#{num1} + #{num2} ---> #{num1 + num2}"
	elsif operacion == 2
		puts "#{num1} - #{num2} ---> #{num1 - num2}"
	elsif operacion == 3
		puts "#{num1} x #{num2} ---> #{num1 * num2}"
	elsif operacion == 4
		puts "#{num1} : #{num2} ---> #{num1 / num2}"
	end

end	
				
calculadora(pedir_numeros,pedir_operacion)


