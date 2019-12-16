def exact_sum?(k, coins)
  #write your code here
  if k > 0 && coins.length > 0
  	ca = coins[0]
  	coins.shift
  	cains = coins[0 .. coins.length]

  	if k - ca === 0
  		return true
  	else
  		value = false
  		value = true if exact_sum?(k, coins)
  		value = true if exact_sum?(k - ca, cains)
  		return value
  	end
  end
  false
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

#puts exact_sum?(11, [1, 5, 9, 13])
# => false
