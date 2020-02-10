def simple_quicksort(array)
  # write your code here
  return if array.length < 1
  val = array[0]
  left = []
  rigth = []

  (array.length - 1).times do |i|
  	if array[i + 1] < val
  		left.push(array[i + 1])
  	else
  		rigth.push(array[i + 1])
  	end
  end
  fin = ((simple_quicksort(left)||[]) << val).concat (simple_quicksort(rigth) || [])
  puts fin.join(' ') if fin.length > 1
  fin
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10
