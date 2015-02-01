puts 'Hello, world.'

puts 'Hello, Ruby.'.index('Ruby')

i = 0
while i < 10
	puts 'Vince'
	i = i + 1
end

min = 1
range = 10
target = rand(range) + min

puts "Choose a number between #{min} and #{min + range - 1}:"

won = false

while not won
	guess = Integer(gets)
	puts "You guessed #{guess}"
	if guess == target 
		won = true
		puts 'You win!'
	else
		puts 'Nope, try again'
	end	
end