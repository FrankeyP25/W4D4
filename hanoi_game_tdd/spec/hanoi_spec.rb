require "hanoi"
require "rspec"

RSpec.describe Hanoi do
    subject(:hanoi) {Hanoi.new}

    describe "#initialize" do 
        it "instantiates the game in 3 rods" do
            expect(hanoi.board).to eq([[3, 2 ,1],[],[]])
        end
    end

    describe "#move" do 
       input = ("1 1\n", :chomp=>"1 1")
       allow(Hanoi).to receive(:gets).and_return(input)

    #    expect { Hanoi.move}.to output()

        it "get input from user such as start position and end position" do 
            input = ("1 1\n", :chomp=>"1 1")
            allow(Hanoi).to receive(:gets).and_return(input)
            expect{Hanoi.move}.to eq([1,1])
        end
    end 
end