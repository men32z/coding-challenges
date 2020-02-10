def advanced_quicksort(array, start = 0, enda = array.length - 1)
  # write your code here

  last_small = nil
  first_big = nil
  i=start
  while i < enda + 1
  	if array[i] > array[enda]
  		first_big = i if first_big.nil?
  	else
  		if !first_big.nil?
  			temp = array[i]
  			array[i] = array[first_big]
  			array[first_big] = temp
  			first_big += 1
  		end
  	end
  	i += 1
  end
  print array
  puts ""
  first_big = first_big || enda + 1
  advanced_quicksort(array, start, first_big - 2) if !first_big.nil? && start < first_big - 2
  advanced_quicksort(array, first_big, enda) if !first_big.nil? && first_big < enda
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9
