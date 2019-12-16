def leftmost_nodes_sum(array)
  # your code here
  i = 0
  s = 0
  while(i < array.length)
  	s =	array[i] + s
  	i = (2 * i) + 1
  end
  s
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11