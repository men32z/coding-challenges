def tree_height(tree_as_list)
  # your code here
  tree = tree_as_list.dup
  stack = [0]
  max_count = 0
  while(stack.length > 0)
  	num = stack[stack.length - 1]
  	left = (num * 2) + 1
  	right = (num * 2) + 2
  	if left < tree_as_list.length && tree_as_list[left] > 0
  		stack.push(left)
  		next
  	elsif right < tree_as_list.length && tree_as_list[right] > 0
  		stack.push(right)
  		next
  	else
  		tree_as_list[num] = 0
			max_count = stack.length if stack.length > max_count
  	end
  	stack = tree_as_list[0] > 0 ? [0] : []
  end
  max_count
end
puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])