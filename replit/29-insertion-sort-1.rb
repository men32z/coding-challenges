def insertion_sort(array)
  # write your code here
	toMove = array.last
	x = array.length - 2
	while toMove < array[x] && x>=0
		array[x+1] = array[x]
		x -= 1
		puts array.join(' ')
	end
	array[x+1] = toMove
	puts array.join(' ')
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
