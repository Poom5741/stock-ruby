def stock_picker(arr)
    buy_day = 0
    buy_day_price = arr[0]
    sell_day = 0
    sell_day_price = arr[0]
    max_profit = 0
    position = []

    arr.each_with_index do |buy_price, buy_index|
        if buy_price < buy_day_price
            buy_day_price = buy_price
            buy_day = buy_index
        end

        arr[buy_index..-1].each_with_index do |sell_price, sell_index|
            if sell_price - buy_price > max_profit
                max_profit = sell_price - buy_price
                sell_day_price = sell_price
                sell_day = sell_index + buy_index
                position = [buy_day, sell_day]
            end
        end
    end

    position
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
