def stock_picker(prices) 
  buy = -1
  sell = -1
  profit = 0

  prices.each_with_index do |price, i|
    index = i + 1
    while index < prices.length do
      diff = prices[index] - price
      if diff > profit
        buy = i
        sell = index
        profit = diff
      end
      index += 1
    end
  end
  p [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1,3,6,9,15,8,6,1,10])
stock_picker([17,3,6,9,15,8,6,1,20])