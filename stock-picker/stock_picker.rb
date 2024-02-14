def stock_picker(stock_prices)
  min_so_far = stock_prices.first

  stock_prices.reduce(0) do |max_profit, day_price|
    if min_so_far > day_price
      min_so_far = day_price
    else
      max_profit = [max_profit, day_price - min_so_far].max
    end
    max_profit
  end
end
