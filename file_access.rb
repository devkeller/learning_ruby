# Find out how to access files with and without code blocks.
# What is the benefit of the code block?

# Manually open and close file
File.write('output', 'And now we write without a code block')
  # without a code block you need to close the File manually
# File.write is shorthand for 
# File.open("<filename>", "w") { |f| f.write "And now ... code block" }
File.close()
# Note: without a code block you need to close the File manually!

# Automatically close a file by using a block
File.open("output", "w") { |file|
	file.puts "Code blocks automatically close() "}
	# using code blocks is safer and less error-prone
