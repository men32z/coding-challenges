def merge_sort(array1, array2)
  sorted = []
  while array1.length > 0 && array2.length > 0
  	sp1 = array1[0].split(' ')[0]
  	sp2 = array2[0].split(' ')[0]
  	sorted.push sp2 < sp1 ? array2.shift : array1.shift
  end
  sorted + array1 + array2
end

def full_merge_sort_fn(array)
	if array.length > 1
		fh = (array.length/2).floor
		array1 = array.slice(0, fh)
		array2 = array.slice(fh, array.length - fh)
		sorted1 = full_merge_sort_fn(array1)
		sorted2 = full_merge_sort_fn(array2)
		return merge_sort(sorted1, sorted2)
	else
		return array
	end
end
def full_merge_sort(array)
	full_merge_sort_fn(array).map {|x| x.split(' ')[1]}
end

full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]