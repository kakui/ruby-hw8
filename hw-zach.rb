#block of text
intro_text = "this is input and output should look something like this"

#output# > {This: 1, is: 2, input: 1, and: 1, output: 1, should: 1, look: 1, something: 1, like: 1}

#setup an empty has ot contain our dictionary

def convert_block(some_string)
	dictionary = {}
	#split our input string into an array based off space as a delimiter
	some_string.split(" ").each do |word|
		#if word is already in dictionary, add 1 to word count
		if dictionary[word]
		#otherwise, add to dictionary with word count of 1
			dictionary[word] += 1
		else
			dictionary[word] = 1
		end
	end
	dictionary
end

puts convert_block(intro_text)


#given hash of words as keys with values as amount of times those words have been used, return most used word

def most_used(some_hash)
	#use reference value, using first value
	reference = some_hash.first
	#loop over each time
	some_hash.each do |word|
	#if greater than reference, becomes reference value
		if word[1] > reference[1]
			reference = word
		end
	end
	#return that value
	reference
end

my_hash = convert_block(intro_text)

puts most_used(my_hash)

