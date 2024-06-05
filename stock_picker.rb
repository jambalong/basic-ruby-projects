def stock_picker(stock_prices)
  max_profit = 0
  best_days = []

  stock_prices.each_with_index do |buy_price, buy_day|
    (buy_day + 1...stock_prices.length).each do |sell_day|
      sell_price = stock_prices[sell_day]
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end


p stock_picker([17,3,6,9,15,8,6,1,10]) #  => [1,4]  
# for a max_profit of $15 - $3 == $12\

# Input is array
# Output is array

# I can use Array datastructure and iterators

# Initialize variables for profit and best day to buy and sell
# Iterate through stock_prices prices with days
# Iterate through stock_prices at current day + 1 upto last day
# Assign buy_price (already as block variable) and sell_price (using array[index])
# Calculate the profit: sell_price - buy_price
   # If profit is greater than current profit
      # Assign current profit = profit
      # Assign best day = [buy_day, sell_day]

# Return best day as array
