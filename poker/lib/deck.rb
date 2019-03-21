require 'card'

class Deck
  attr_reader :cards
  SUITS = %w(spades clubs hearts diamonds)
  CARD_VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)


  def initialize  
    @cards = []
    make_cards
  end


  def make_cards
    SUITS.each do |suit|
      CARD_VALUES.each do |val|
        @cards << Card.new(val, suit)
      end
    end
  end


end