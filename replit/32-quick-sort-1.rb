def partition(array)
  # write your code here
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
  (left << val).concat rigth
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
