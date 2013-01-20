class Task
	def method_to_change
		puts "Today is #{Time.now.wday}"
	end	
end


def modifyClass(classArg)
	Task
end
