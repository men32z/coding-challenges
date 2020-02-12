def duplicates(arr1, arr2)
	i=0
  while arr1.length > 0
  	if arr1[0] === arr2[i]
  		arr1.shift
  		arr2[i] = arr2[0]
  		arr2.shift
  		i=0
  	else
  		i += 1
  	end

  	if i - 1 > arr2.length
  		arr1.shift
  		i = 0
  	end
  end
  arr2.sort
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]
