require 'rspec'
require 'tower'

RSpec.describe Tower do
  subject(:tower) { Tower.new }

  describe "#initialize" do
    
    it "takes in a value for tower size" do 
      expect{tower.new(4)}.to_not raise_error(ArgumentError)
    end

    it "if no size is passed in, size equal to 7" do
      expect{tower.new}.to_not raise_error(ArgumentError)
      expect{tower.new.size}.to eq(7)
    end

    it "sets @game_over to false" do
      expect(tower.game_over).to be_falsey
    end

    it "creates a peg array with 3 subarrays" do
      expect(tower.pegs.length).to eq(3) 
    end
    # it "sets the default value of the pieces"

    # it "should set the board"


  end






end