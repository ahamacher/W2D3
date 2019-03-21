require 'rspec'
require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  describe "#initialize" do

    it "should create an array of all possible cards" do 
      expect(deck.cards.length).to eq(52)
      expect(deck.cards.uniq).to eq(deck.cards)
      expect((deck.cards.select { |card| card.suit == "clubs"}).length).to eq(13)
      expect((deck.cards.select { |card| card.suit == "hearts"}).length).to eq(13)
      expect((deck.cards.select { |card| card.suit == "diamonds"}).length).to eq(13)
      expect((deck.cards.select { |card| card.suit == "spades"}).length).to eq(13)
    end
  end

  descibe "remove card" do
    




  end

end