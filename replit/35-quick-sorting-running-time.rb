def insertion_sort(array, index)
  # write your code here
	toMove = array[index]
	x = index - 1
	counter = 0
	while toMove < array[x] && x>=0
		array[x+1] = array[x]
		x -= 1
		counter += 1
	end
	array[x+1] = toMove
	counter
end

def sort_itself(array)
  # write your code here
  a = 1
  counter = 0
  while a < array.length
  	counter += insertion_sort(array, a)
  	a += 1
  end
  counter
end

def advanced_quicksort(array, start = 0, enda = array.length - 1)
  # write your code here
	swaps = 0;
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
  		swaps += 1
  	end
  	i += 1
  end
  first_big = first_big || enda + 1

  swaps += advanced_quicksort(array, start, first_big - 2) if !first_big.nil? && start < first_big - 2
  swaps += advanced_quicksort(array, first_big, enda) if !first_big.nil? && first_big < enda
  swaps
end

def quicksort_running_time(array)
  # write your code here
  dupl = array.dup
  sort_itself(dupl) - advanced_quicksort(array)
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
