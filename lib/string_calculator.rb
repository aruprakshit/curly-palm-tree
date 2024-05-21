def add(string)
  if string.empty?
    0
  elsif string.length == 1
    string.to_i
  end
end