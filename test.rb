class Example
	@dummy = 5

	def self.bb
		@@dummy1 = 15
	end
end

Example.bb

p Example.class_variables
p Example.new.class.class_variables

#hook: 
# self.included(base)
# self.inherited(class)
# self.method_added(method)

module Test
	module ClassMethods
		def y
			"y()"
		end
	end	
	module InstanceMethods
		
	end
	def x
		"x()"
	end	
	def self.included(base)
		base.extend(ClassMethods)
	end
end
class A
	include Test
end
A.new.x
A.y
