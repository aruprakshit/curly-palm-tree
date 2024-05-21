def add(string)
  if string.empty?
    0
  elsif string.end_with?("\n")
    raise 'Invalid string'
  elsif string.length == 1
    string.to_i
  else
    string_to_array(string).reduce(0) { |sum, n| sum + n.to_i }
  end
end

private

def string_to_array(string)
  delimt = /[,\n]/
  string.split(delimt)
end