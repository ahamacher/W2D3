class Array

  def my_uniq
      arr = []
      self.each do |num|
        arr << num unless arr.include?(num)
      end
      arr
  end

  def two_sum
    arr = []
    self.each_with_index do |ele1, i1|
      self.each_with_index do |ele2, i2|
        arr << [i1,i2] if i1 < i2 && ele1 + ele2 == 0
      end
    end
    arr
  end

  def my_transpose
    size = self.length
    result = Array.new(size) { Array.new(size) }
    self.each_with_index do |ele1, i|
      self.each_with_index do |ele2, j|
        result[j][i] = self[i][j] 
      end
    end
    result
  end

  def stock_picker
    stock_indices = []
    best_profit = 0
    (0...self.length).each do |buy_date|
      (0...self.length).each do |sell_date|
        if self[sell_date] - self[buy_date] > best_profit && buy_date < sell_date
          best_profit = self[sell_date] - self[buy_date]
          stock_indices = [buy_date, sell_date]
        end
      end
    end
    stock_indices
  end

end