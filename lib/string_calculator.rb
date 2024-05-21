def add(string, delimt = ',')
  if string.empty?
    0
  elsif string.length == 1
    string.to_i
  else
    string.split(delimt).reduce(0) { |sum, n| sum + n.to_i }
  end
end