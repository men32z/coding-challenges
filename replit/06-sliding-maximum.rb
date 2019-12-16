def sliding_maximum(k, array)
  # your code here
  item = []
  (array.length - k + 1).times { |x| item << array[x, k].max }
  p item
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
