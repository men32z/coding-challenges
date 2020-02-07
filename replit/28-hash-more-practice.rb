# Full Credit
# Solve the problem with only one iteration through the numbers.
def find_pairs(array, k)
  # write your code here
  jach = Hash.new(0)
  pairs = []
  array.each do |x|
  	jach[k-x] = x if k-x != 0
  	pairs.push([jach[x], x]) if jach.has_key?(k-x) && jach[x] + x == k
  end
  pairs
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

p find_pairs([17, -20, 21, -3, 33, 10, 6, -11, 19, 40, 11, 17, 56, 33, 72, 5, 1, 36, 51], 40)
# => [[3,11]]