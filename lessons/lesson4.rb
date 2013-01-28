class Array
	def iterate!(code)
		self.each_with_index do |n, i|
			self[i] = code.call(n)
		end
	end
end

array = [1,2,3,4]

array.iterate!( lambda { |n| n**2} )
puts array.inspect

#when calling proc all arguments by default are nill, if you don't send them anything, argument will be nill