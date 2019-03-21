require 'card.rb'
require 'rspec'

RSpec.describe Card do
  subject(:card) { Card.new("7", "clubs")}

  describe "#initialize" do

    it "receives a card name" do 
      expect{Card.new("7", "clubs")}.to_not raise_error(ArgumentError)
    end

    it "assigns a card value to @value" do
      expect(card.value).to eq("7")
    end

    it "stores suit to @suit" do
      expect(card.suit).to eq("clubs")
    end

  end

end