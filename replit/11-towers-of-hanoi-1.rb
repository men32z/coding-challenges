def move(starting, goal, n = 2)
  ret = starting.to_s + '->' + (6 - (starting + goal)).to_s
  ret += ' ' + starting.to_s + '->' + goal.to_s
  ret += ' ' + (6 - (starting + goal)).to_s + '->' + goal.to_s
  ret
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
