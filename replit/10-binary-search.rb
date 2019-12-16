def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
	middle = ((max_interval + min_interval) / 2).floor

	resul = middle * middle
	if resul > number
		max_interval = middle
	elsif resul < number
		min_interval = middle
	else
		return middle
	end
  sqrt_recursive(number, min_interval, max_interval) if middle > 0
end

puts sqrt(25)
puts sqrt(7056)
