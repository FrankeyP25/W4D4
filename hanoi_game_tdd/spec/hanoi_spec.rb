require "hanoi"
require "rspec"

RSpec.describe Hanoi do
    subject(:hanoi) {Hanoi.new(3)}

    describe "#initialize" do 
        it "instantiates the game in 3 rods" do
            expect(hanoi.board).to eq([],[],[])
        end
    end
end