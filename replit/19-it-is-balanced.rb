class Node
	attr_reader :data
  attr_accessor :left, :right

  def initialize data
    @data = data
  end
end

# helper function
def array_to_tree(array, i = 0)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

# helper function
def height(node)
	if node
		return ([height(node.left), height(node.right)].max) + (node.data > 0 ? 1 : 0)
	else
		return 0
	end
end

def min_height(node)
	if node.left && node.right
		return ([min_height(node.left), min_height(node.right)].min) + (node.data > 0 ? 1 : 0)
	else
		return 1
	end
end

def balanced_tree?(array)
  root = array_to_tree(array)
  max = height(root)
  min = min_height(root)
  (max - min) <= 1
	# write your code here
end


puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true