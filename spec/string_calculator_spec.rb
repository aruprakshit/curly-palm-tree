require 'string_calculator'

describe "#add" do
  it "returns 0 when the input is an empty string" do
    expect(add("")).to eq(0)
  end

  it "returns the number D when the input is 'D'" do
    expect(add("2")).to eq(2)
  end

  it "returns 6 when the input is '2,4'" do
    expect(add("2,4")).to eq(6)
  end

  it "returns 10 when the input is '2,4,1,3'" do
    expect(add("2,4,1,3")).to eq(10)
  end

  it 'returns 6 when the input is "1\n2,3"' do
    expect(add("1\n2,3")).to eq(6)
  end

  it "throws an error when input string is invalid e.g. '1,\\n'" do
    expect { add("1,\n") }.to raise_error(RuntimeError, "Invalid string")
  end

  it 'returns 3 when the input is "//;\n1;2"' do
    expect(add("//;\n1;2")).to eq(3)
  end

  it "throws an error 'negative numbers not allowed <negative_number>' when input string is '1,-2,3'" do
    expect { add('1,-2,3') }.to raise_error(RuntimeError, "negative numbers not allowed <-2>")
  end

  it "throws an error 'negative numbers not allowed <negative_number>' when input string is '1,-2,3'" do
    expect { add('1;-2;-3;4') }.to raise_error(RuntimeError, "negative numbers not allowed <-2,-3>")
  end
end