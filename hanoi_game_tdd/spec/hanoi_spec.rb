require "hanoi"
require "rspec"

RSpec.describe Hanoi do
    subject(:hanoi) {Hanoi.new}

    describe "#initialize" do 
        it "instantiates the game in 3 rods" do
            expect(hanoi.board).to eq([[3, 2 ,1],[],[]])
        end
    end
end