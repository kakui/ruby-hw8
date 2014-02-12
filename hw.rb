#block of text
my_lorem = "Lorem Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque tempor sapien. Morbi scelerisque augue sed nisl tristique, ac congue ligula congue. Fusce vel porttitor augue, et semper neque. Nam imperdiet purus non pellentesque tincidunt. Etiam condimentum orci non turpis adipiscing, eu ornare nisl vehicula. Duis eros dolor, vehicula id elementum a, vestibulum id quam. Pellentesque volutpat varius ante. Phasellus sapien lectus, porta id orci et, condimentum posuere metus. Curabitur vel eros ac libero dignissim scelerisque vitae sed mi. Donec euismod lacus nulla, sed tristique urna semper a. Phasellus iaculis nulla sit amet purus mollis, sit amet mollis lacus volutpat. Vestibulum tincidunt libero orci, in volutpat magna tempor pretium. Vestibulum fermentum laoreet lectus ac tincidunt. Curabitur eget enim non nisi porta venenatis quis scelerisque leo"

# {:Lorem => 1}

def any_text(some_string)
	dictionary = {}
	some_string.split(" ").each do |word|
	#Put Lorem into dictionary, which is an empty hash, with value of 1
		if dictionary[word]
			dictionary[word] += 1
		else
			dictionary[word] = 1
		end
	end
	dictionary
end

puts any_text(my_lorem)
puts any_text("this is more test. this is sparta")


#find the one that has been used the most

def most_used(some_hash)
	reference = some_hash.first
	some_hash.each do |compare|
		if reference[0] > compare[0]
			reference = compare
		end
	end
	reference
end

my_hash = any_text(my_lorem)

puts most_used(my_hash)





#This stuff is old. Real HW above#

# some_hash={}
# some_hash["this"]= 4
# some_hash["that"]= 3
# some_hash["these"]= 2
# some_hash["those"]= 1

# puts some_hash


=begin
#Block of Text
block_text = "this this this this that that that these these those"

puts block_text.split(" ").each do |word|
	word = {}
	word["this"] = 4
	word["that"] = 3
	word["these"] = 2
	word["those"] =1
end
=end

=begin
output
{"this" => 4, "that" => 3, "these" => 2, "those" => 1}
=end