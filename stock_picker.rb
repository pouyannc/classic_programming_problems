def stock_picker (stock_prices)
    most_profit = stock_prices[1] - stock_prices[0]
    best_days = [0,1]
    (0..stock_prices.length-2).each do |i|
        (i+1..stock_prices.length-1).each do |j| 
            profit = stock_prices[j] - stock_prices[i]
            if profit > most_profit
                most_profit = profit 
                best_days = [i,j]
            end
        end
    end
    best_days
end

p stock_picker ([17,3,6,9,15,8,6,1])