#bindings
def local_with_binding(bind)
	bind.eval("local")
end

def my_meth
	local = "local from inside"
	local_with_binding(binding)
end

local = "top level local"

puts local_with_binding(binding) # => "top level local"
puts my_meth # => "local from inside"

# yield calls block from within. Proc is used when evaluatingblo blocks of code do |x| code end

def what_am_i(&block)
	block.class # => class = Proc
end

puts what_am_i {}

class Array
	def iterate! (code)
		self.each_with_index do |n, i|
			self[i] = code.call(n)
		end
	end
end

def callbacks(procs) 
	procs[:starting].call
	puts "working"
	procs[:finishing].call
end

callback(:starting => Proc.new {puts "starting"}
		 :finishing => Proc.new {puts "finishing"}		
	)

#lambda returns from block, while Proc from method
