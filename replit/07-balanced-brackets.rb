def balanced_brackets?(string)
  # your code here
  string = string.split ''
  stack = []
	string.each do |x|
		case x
			when '{'
				stack.push('}')
			when '('
				stack.push(')')
			when '['
				stack.push(']')
			else
				if x == '}' || x == ')' || x == ']'
					if x == stack[stack.length - 1]
						stack.pop
					else
						return false
					end
				end
		end
	end
	return stack.length == 0 ? true : false
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true