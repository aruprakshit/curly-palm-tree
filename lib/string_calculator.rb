def add(string)
  if string.empty?
    0
  elsif string.end_with?("\n")
    raise 'Invalid string'
  elsif string.length == 1
    string.to_i
  else
    string_to_array(string).reduce(0) do |sum, n|
      num = n.to_i
      if num < 0
        raise "negative numbers not allowed <#{num}>"
      else
        sum + num
      end
    end
  end
end

private

def string_to_array(string)
  delimt = /[,;\n]/
  string.split(delimt).reject { |chr| chr == "" || chr == "//"}
end