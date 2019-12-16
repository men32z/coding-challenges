def transpose(string)
  # your code here
  (string.length - 1).times do |x|
  	if string[x + 1] == 'n' && string[x] == 'g'
  		y = x
  		while string[y] == 'g' && y >= 0
	 			y -= 1
  		end
  		if y == 0 &&  string[y] == 'g'
  			string[y] = 'n'
  			string[x + 1] = 'g'
  		else
  			string[y + 1] = 'n'
  			string[x + 1] = 'g'
  		end
  	end
  end
  string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg