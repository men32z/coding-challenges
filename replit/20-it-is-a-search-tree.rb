class Node
	attr_reader :data
	attr_accessor :left, :right

	def initialize data
		@data = data
	end
end

def array_to_tree(array, i = 0)
	return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end


def right_check(node, number)
	(!(node&.data) || (node&.data > number)) &&
	(!(node&.left&.data) || (node&.left&.data > number)) &&
	(!(node&.right&.data) || (node&.right&.data > number))
end

def left_check(node, number)
	(!(node&.data) ||(node&.data < number)) &&
	(!(node&.left&.data) || (node&.left&.data < number)) &&
	(!(node&.right&.data) || (node&.right&.data < number))
end

def check_integrity(node)
	right = !node.right || check_integrity(node.right)
	left = !node.left || check_integrity(node.left)
	right_check(node.right, node.data) && left_check(node.left, node.data) && left && right
end

def search_tree?(array)
	root = array_to_tree(array)
  # write your code here
	check_integrity root
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false