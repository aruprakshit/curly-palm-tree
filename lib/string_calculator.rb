def add(string)
  if string.empty?
    0
  elsif string.end_with?("\n")
    raise 'Invalid string'
  elsif string.length == 1
    string.to_i
  else
    neg_numbers = string_to_array(string).select { |num| num.to_i < 0 }
    if neg_numbers.empty?
      string_to_array(string).reduce(0) { |sum, n| sum + n.to_i }
    else
      raise_with_negative_numbers(neg_numbers)
    end
  end
end

private

def string_to_array(string)
  delimt = /[,;\n]/
  string.split(delimt).reject { |chr| chr == "" || chr == "//"}
end

def raise_with_negative_numbers(numbers)
  raise "negative numbers not allowed <#{numbers.join(',')}>"
end