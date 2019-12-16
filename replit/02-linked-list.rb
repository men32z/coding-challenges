# Start with your code from last challenge.

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
  	if index == 0
  		@head = @head.next_node
	  else
	  	previous = self.get_node(index - 1)
	  	if previous.next_node == @tail
	  		@tail = previous
	  		@tail.next_node = nil
	  	else
	  		previous.next_node = previous.next_node.next_node
	  	end

	  end
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


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5



list.add_at(0, 15)
list.add_at(4, 6)


list.remove(2)

puts list.get(3)