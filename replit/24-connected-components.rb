def bfs(graph, visited = [], queue = [0])
	if queue.length > 0
		start = queue.shift
	  visited.push(start) if !visited.include?(start)
  	graph[start].each { |x| queue.push(x) if !visited.include?(x) }
  	bfs(graph, visited, queue)
	end
	visited
end

def connected_graph?(graph)
  !((graph.map {|x, y| x} - bfs(graph)).length > 0)
end

puts connected_graph?({
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3],
  6 => [7],
  7 => [6],
})
# => false
puts connected_graph?({
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
})
# => true
