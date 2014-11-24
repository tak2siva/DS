postfix = "231*+9-"
stack = []
res = ""

postfix.each_char{ |c|
	case c
	when '+','-','*','/','^'
		b = stack.pop
		a = stack.pop
		d = eval("#{a} #{c} #{b}")
		stack.push d
	else
		stack.push c
	end
}

puts stack[0]