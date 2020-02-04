def bfs(graph, visited = [], queue = [0])
	if queue.length > 0
		start = queue.shift
	  visited.push(start) if !visited.include?(start)
  	graph[start].each { |x| queue.push(x) if !visited.include?(x) }
  	bfs(graph, visited, queue)
	end
	visited
end

#p bfs({
#  0 => [2],
#  1 => [4],
#  2 => [5, 0, 3],
#  3 => [2],
#  4 => [1, 5],
#  5 => [4, 2]
#})
# => [0, 2, 5, 3, 4, 1]

bfs({
	0=>[1, 2],
	1=>[0, 3, 4],
	2=>[0, 5, 6],
	3=>[1],
	4=>[1, 5],
	5=>[2, 4],
	6=>[2]})