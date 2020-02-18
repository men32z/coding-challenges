def graph_cycle?(graph, i=0, visited = [], track = -1, uniques= [])
  # write your code here
  ret = false
  if !graph[i].nil?
	  graph[i].each do |x|
	  	if track != x
	  		if visited.include? x.to_s + '-' + i.to_s
	  			ret = true
		  	else
		  		visited.push x.to_s + '-' + i.to_s
	  			ret = true if graph_cycle?(graph, x, visited, i)
	  		end
	  	end
	  end
	end
	ret
end

puts graph_cycle?({
  0=>[2],
  1=>[4],
  2=>[0, 5, 3],
  3=>[5, 2],
  4=>[5, 1],
  5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
  0=>[2],
  1=>[2],
  2=>[0, 1, 3, 4, 5],
  3=>[2],
  4=>[2]
})
# => false

puts graph_cycle?({0=>[1, 2], 1=>[0, 3, 4], 2=>[0, 5, 6], 3=>[1], 4=>[1], 5=>[2], 6=>[2]})
