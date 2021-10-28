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

describe "two_sum" do 
    let(:arr) { [-1, 0, 2, -2, 1] }
    it "find all position pairs in dictionary order which the sum will be == to 0" do
        expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
    end

end

describe "my_transpose" do 
  let(:arr) {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}

  it "should transpose the rows to columns" do
      expect(my_transpose(arr)).to eq( [[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end

describe "stock_picker" do
  let(:arr) {[10, 2, 5, 0, 3, 8, 9]}

  it "should return a pair of days that is most profitable from buying and selling the stock" do
    expect(stock_picker(arr)).to eq([3 , 6])
  end

end