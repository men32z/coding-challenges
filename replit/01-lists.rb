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
list.add(3)
list.add(5)
puts list.get(1)
