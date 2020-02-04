def depth_first_search(graph, visited = [], queue = [0])
	if queue.length > 0
		start = queue.shift
	  visited.push(start) if !visited.include?(start)
  	graph[start].each do |x|
  		queue.push(x) if !visited.include?(x)
  		depth_first_search(graph, visited, queue)
  	end
	end
	visited
end

p depth_first_search({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]