#secret code of numbers: 4 numbers from 1 to 6
class CodeMaker
	def CodeMaker.codeGen
		4.times.map{1+rand(6)}
	end
	def initialize
		@code = CodeMaker.codeGen
	end
	def sayCode
		@code
	end
	def checkGuess(numbers)	
		numbers.each_with_index.map do |number,nIndex|
			if @code[nIndex] == number
				"+"
			elsif @code.include?(number)
				"-"
			else
				0
			end				
		end		
	end
end

class GameLogic
	def initialize(output)
		@output = output
	end
	def start
		@output.puts "Hello %username. Welcome to our cool game."
		@output.puts "Type in your first guess: "
	end
	def getGuess
		s = @output.gets
		return s
	end
end


# codemaker = CodeMaker.new

# puts "Hello %username. Welcome to our cool game."
# print "Type in your first guess: "
# while (s=gets)!= nil
# 	if s[0]=='q'
# 		break
# 	end
# 	guess = s[0..getGuess3].split('').map(&:to_i)
# 	if guess.length == 4
# 		puts codemaker.checkGuess(guess).inspect
# 	else
# 		puts "Type 4 numbers"
# 	end
# end
