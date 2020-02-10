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

def running_time(array)
  # write your code here
  sort_itself(array)
end

puts running_time([2, 1, 3, 1, 2])
# => 4
