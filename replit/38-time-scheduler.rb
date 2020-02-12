def time_scheduler(array)
  # write your code here
  els = []
  while array.length > 1
  	els.push [array.shift, array.shift]
  end
  els = els.sort_by {|a| a[1]}
  final = [els[0]]
  current = els[0]
  els.each_with_index do |x, i|
		if x[0] >= current[1]
			final.push x
			current = x
		end
  end
  final
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
