class Task	
	def method_to_change
		puts "Today is #{Time.now.wday}"
	end			
end

def modifyClass(classArg)
	classArg.class_exec { def method_to_change; puts "Today is #{Time.now.year} year"; end } if classArg.method_defined?(:method_to_change)	
end

modifyClass(Task)
puts Task.new.method_to_change