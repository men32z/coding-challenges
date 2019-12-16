def binary_tree_height(array_tree, position = 0)
	if position < array_tree.length
		left = binary_tree_height(array_tree, (position * 2) + 1)
		right = binary_tree_height(array_tree, (position * 2) + 2)
		return left > right ? left + 1 : right + 1
	else
		return 0
	end
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3