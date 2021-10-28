require "tdd"
require "rspec"
require "byebug"

describe "my_uniq" do 
  let(:array) {[1, 2, 1, 3, 3]}
  let(:unique_array) {my_uniq(array.dup)}

  it "remove dups in array" do
    expect(unique_array).to eq([1, 2, 3])
  end

  it "should not mutate the original array" do
    expect(unique_array).to_not be(array)
  end
end