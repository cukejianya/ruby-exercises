filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)
puts "Now I'm going to ask you for three lines."

print "line 1: "
line_1 = $stdin.gets.chomp
print "line 2: "
line_2 = $stdin.gets.chomp
print "line 3: "
line_3 = $stdin.gets.chomp

puts "I'm going to write these to the file."


target.write(line_1);
target.write("\n");
target.write(line_2);
target.write("\n");
target.write(line_3);
target.write("\n");

puts "And finally, we close it."
target.close