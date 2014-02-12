puts "......"
puts "......"
puts "......"
puts "You wake up in the night to the sound of storm"
puts "You're not sure where you are, but your gut tells you to leave the hut"
puts "You're in a dark, ominous forest"
puts "You have no idea how you got there"
puts "You can go left, straight, or right"

user_input = gets.chomp

if user_input.include? "left"
	puts "you went left"
elsif user_input.include? "center"
	puts "you went straight ahead"
elsif user_input.include? "right"
	pouts "you went right"
else
	puts "try again"
end

		



# class Inventory
# 	attr_accessor :equipments
# 	