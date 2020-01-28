class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def insert(node, roc= @root)
  	if @root.nil?
  		@root = node
  	elsif node.data > roc.data
  		if roc.right.nil?
  			roc.right = node
  		else
  			insert(node, roc.right)
  		end
  	else
  		if roc.left.nil?
  			roc.left = node
  		else
  			insert(node, roc.left)
  		end
  	end

    #your code here
  end

  def pre_order(node = @root)
    if node == nil
    	return ''
		end

  	result = "#{node.data} "
  	result += pre_order(node.left)
  	result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"