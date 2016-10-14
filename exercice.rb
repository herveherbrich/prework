puts "What is the source file?"
source_file = gets.chomp

puts "What is the name of the destination file?"
destination_file_name = gets.chomp

if source_file == "source1"
	source_file_contents = IO.read("source1.txt")
else
	source_file_contents = IO.read("source2.txt")	
end

IO.write("#{destination_file_name}.txt", source_file_contents)
	
