def add(string, delimt = ',')
  if string.empty?
    0
  elsif string.length == 1
    string.to_i
  else
    a, b = string.split(delimt)
    a.to_i + b.to_i
  end
end