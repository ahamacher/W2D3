require 'piece.rb'
require 'rspec'

RSpec.describe Piece do
  subject(:piece) { Piece.new(3) }

    describe "#initialize" do

      it "takes in a size" do
        expect{Piece.new(3)}.to_not raise_error(ArgumentError) 
      end

      it "assigns size to @size" do 
        expect(piece.size).to eq(3)
      end
    end

end