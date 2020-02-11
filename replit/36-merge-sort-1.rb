def merge_sort(array1, array2)
  # write your code here
  sorted = []
  while array1.length > 0 && array2.length > 0
  	if array1[0] < array2[0]
  		sorted.push array1.shift
  	else
  		sorted.push array2.shift
  	end
  end
  sorted + array1 + array2
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
