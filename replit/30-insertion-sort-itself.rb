def insertion_sort(array, index)
  # write your code here
	toMove = array[index]
	x = index - 1
	while toMove < array[x] && x>=0
		array[x+1] = array[x]
		x -= 1
	end
	array[x+1] = toMove
end

def sort_itself(array)
  # write your code here
  a = 1
  while a < array.length
  	insertion_sort(array, a)
  	puts array.join(' ')
  	a += 1
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
