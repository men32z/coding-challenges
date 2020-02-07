def hash_table(arr)
  # write your code here
  jach = Hash.new(0)
  arr.each do |x|
  	mod = x.abs % 11
  	jach[mod] = [] if !jach.has_key?(mod)
  	jach[mod].push(x)
  end
  output = []
  jach = jach.sort
  jach.each {|y| y[1].each {|x| output.push(x) } }
  output
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]

p hash_table([2367, -65325, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3])