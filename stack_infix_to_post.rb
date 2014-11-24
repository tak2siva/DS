require 'debugger'

def prec num
	case num
	when '+','-'
		return 1
	when '*','/'
		return 2
	when '^'
		return 3
	else
		return 0
	end	
end

stack = []
res = ""

infix = "a+b*(c^d-e)^(f+g*h)-i".gsub ' ',''

infix.each_char {|c|
	case c
	when '+','-','*','/','^'
		if stack[-1]=='(' || ( prec(c) >= prec(stack[-1]) )
			stack.push c
		else
			while (!stack.empty? && stack[-1]!='(') do
				res += stack.pop
			end
			stack.push c
		end		
	when '('
		stack.push c
	when ')'
		while (!stack.empty? && stack[-1]!='(') do
			res += stack.pop
		end
		stack.pop
	else
		res += c
	end
}

while (!stack.empty? && stack[-1]!='(') do
	res += stack.pop
end

puts res