def hanoi_steps(number_of_discs)
  hanoi(number_of_discs, 1, 2, 3)
end

def hanoi(n, s, m, g)
	if n > 0
		hanoi(n-1, s, g, m);
  	puts s.to_s + '->' + g.to_s
  	hanoi(n-1, m, s, g);
  end
end