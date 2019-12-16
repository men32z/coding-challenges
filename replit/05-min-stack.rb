class Stack
	def initialize
		@tail= -1
		@stack = []
		@minimus = nil
	end
  def push(number)
  	@tail = @tail + 1
  	@stack[@tail] = number
  	@minimus = number if @minimus.nil? || number < @minimus
  end

  def pop
    # your code here
    @stack.pop
    @tail = @tail <=1 ? 0 : @tail - 1
    @minimus = search_minimus
  end

  def min
  	@stack.sort[0]
    # your code here
  end

  def search_minimus
    @stack.min
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3