ar = Array.new(10,nil)

s1 = 0
s2 = -1

class Stack
	attr_accessor :ar
	def initialize
		@size = 10
		@ar = Array.new(@size,nil)
		@s1 = -1
		@s2 = @size
	end

	def push1 n
		if (@s1 < @s2-1) 
			@s1 += 1
			@ar[@s1] = n			
		else
			puts "Stack Overflow"
		end
	end

	def push2 n
		if (@s1 < @s2-1)
			@s2 -= 1
			@ar[@s2] = n
		else
			puts "Stack Overflow"
		end
	end

	def pop1 n
		@s1-=1
	end

	def pop2
		@s2+=1
	end
end

