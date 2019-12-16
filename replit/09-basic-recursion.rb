def sum(number)
  # Your code here
  if number > 0
  	number + sum(number-1).to_i
  end
end

puts sum(4)
puts sum(10)