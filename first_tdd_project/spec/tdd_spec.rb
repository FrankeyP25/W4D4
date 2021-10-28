require "tdd"
require "rspec"

describe "array#remove_dups" do 
  it "remove dups in array" do
    let(:array) {[1, 2, 1, 3, 3]}
    expect(:array.remove_dups).to eq([1, 2, 3])
  end
end