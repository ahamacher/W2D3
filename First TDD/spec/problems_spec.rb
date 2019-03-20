require "problems"
require "rspec"

RSpec.describe Array do 
  
  describe "#my_uniq" do 
    arr = [1, 2, 1, 3, 3] 

    it "remove duplicates" do
      expect(arr.my_uniq).to eq(arr.uniq)
    end
    
    it "includes elements from the original array" do
      expect(arr.my_uniq).to include(1,2,3)
    end
    
    it "shouldn't change the original array" do
      arr.my_uniq
      expect(arr).to eq(arr)
    end
  end

  describe "#two_sum" do
    arr = [-1, 0, 2, -2, 1]

    it "should return an array that contains pairs of indices that add to zero" do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "should not modify the original array" do 
      arr.two_sum
      expect(arr).to eq([-1, 0, 2, -2, 1])
    end

    it "returns the smaller elements first" do
      arr = [-1, 0, 1, -1]
      expect(arr.two_sum).to_not eq([[2,3],[0,2]])
      expect(arr.two_sum).to eq([[0,2],[2,3]])
    end

    it "if first elements equal, returns smallest second element first" do
      arr = [-1, 0, 1, 1]
      expect(arr.two_sum).to_not eq([[0,3],[0,2]])
      expect(arr.two_sum).to eq([[0,2],[0,3]])
    end
  end

  describe "#my_transpose" do
    rows = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
  ]

    cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

    it "returns columns from rows" do 
      expect(rows.my_transpose).to eq(cols)
    end

    it "return rows from columns" do
      expect(cols.my_transpose).to eq(rows)
    end

  end

  describe "#stock_picker" do
    stocks = [100, 101, 102, 82, 81, 95, 120, 70]

    it "returns days of greatest profit margin" do
      expect(stocks.stock_picker).to eq([4,6])
    end

    it "doesnt return a selldate that comes before a buy date" do
      expect(stocks.stock_picker).to_not eq([7,6])
    end

  end

end
