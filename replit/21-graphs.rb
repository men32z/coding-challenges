def graph(hash_graph, stack = [], start = 0, key = 4)
  if start != key
  	stack.push(start)
  	graph(hash_graph, stack,  hash_graph[start][0])
  else
  	stack.push(start)
  	return stack
  end
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
