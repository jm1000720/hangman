require "./method_drawing.rb"
system("clear")
guessed = []
notGuessed = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
f = File.new("EnglishDictionary.txt", "r")
wordArray = []
wordArray = f.readlines
word = wordArray.sample.chomp
f.close
draw = 0
drawMan(0)
puts "Goodluck!"
	while true
 		puts "Guess a letter(no upper case please :D)"
 		guess = gets.chomp
 		guessed.push(guess)
	if checkLetter(word, guess).empty?
 		draw = draw + 1
	end
	if displayResult(word, guessed) == word.split('').join(' ')
		notGuessed.delete(guess)
		system("clear")
		drawMan(draw)
		puts "Guessed #{guessed.join(' ')}"
		puts "Letters to Guess: #{notGuessed.join(' ')}"
		puts displayResult(word, guessed)
		puts "You Win!"
		exit
	end
	if draw == 3
	    notGuessed.delete(guess)
            system("clear")
            drawMan(draw)
            puts "Guessed #{guessed.join(' ')}"
            puts "Letters to Guess: #{notGuessed.join(' ')}"
            puts displayResult(word, guessed)
	    puts "You Lose"
	exit
	end
	 notGuessed.delete(guess)
         system("clear")
         drawMan(draw)
         puts "Guessed #{guessed.join(' ')}"
         puts "Letters to Guess: #{notGuessed.join(' ')}"
         puts displayResult(word, guessed)
end

