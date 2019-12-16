class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  @head = nil
  @tail = nil

  def add(number)
    node = Node.new(number)
    if !@tail
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end

    # your code here
  end

  def add_at(index, item)
  	item = Node.new(item)
  	if index == 0
  		item.next_node = @head
  		@head = item
	  else
	  	previous = self.get_node(index - 1)
	  	item.next_node = previous.next_node
	  	previous.next_node = item
	  end
  end

  def remove(index)
  	value = 0
  	if index == 0
  		value = @head.value
  		@head = @head.next_node
	  else
	  	previous = self.get_node(index - 1)
	  	value = previous.value
	  	if previous.next_node == @tail
	  		@tail = previous
	  		@tail.next_node = nil
	  	else
	  		previous.next_node = previous.next_node.next_node
	  	end

	  end
	  value
  end

	def get_node(index)
    i = index
    temphead = @head
    i.times {
      temphead = temphead.next_node if temphead.next_node != nil
    }
    return temphead
    # your code here
  end

  def get(index)
    i = index
    temphead = @head
    i.times {
      temphead = temphead.next_node if temphead.next_node != nil
    }
    return temphead.value
    # your code here
  end
end

class Stack < LinkedList
  def push(number)
    add_at(0, number)
  end

  def pop
    remove(0)
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3