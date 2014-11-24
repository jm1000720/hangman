def checkLetter(word, letter) 
letter = word.split('')
locs = []
letter.each_with_index do |testLetter, i|
	if letter == testLetter
		locs.push(i)
		end
	end
locs
end
def displayResult(word, guesses)
 letters = word.split('')
 result = []
 letters.each do |let|
  if guesses.include? (let)
   result.push(let)
  else
   result.push('_')
 end
result.join(' ')
end
end
def drawMan(draw)
 if draw == 0
puts "__________
     |     |
     |
     |
     |
     |__________"
 elsif draw == 1
puts "__________
     |     |
     |     @
     |
     |
     |__________"
 elsif draw == 2
puts "__________
     |     |
     |     @
     |    /|\\
     |
     |__________"
 elsif draw == 3
puts "__________
     |     |
     |     @
     |    /|\\
     |    / \\
     |__________"
 end
end
