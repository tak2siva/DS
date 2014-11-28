ar = [4,8,5,6,3,4,10]
ar = [4,5,2,25]
ar = [11, 13, 21, 3]

stack = [ar[0]]

ar[1..-1].each_with_index {|x,i|
	if stack[-1] && x > stack[-1]
		while (stack[-1] && x > stack[-1]) do
			puts "#{stack.pop} => #{x}"
		end
		stack.push x
	else
		stack.push x
	end
}

stack.each{|x| 
	puts "#{x} => -1"
}

#puts "#{ar[-1]} => -1"